#!/bin/sh
# Simulator round-trip via gpsim (SDCC + gputils toolchain), the
# complement to run_mdb_sim.sh (XC8 + MPLAB X's mdb). See TODO.md's
# "Second simulator investigated: gpsim" entry for the full
# background, including why this builds gpsim_demo.c (a minimal
# proof-of-mechanism) rather than the real lib/fixedmath.c/float24.c -
# both currently hit unresolved SDCC pic14 backend issues on
# PIC16F876A (documented there in detail). This script keeps the
# gpsim/.cod round-trip mechanism itself proven and reusable for when
# that gets fixed.
#
# Unlike XC8/mdb, gpsim needs a gputils `.cod` symbol file - SDCC's
# pic14 backend produces that automatically via `gplink` (part of the
# `gputils` package: gpasm/gplink/gputil), NOT via XC8 (which produces
# .cof, a format gpsim's `load` command doesn't understand).
#
# Usage: ./run_gpsim_sim.sh

set -e
cd "$(dirname "$0")"

SDCC_BIN=/opt/sdcc-4.3.0rc1/bin
SDCC_SHARE=/opt/sdcc-4.3.0rc1/share/sdcc
CHIP=16f876a
DEVICE=p16f876a

if [ ! -x "$SDCC_BIN/sdcc" ]; then
  echo "sdcc not found at $SDCC_BIN - adjust SDCC_BIN in this script" >&2
  exit 1
fi
if ! command -v gplink >/dev/null 2>&1; then
  echo "gplink not found - install the 'gputils' package (gpasm/gplink/gputil)" >&2
  exit 1
fi
if ! command -v gpsim >/dev/null 2>&1; then
  echo "gpsim not found - install the 'gpsim' package" >&2
  exit 1
fi

echo "== compiling gpsim_demo.c for $CHIP (SDCC pic14) =="
PATH="$SDCC_BIN:$PATH" sdcc -mpic14 -p$CHIP --use-non-free -c gpsim_demo.c

echo "== linking with gplink (produces the .cod gpsim needs) =="
gplink \
  -I"$SDCC_SHARE/lib/pic14" -I"$SDCC_SHARE/non-free/lib/pic14" \
  -m -w -r -o gpsim_demo.hex \
  gpsim_demo.o libsdcc.lib pic16f876a.lib

if [ ! -f gpsim_demo.cod ]; then
  echo "FAIL: gplink did not produce gpsim_demo.cod" >&2
  exit 1
fi

echo "== running in gpsim =="
# gpsim's `load`, given an .stc command file in another directory,
# changes its own working directory to match that file's location (per
# its own help text) - so the command file must live alongside
# gpsim_demo.cod, not under /tmp (mktemp), or `load gpsim_demo.cod`
# looks in the wrong place.
CMDS=gpsim_demo_cmds.stc
cat >"$CMDS" <<EOF
load gpsim_demo.cod
step 500
x _result_a
x _result_b
x _done
quit
EOF
OUT=$(timeout 30 gpsim -i -c "$CMDS")
echo "$OUT"
rm -f "$CMDS"

# `x _symbol` output looks like: _result_a[0x2c] = 0x6b (one byte only -
# see gpsim_demo.c's own comment on why multi-byte values need `dump`
# instead; this quick check only needs the low byte + `done`).
RESULT_A_LOW=$(echo "$OUT" | grep '^_result_a' | sed -E 's/.*= 0x//')
RESULT_B_LOW=$(echo "$OUT" | grep '^_result_b' | sed -E 's/.*= 0x//')
DONE=$(echo "$OUT" | grep '^_done' | sed -E 's/.*= 0x//')

echo
echo "== summary =="
echo "done=0x$DONE  result_a low byte=0x$RESULT_A_LOW (want 0x6b, from 80235=0x1396b)  result_b low byte=0x$RESULT_B_LOW (want 0x22, from 838102050=0x31f46c22)"

if [ "$DONE" != "1" ]; then
  echo "FAIL: firmware never reached its halt point in gpsim" >&2
  exit 1
fi
if [ "$RESULT_A_LOW" != "6b" ] || [ "$RESULT_B_LOW" != "22" ]; then
  echo "FAIL: result mismatch" >&2
  exit 1
fi
echo "PASS: gpsim/SDCC/gputils .cod round-trip mechanism verified (byte-exact)."
echo "(Full 4-byte values were cross-checked once by hand via 'dump' - see TODO.md.)"

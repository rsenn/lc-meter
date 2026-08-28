#!/bin/sh
# Simulator round-trip for tests/test_float24.c's MCU build: compiles it
# for real PIC16F876A hardware (XC8), then drives MPLAB X's `mdb` CLI
# debugger against its own built-in software simulator (Hwtool SIM - no
# physical programmer/board needed) to actually RUN the compiled
# firmware and read back result_Cx_x100/result_Lin_x100 by symbol name,
# via a breakpoint on the final infinite loop. See TODO.md and
# README.md for the full background/derivation.
#
# This is the "does it actually run correctly on the real target, not
# just compile" check - a complement to run_host_tests.sh's host-side
# precision sweep, on the one implementation (float24) that's also
# meant to be the byte-accurate mirror of the original lcmeter.asm
# firmware.
#
# Usage: ./run_mdb_sim.sh [path-to-mdb.sh]
# If no path given, searches the known MPLAB X install locations.

set -e
cd "$(dirname "$0")"

XC8=/opt/microchip/xc8/v1.43/bin/xc8
CHIP=16f876a
DEVICE=PIC16F876A

MDB="$1"
if [ -z "$MDB" ]; then
  for v in v6.35 v5.50 v5.35; do
    c="/opt/microchip/mplabx/$v/mplab_platform/bin/mdb.sh"
    [ -x "$c" ] && MDB="$c" && break
  done
fi
if [ -z "$MDB" ] || [ ! -x "$MDB" ]; then
  echo "mdb.sh not found - pass its path as \$1" >&2
  exit 1
fi

echo "== building test_float24.c for $DEVICE (XC8) =="
"$XC8" --chip=$CHIP -G --opt="default,+asm,+debug" -Otest_float24_mcu.hex \
  -I../lib ../lib/float24.c test_float24.c

echo "== staging dist/ (mdb's COFF loader requires it) =="
mkdir -p dist
cp test_float24_mcu.cof dist/

# No breakpoint needed: `Wait N` runs the simulator for N (simulated)
# instructions/cycles and halts on its own once that elapses, which is
# plenty of time to reach the `for(;;)` halt loop and set `done`. A
# source-line breakpoint on the empty loop body turned out fragile
# (XC8's debug info for a bodyless `for(;;){}` doesn't always attribute
# an address to that exact line - confirmed unreliable across otherwise
# identical rebuilds) - Wait avoids depending on it entirely.
CMDS=$(mktemp)
cat >"$CMDS" <<EOF
Device $DEVICE
Hwtool SIM
Program "dist/test_float24_mcu.cof"
Reset MCLR
Run
Wait 5000
Print result_Cx_x100
Print result_Lin_x100
Print done
Quit
EOF

echo "== running mdb (simulator) =="
OUT=$(timeout 90 "$MDB" "$CMDS")
echo "$OUT"
rm -f "$CMDS"

# mdb's Print output is 3 lines: the echoed command, "name=", then the
# value on its own line - so the value is 2 lines after the match.
CX=$(echo "$OUT" | grep -A2 '^Print result_Cx_x100' | tail -1 | tr -d '\r')
LIN=$(echo "$OUT" | grep -A2 '^Print result_Lin_x100' | tail -1 | tr -d '\r')
DONE=$(echo "$OUT" | grep -A2 '^Print done' | tail -1 | tr -d '\r')

echo
echo "== summary =="
echo "result_Cx_x100=$CX  result_Lin_x100=$LIN  done=$DONE"
echo "(expected, from the host build's own run: Cx_x100=3475 Lin_x100=946482 done=1)"

if [ "$DONE" != "1" ]; then
  echo "FAIL: firmware never reached its halt point in the simulator" >&2
  exit 1
fi
if [ "$CX" != "3475" ]; then
  echo "FAIL: result_Cx_x100 mismatch (got $CX, expected 3475)" >&2
  exit 1
fi
if [ "$LIN" != "946482" ]; then
  echo "FAIL: result_Lin_x100 mismatch (got $LIN, expected 946482)" >&2
  exit 1
fi
echo "PASS: PIC16F876A simulator round-trip matches the host build exactly."

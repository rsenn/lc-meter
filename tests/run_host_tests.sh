#!/bin/sh
# Round-trip precision harness for the three Thomson-formula
# implementations (see TODO.md for the full derivation/plan):
#   test_double.c   - double, host-only oracle
#   test_fixed32.c  - uint32_t fixed-point (lib/fixedmath.[ch])
#   test_float24.c  - byte-accurate AN575 float24 model (lib/float24.[ch])
#
# Each program feeds a swept set of F1/F2/F3 (+ CCal) values through
# the same corrected Thomson-formula derivation, computes the "missing"
# Cx/Lin value, and compares against a double-precision reference -
# this is the "round-trip" (frequencies -> value -> known reference)
# the three implementations are graded against.
#
# This script builds and runs the *host* (x86_64-linux-gnu) side of
# that round-trip, with two independent C compilers (gcc and tcc) as a
# cross-check that no implementation silently depends on one
# compiler's UB resolution. It does NOT touch a PIC target or a
# simulator - see README.md for the separate gpsim/MDB flow that
# round-trips test_float24.c's *MCU* build (no printf there; results
# come back by reading volatile globals through the simulator instead
# of stdout).
#
# Usage: ./run_host_tests.sh   (run from tests/, or any cwd - it cd's
# to its own directory first)

set -e
cd "$(dirname "$0")"

LIBDIR=../lib
CFLAGS_COMMON="-O2 -Wall"

have_cc() { command -v "$1" >/dev/null 2>&1; }

CCS=""
have_cc gcc && CCS="$CCS gcc"
have_cc tcc && CCS="$CCS tcc"
if [ -z "$CCS" ]; then
  echo "no host C compiler found (need gcc and/or tcc)" >&2
  exit 1
fi

echo "Host compilers: $CCS"
echo

for CC in $CCS; do
  echo "############################################"
  echo "# $CC"
  echo "############################################"

  "$CC" $CFLAGS_COMMON -D__XC=1 -DHOST_TEST=1 -o "test_double_$CC" test_double.c -lm
  "$CC" $CFLAGS_COMMON -D__XC=1 -DHOST_TEST=1 -I"$LIBDIR" -o "test_fixed32_$CC" \
    test_fixed32.c "$LIBDIR/fixedmath.c" -lm
  "$CC" $CFLAGS_COMMON -D__XC=1 -DHOST_TEST=1 -I"$LIBDIR" -o "test_float24_$CC" \
    test_float24.c "$LIBDIR/float24.c" -lm

  echo "--- test_double ($CC) ---"
  "./test_double_$CC"
  echo "--- test_fixed32 ($CC) ---"
  "./test_fixed32_$CC"
  echo "--- test_float24 ($CC) ---"
  "./test_float24_$CC"
  echo
done

echo "############################################"
echo "# summary (known case: F1=30000 F2=21300 F3=29500 CCal=1000)"
echo "# expected (double oracle): Cx_x100=3475  Lin_x100=946495"
echo "############################################"
for CC in $CCS; do
  echo "[$CC] double:  $("./test_double_$CC"  | grep '^known case')"
  echo "[$CC] fixed32: $("./test_fixed32_$CC" | grep '^known case')"
  echo "[$CC] float24: $("./test_float24_$CC" | grep '^known case')"
done

echo
echo "Done. See TODO.md for what the precision-floor numbers above mean"
echo "(near-cancellation error inherent to the 3-frequency method itself,"
echo "not a representation bug - present in all three implementations)."

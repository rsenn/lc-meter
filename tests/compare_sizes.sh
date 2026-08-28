#!/bin/sh
# Code-size comparison of the three Thomson-formula implementations
# (test_double.c, test_fixed32.c, test_float24.c) for the real
# PIC16F876A target, under both compilers this project supports. See
# TODO.md for the derivation/background and the original code-size
# experiment this formalizes (that first pass compared hand-written
# scratch prototypes; this compares the actual tests/*.c + lib/*.c
# files, MCU build - no -DHOST_TEST).
#
# Each test_*.c is dual-target (see their own top-of-file comments):
# built WITHOUT -DHOST_TEST, they're plain no-stdio embedded C with a
# `main()` that computes the known test case into volatile globals and
# halts - exactly what would ship, size-wise, if wired into
# src/measure.c behind USE_FIXED/USE_FLOAT24.
#
# Usage: ./compare_sizes.sh

cd "$(dirname "$0")"
TESTS_DIR=$(pwd)
LIB_DIR="$TESTS_DIR/../lib"

XC8=/opt/microchip/xc8/v1.43/bin/xc8
SDCC_BIN=/opt/sdcc-4.3.0rc1/bin
CHIP=16f876a

WORK="$TESTS_DIR/sizecompare-work"
rm -rf "$WORK"
mkdir -p "$WORK"

# name:testfile:libfile (libfile empty for test_double, which has no
# lib/ dependency beyond typedef.h)
IMPLS="double:test_double.c: fixed32:test_fixed32.c:fixedmath.c float24:test_float24.c:float24.c"

xc8_row() {
  name=$1 testfile=$2 libfile=$3
  out="$WORK/xc8_${name}"
  log="$WORK/xc8_${name}.log"
  mkdir -p "$out"
  srcs="$TESTS_DIR/$testfile"
  [ -n "$libfile" ] && srcs="$LIB_DIR/$libfile $srcs"
  if (cd "$out" && "$XC8" --chip=$CHIP -G --opt="default,+asm,+debug" \
        -O"${name}.hex" -I"$LIB_DIR" $srcs >"$log" 2>&1); then
    words=$(grep "Program space" "$log" | sed -E 's/.*used +([0-9A-Fa-f]+)h.*/\1/')
    words_dec=$((0x$words))
    pct=$(grep "Program space" "$log" | sed -E 's/.*\(([ 0-9.]+)%\).*/\1/' | tr -d ' ')
    ram=$(grep "Data space" "$log" | sed -E 's/.*used +([0-9A-Fa-f]+)h.*/\1/')
    ram_dec=$((0x$ram))
    echo "$name|xc8|OK|${words_dec} words (${pct}% flash)|${ram_dec} bytes RAM"
  else
    err=$(grep -iE "error" "$log" | head -1 | cut -c1-70)
    echo "$name|xc8|FAIL|${err:-see $log}|-"
  fi
}

sdcc_row() {
  name=$1 testfile=$2 libfile=$3
  out="$WORK/sdcc_${name}"
  log="$WORK/sdcc_${name}.log"
  mkdir -p "$out"
  : >"$log"
  (
    cd "$out" || exit 1
    PATH="$SDCC_BIN:$PATH"
    export PATH
    objs=""
    for s in $libfile $testfile; do
      [ -z "$s" ] && continue
      base=$(basename "$s" .c)
      src="$TESTS_DIR/$s"
      [ "$s" = "$libfile" ] && src="$LIB_DIR/$s"
      if ! sdcc -mpic14 -p$CHIP --use-non-free --stack-size 32 \
            -I"$LIB_DIR" -c "$src" -o "${base}.o" >>"$log" 2>&1; then
        exit 1
      fi
      objs="$objs ${base}.o"
    done
    sdcc -mpic14 -p$CHIP --use-non-free -Wl-m -o "${name}.hex" $objs >>"$log" 2>&1
  )
  if [ -f "$out/${name}.hex" ]; then
    # sdcc's pic14 driver doesn't print a program-memory summary to
    # stdout the way xc8 does - gplink's own map file (produced
    # alongside the .hex, since sdcc passes -m through) has it.
    map="$out/${name}.map"
    if [ -f "$map" ]; then
      # gplink's map: "Section Type Address Location Size(Bytes)" rows -
      # sum every row whose Location column is "program" (both "code"
      # and "romdata" typed sections occupy flash).
      bytes_dec=$(awk '$(NF-1)=="program"{sum+=strtonum($NF)} END{print sum+0}' "$map")
      echo "$name|sdcc|OK|${bytes_dec} bytes flash (see $map)|-"
    else
      echo "$name|sdcc|OK|hex written, no map|-"
    fi
  else
    err=$(grep -iE "error" "$log" | tail -1 | cut -c1-70)
    echo "$name|sdcc|FAIL|${err:-see $log}|-"
  fi
}

echo "Building and measuring all 3 implementations under both compilers..."
echo "(compiles test_double.c/test_fixed32.c/test_float24.c + their lib/"
echo " dependency for real PIC16F876A hardware, MCU build, not host)"
echo

: >"$WORK/rows.txt"
for entry in $IMPLS; do
  name=${entry%%:*}
  rest=${entry#*:}
  testfile=${rest%%:*}
  libfile=${rest#*:}
  xc8_row "$name" "$testfile" "$libfile" >>"$WORK/rows.txt"
  sdcc_row "$name" "$testfile" "$libfile" >>"$WORK/rows.txt"
done

printf "%-10s %-6s %-6s %-45s %s\n" "IMPL" "CC" "RESULT" "PROGRAM SPACE" "RAM"
printf "%-10s %-6s %-6s %-45s %s\n" "----" "--" "------" "-------------" "---"
while IFS='|' read -r name cc result size ram; do
  printf "%-10s %-6s %-6s %-45s %s\n" "$name" "$cc" "$result" "$size" "$ram"
done < "$WORK/rows.txt"

echo
echo "Build logs kept at: $WORK (not auto-deleted - rerun this script or"
echo "'rm -rf sizecompare-work' to clear them)."
echo "See TODO.md for what an SDCC FAIL means for fixed32/float24 (a"
echo "real, open RAM-bank placement issue - not the same as double's"
echo "expected flash overflow)."

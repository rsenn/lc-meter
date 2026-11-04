#!/bin/sh
# Builds tests/test_display.c with the real measure.c/print.c for the
# PIC16F876A (XC8), runs it in mdb's built-in simulator and prints the
# top LCD line of each scenario. Usage: ./run_mdb_display.sh [lcd|ser] [mdb.sh]
# lcd (default): HD44780 stub, USE_SER off. ser: no LCD, USE_SER=1, stub UART.
set -e
cd "$(dirname "$0")"
XC8=/opt/microchip/xc8/v1.43/bin/xc8
MODE="${1:-lcd}"
MDB="$2"
[ -n "$MDB" ] || MDB=$(ls /mnt/data/opt/microchip/mplabx/*/mplab_platform/bin/mdb.sh /opt/microchip/mplabx/*/mplab_platform/bin/mdb.sh 2>/dev/null | tail -1)
[ -x "$MDB" ] || { echo "mdb.sh not found" >&2; exit 1; }

if [ "$MODE" = ser ]; then DEFS="-DUSE_SER=1 -DSER_LOG_SCEN=${SCEN:-0}"; else DEFS="-DUSE_HD44780_LCD=1"; fi
mkdir -p build dist
(cd build && "$XC8" --chip=16f876a -G --opt="default,+asm,+debug" --double=32 --float=32 \
  $DEFS -DUSE_TIMER0=1 -DUSE_FIXED=1 -D_XTAL_FREQ=20000000 -D__XC=1 \
  -I../.. -I../../lib -I../../src \
  -Otest_display.hex ../test_display.c ../../src/measure.c ../../src/print.c \
  ../../lib/fixedmath.c ../../lib/format.c ../../lib/buffer.c ../../lib/timer.c) >build/xc8.log 2>&1 || { cat build/xc8.log; exit 1; }
cp build/test_display.cof dist/

CMDS=dist/cmds.txt
{
  echo "Device PIC16F876A"; echo "Hwtool SIM"; echo 'Program "dist/test_display.cof"'
  echo "Reset MCLR"; echo "Run"; echo "Wait 20000"
  echo "Print done"
  [ "$MODE" = ser ] || for n in 0 1 2 3 4 5 6 7; do echo "Print shot$n"; done
  [ "$MODE" = ser ] && { echo "Print serlog"; }
  echo "Quit"
} >$CMDS
OUT=$(timeout 300 "$MDB" $CMDS 2>&1 || true)
echo "$OUT" >dist/mdb.log
echo "$OUT" | tr -d '\r' | python3 -c '
import sys,re
t=sys.stdin.read()
print("done=%s" % re.search(r"done=\n(\d+)",t).group(1))
for n in range(8):
    m=re.search(r"shot%d=\n\{([^}]*)\}"%n,t)
    if m: print("%d: |%s|" % (n,"".join(chr(int(x)) if 32<=int(x)<127 else ("u" if int(x)==228 else "?") for x in m.group(1).split(",")[:16])))
m=re.search(r"serlog=\n\{([^}]*)\}",t)
if m:
    for n in (0,):
        print("serial: %r" % ("".join(chr(int(x)) for x in m.group(1).split(",") if int(x))))
'

: ${OS:=`uname -o`}

exec 10>&2

case "$OS" in
  "GNU/Linux") EXEEXT=".elf" ;;
  *) EXEEXT=".exe" ;;
 esac
IFS="
 	"
: ${COMPILERS:="xc8 htc sdcc"}
[ $# -gt 0 ] && SOURCES="$*" ||
SOURCES='LC-meter.? lib/{comparator,format,random,ser,softpwm,timer,uart}.? src/config-${CHIP}.h src/config-bits.h src/*.c src/pictest.h'
echo "SOURCES='$SOURCES'" 1>&2
set -- --preproc="./cpp-xc8${EXEEXT}" 
: ${CHIPS='16f876a 18f2450 18f2520 18f2550 18f25k22 18f25k50'}
CHIPS='18f25k50 18f2550'
BUILD_TYPES='debug release'
BUILD_TYPES='debug' 
: ${PROGRAM_NAME:=${SOURCES%%.*}}
for CHIP in $CHIPS;  do
	for BUILD_TYPE in $BUILD_TYPES; do
		for COMPILER in $COMPILERS
		do
      eval "SOURCES=\$(set -- $SOURCES; ls -d \$@)"

		eval \(set -x\;	genmakefile -t $COMPILER -m mplab \
				"$@" \
				-I. -Ilib -Isrc \
		${SOURCES} \
      -DHAVE_COMPARATOR=1 -DSOFTSER_TIMER=2 -DUART_BAUD=38400 -DUSE_SOFTPWM=1 -DUSE_SOFTSER=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -D_XTAL_FREQ=20000000 \
				--create-bins \
				--no-create-libs \
				--$BUILD_TYPE \
				--chip=${CHIP} \
        -o build/mplab/$PROGRAM_NAME-$CHIP-$COMPILER-$BUILD_TYPE.mcp ">&genmakefile-$COMPILER-$BUILD_TYPE.log) 2>&10"
		done
	done
done

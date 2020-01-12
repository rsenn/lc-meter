: ${OS:=`uname -o`}

exec 10>&2

case "$OS" in
  "GNU/Linux") EXEEXT=".elf" ;;
  *) EXEEXT=".exe" ;;
 esac

set -- --preproc="./cpp-xc8${EXEEXT} -DMCHP_XC8=1 -D__XC=1" "$@" 
for CHIP in 16f876a 18f2450 18f2520 18f2550 18f25k22 18f25k50; do
	for BUILD_TYPE in debug release; do
		for COMPILER in xc8 htc #sdcc
		do
      (set -x;
			genmakefile -t $COMPILER -m gmake \
				-DUSE_{SER,HD44780_LCD,TIMER0}=1 \
				"$@" \
				-I. -Ilib -Isrc \
				lib/*.c src LC-meter.c \
				--create-bins \
				--no-create-libs \
				--$BUILD_TYPE \
				--chip=${CHIP} \
        -o $COMPILER-$CHIP-$BUILD_TYPE.mk 2>genmakefile-$COMPILER-$BUILD_TYPE.log) 2>&10
		done
	done
done

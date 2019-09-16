for BUILD_TYPE in debug release; do
	for COMPILER in xc8 htc sdcc; do
		genmakefile -t $COMPILER -m gmake \
			-DUSE_{UART,HD44780_LCD,TIMER{0,1,2}}=1 \
			"$@" \
			-I. -Ilib -Isrc \
			lib src LC-meter.c \
			--no-create-libs \
			--$BUILD_TYPE \
			-o $COMPILER-$BUILD_TYPE.mk
	done
done

for COMPILER in xc8 htc sdcc; do
	genmakefile -t $COMPILER -m gmake \
		-DUSE_{UART,HD44780_LCD,TIMER{0,1,2}}=1 \
		"$@" \
		-I. -Ilib -Isrc \
		lib src LC-meter.c \
		--no-create-libs \
		--debug \
		-o $COMPILER.mk
done

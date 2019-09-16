genmakefile -t xc8 -m gmake \
	-DUSE_{UART,HD44780_LCD,TIMER{0,1,2}}=1 \
	"$@" \
	-Ilib -Isrc \
	lib src LC-meter.c \
	--no-create-libs \
	--debug \
	-o xc8.mk 

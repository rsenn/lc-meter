# Generated by:
#  genmakefile -t htc -m gmake -DUSE_UART=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 --preproc=./cpp-xc8.exe -DMCHP_XC8=1 -D__XC=1 -I. -Ilib -Isrc lib src LC-meter.c --no-create-libs --release --chip=18f25k50 -o htc-18f25k50-release.mk
DEFS = -DUSE_UART=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1
CC = picc18
CXX = c++
CPPFLAGS = -DNDEBUG=1 -DHI_TECH_C=1 -DPIC18=1 -DPIC18F25K50=1 -D__$(CHIP)=1 -I. -Ilib -Isrc
CFLAGS = -O2 -N127 --opt=speed --double=32 -q --chip=$(CHIP) --runtime=default,-keep,+stackcall,+download --summary=default,+psect --errformat="%f:%l:%c error [%n]: %s" --warnformat="%f:%l:%c warning [%n]: %s" --errformat="%f:%l:%c error [%n]: %s" --warnformat="%f:%l:%c warning [%n]: %s"
LIB = libr
TARGET = pic18
LINK = picc18
CHIP = 18f25k50
MACH = pic16
LDFLAGS = --output=+mcof,-elf --asmlist
CPP = ./cpp-xc8.exe -DMCHP_XC8=1 -D__XC=1

all: build/htc-18f25k50/Release build/htc-18f25k50/Release/LC-meter.cof
build/htc-18f25k50/Release:
	test -d "$@" || mkdir -p "$@"

.c.p1:
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/uart.p1: lib/uart.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/timer.p1: lib/timer.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/ser.p1: lib/ser.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/lcd5110.p1: lib/lcd5110.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/lcd44780.p1: lib/lcd44780.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/format.p1: lib/format.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/delay.p1: lib/delay.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/comparator.p1: lib/comparator.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/buffer.p1: lib/buffer.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/adc.p1: lib/adc.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/lib.lib: build/htc-18f25k50/Release/uart.p1 build/htc-18f25k50/Release/timer.p1 build/htc-18f25k50/Release/ser.p1 build/htc-18f25k50/Release/lcd5110.p1 build/htc-18f25k50/Release/lcd44780.p1 build/htc-18f25k50/Release/format.p1 build/htc-18f25k50/Release/delay.p1 build/htc-18f25k50/Release/comparator.p1 build/htc-18f25k50/Release/buffer.p1 build/htc-18f25k50/Release/adc.p1
	$(LIB) /out:$@ $^

build/htc-18f25k50/Release/print.p1: src/print.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/measure.p1: src/measure.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/src.lib: build/htc-18f25k50/Release/print.p1 build/htc-18f25k50/Release/measure.p1
	$(LIB) /out:$@ $^

build/htc-18f25k50/Release/LC-meter.pp.c: LC-meter.c
	$(CPP) $(CPPFLAGS) $(DEFS) -o"$@" $<

build/htc-18f25k50/Release/LC-meter.p1: build/htc-18f25k50/Release/LC-meter.pp.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f25k50/Release/LC-meter.cof: build/htc-18f25k50/Release/LC-meter.p1 build/htc-18f25k50/Release/uart.p1 build/htc-18f25k50/Release/timer.p1 build/htc-18f25k50/Release/ser.p1 build/htc-18f25k50/Release/lcd5110.p1 build/htc-18f25k50/Release/lcd44780.p1 build/htc-18f25k50/Release/format.p1 build/htc-18f25k50/Release/delay.p1 build/htc-18f25k50/Release/comparator.p1 build/htc-18f25k50/Release/buffer.p1 build/htc-18f25k50/Release/adc.p1 build/htc-18f25k50/Release/print.p1 build/htc-18f25k50/Release/measure.p1
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(LDFLAGS) -o"$@" $^ $(LIBS) $(EXTRA_LIBS) $(STDC_LIBS)

clean:
	rm -f build/htc-18f25k50/Release/*.p1
	rm -f build/htc-18f25k50/Release/*.lib
	rm -f build/htc-18f25k50/Release/*.c
	rm -f build/htc-18f25k50/Release/*.cof


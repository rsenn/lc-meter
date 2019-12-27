# Generated by:
#  genmakefile -t htc -m gmake -DUSE_UART=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 --preproc=./cpp-xc8.exe -DMCHP_XC8=1 -D__XC=1 -I. -Ilib -Isrc lib src LC-meter.c --no-create-libs --debug --chip=18f2550 -o htc-18f2550-debug.mk
DEFS = -DUSE_UART=1 -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1
CC = picc18
CXX = c++
CPPFLAGS = -DDEBUG=1 -DHI_TECH_C=1 -DPIC18=1 -DPIC18F2550=1 -D__$(CHIP)=1 -I. -Ilib -Isrc
LIB = libr
CFLAGS = -N127 --opt=all -g --debugger=pickit3 --double=32 -q --chip=$(CHIP) --runtime=default,-keep,+stackcall,+download --summary=default,+psect --errformat="%f:%l:%c error [%n]: %s" --warnformat="%f:%l:%c warning [%n]: %s" --errformat="%f:%l:%c error [%n]: %s" --warnformat="%f:%l:%c warning [%n]: %s"
TARGET = pic18
LINK = picc18
CHIP = 18f2550
MACH = pic16
LDFLAGS = --output=+mcof,-elf --asmlist
CPP = ./cpp-xc8.exe -DMCHP_XC8=1 -D__XC=1

all: build/htc-18f2550/Debug build/htc-18f2550/Debug/LC-meter.cof
build/htc-18f2550/Debug:
	test -d "$@" || mkdir -p "$@"

.c.p1:
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/uart.p1: lib/uart.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/timer.p1: lib/timer.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/ser.p1: lib/ser.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/lcd5110.p1: lib/lcd5110.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/lcd44780.p1: lib/lcd44780.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/format.p1: lib/format.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/delay.p1: lib/delay.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/comparator.p1: lib/comparator.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/buffer.p1: lib/buffer.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/adc.p1: lib/adc.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/lib.lib: build/htc-18f2550/Debug/uart.p1 build/htc-18f2550/Debug/timer.p1 build/htc-18f2550/Debug/ser.p1 build/htc-18f2550/Debug/lcd5110.p1 build/htc-18f2550/Debug/lcd44780.p1 build/htc-18f2550/Debug/format.p1 build/htc-18f2550/Debug/delay.p1 build/htc-18f2550/Debug/comparator.p1 build/htc-18f2550/Debug/buffer.p1 build/htc-18f2550/Debug/adc.p1
	$(LIB) /out:$@ $^

build/htc-18f2550/Debug/print.p1: src/print.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/measure.p1: src/measure.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/src.lib: build/htc-18f2550/Debug/print.p1 build/htc-18f2550/Debug/measure.p1
	$(LIB) /out:$@ $^

build/htc-18f2550/Debug/LC-meter.pp.c: LC-meter.c
	$(CPP) $(CPPFLAGS) $(DEFS) -o"$@" $<

build/htc-18f2550/Debug/LC-meter.p1: build/htc-18f2550/Debug/LC-meter.pp.c
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) $(DEFS) --pass1 -c "$<" -o"$@"

build/htc-18f2550/Debug/LC-meter.cof: build/htc-18f2550/Debug/LC-meter.p1 build/htc-18f2550/Debug/uart.p1 build/htc-18f2550/Debug/timer.p1 build/htc-18f2550/Debug/ser.p1 build/htc-18f2550/Debug/lcd5110.p1 build/htc-18f2550/Debug/lcd44780.p1 build/htc-18f2550/Debug/format.p1 build/htc-18f2550/Debug/delay.p1 build/htc-18f2550/Debug/comparator.p1 build/htc-18f2550/Debug/buffer.p1 build/htc-18f2550/Debug/adc.p1 build/htc-18f2550/Debug/print.p1 build/htc-18f2550/Debug/measure.p1
	$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(LDFLAGS) -o"$@" $^ $(LIBS) $(EXTRA_LIBS) $(STDC_LIBS)

clean:
	rm -f build/htc-18f2550/Debug/*.p1
	rm -f build/htc-18f2550/Debug/*.lib
	rm -f build/htc-18f2550/Debug/*.c
	rm -f build/htc-18f2550/Debug/*.cof


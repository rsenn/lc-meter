# Host-native (plain gcc/tcc, no PIC toolchain) build of all three
# Thomson-formula implementations - the pure-math correctness/precision
# checks. See run_host_tests.sh (runs all three under both gcc and tcc
# and prints a summary) and tests/README.md. `make build-float24` below
# is the separate embedded (PIC16F876A) build of test_float24.c for
# gpsim/MDB - see TODO.md for that simulator round-trip flow.

CC ?= gcc
CFLAGS ?= -O2 -Wall
# See test_fixed32.c's own comment: typedef.h's uint32_t is only a real
# (4-byte) stdint.h typedef under a compiler it recognizes; claiming
# __XC steers a host gcc build onto that path instead of typedef.h's
# `#define uint32_t unsigned long int` fallback, which is 8 bytes on
# LP64 Linux and silently corrupts any struct shared with lib/*.c
# compiled without the same define.
HOST_DEFS = -D__XC=1

.PHONY: all run clean build-float24 gpsim sizes
all: test_double test_fixed32 test_float24

test_double: test_double.c common.h ../lib/typedef.h
	$(CC) $(CFLAGS) $(HOST_DEFS) -DHOST_TEST=1 -o $@ test_double.c -lm

test_fixed32: test_fixed32.c common.h ../lib/fixedmath.h ../lib/fixedmath.c
	$(CC) $(CFLAGS) $(HOST_DEFS) -DHOST_TEST=1 -I../lib -o $@ test_fixed32.c ../lib/fixedmath.c -lm

# HOST_TEST switches test_float24.c from its MCU main() (no stdio, just
# the volatile result globals) to a host main() that prints the same
# known-case/trial-sweep report as the other two tests.
test_float24: test_float24.c common.h ../lib/float24.h ../lib/float24.c
	$(CC) $(CFLAGS) $(HOST_DEFS) -DHOST_TEST=1 -I../lib -o $@ test_float24.c ../lib/float24.c -lm

run: all
	./test_double
	./test_fixed32
	./test_float24

# Embedded build of test_float24.c for MPLAB X's mdb (XC8 - produces a
# .cof, the format mdb wants) - same source file as above, built
# WITHOUT -DHOST_TEST so it stays the no-stdio MCU main(). See
# run_mdb_sim.sh / TODO.md for the full round-trip flow (loading the
# .cof into mdb's built-in simulator, running to `done`, reading back
# result_Cx_x100/result_Lin_x100 by symbol name).
XC8 ?= /opt/microchip/xc8/v1.43/bin/xc8
build-float24: test_float24.c ../lib/float24.h ../lib/float24.c
	$(XC8) --chip=16f876a -G --opt="default,+asm,+debug" -Otest_float24_mcu.hex \
		-I../lib ../lib/float24.c test_float24.c

# gpsim wants a gputils .cod, which only SDCC+gplink produce (not
# XC8) - see run_gpsim_sim.sh / TODO.md. gpsim_demo.c is a minimal
# proof of that mechanism, not the real fixedmath.c/float24.c (both
# currently hit unresolved SDCC-pic14-on-16F876A issues, documented in
# TODO.md).
gpsim: gpsim_demo.c
	./run_gpsim_sim.sh

sizes: test_double.c test_fixed32.c test_float24.c ../lib/fixedmath.c ../lib/float24.c
	./compare_sizes.sh

clean:
	rm -rf dist sizecompare-work
	rm -f test_double test_fixed32 test_float24 \
		test_double_gcc test_double_tcc test_fixed32_gcc test_fixed32_tcc \
		test_float24_gcc test_float24_tcc \
		test_float24_mcu.hex test_float24_mcu.cof test_float24_mcu.as \
		test_float24_mcu.sdb test_float24_mcu.cmf test_float24_mcu.hxl \
		test_float24_mcu.obj test_float24_mcu.sym \
		test_float24.p1 test_float24.d test_float24.pre \
		test_double.p1 test_double.d test_double.pre \
		float24.p1 float24.d float24.pre \
		gpsim_demo.hex gpsim_demo.cod gpsim_demo.o gpsim_demo.asm \
		gpsim_demo.lst gpsim_demo.map gpsim_demo_cmds.stc \
		startup.as startup.lst startup.obj startup.rlf *.o

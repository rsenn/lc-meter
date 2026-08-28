/*
 * Dual-target test that exactly mirrors
 * Unpack-1116/firmware-asm-hex/lcmeter.asm's own C_calc/L_calc/
 * F1_F3/F1_F2 call sequence, using lib/float24.h (the byte-accurate
 * AN575 model) instead of the assembly's FP24.A16 routines directly -
 * operation-for-operation the same steps, so a simulator round-trip
 * (gpsim / MPLAB X) run against this can be compared directly to what
 * the original firmware would have computed for the same inputs. See
 * TODO.md for the full derivation and the constants' provenance.
 *
 * This deliberately reproduces the ASM's literal "divide then square"
 * shape (F1/Fx, squared, minus one) rather than the more
 * precision-friendly "difference of squares" reordering used by
 * lib/measure.c's own USE_FLOAT24 path - the point of *this* file is
 * to faithfully reconstruct the original firmware's actual numeric
 * behavior for comparison, not to be the best implementation.
 *
 * Same source builds two ways:
 *  - MCU (XC8/SDCC, real __XC8/__SDCC macros defined by the compiler
 *    itself): no printf/stdio anywhere, just the volatile result
 *    globals for a simulator (gpsim/MDB) to read back by symbol name.
 *      xc8 --chip=16f876a -G --opt="default,+asm,+debug" \
 *          -Otest_float24.hex -I../lib ../lib/float24.c test_float24.c
 *  - host (plain gcc/tcc, HOST_TEST + __XC defined on the command
 *    line - see run_host_tests.sh): prints the known case and runs the
 *    same common.h trial sweep as test_double.c/test_fixed32.c.
 *      gcc -D__XC=1 -DHOST_TEST=1 -I../lib -o test_float24_host \
 *          test_float24.c ../lib/float24.c -lm
 */
#include "../lib/float24.h"

#ifdef HOST_TEST
#include "common.h"
#else
/* MCU build only - WDTE=OFF matters here: float24's bit-serial
 * multiply/divide take thousands of cycles, easily longer than the
 * default watchdog timeout, which otherwise resets the simulated chip
 * mid-computation before `done` is ever set (confirmed - the first
 * simulator run without this attempted config left result_Lin_x100=0/
 * done=0, chip stuck watchdog-resetting during the float24 division
 * routines). DEBUG=ON matches src/config-16f876a.h's own _DEBUG
 * convention (in-circuit/simulator debug needs it). */
#if defined(__XC) || defined(MCHP_XC8)
#pragma config FOSC = HS, LVP = OFF, CPD = OFF, BOREN = ON, WDTE = OFF, WRT = OFF, DEBUG = ON
#elif defined(__SDCC)
/* SDCC's own idiom (see lib/device.h's DEVICE_EMIT_CONFIG_WORD /
 * __config_word) - no __CONFIG() macro; declare a variable at the
 * fixed 0x2007 config-word address instead. The underscore-prefixed
 * bit constants (_FOSC_HS, _WDTE_OFF, ...) come from SDCC's own
 * pic16f876a.h, NOT the HI-TECH-style FOSC_HS/WDTE_OFF names used
 * elsewhere in this codebase for HI_TECH_C. */
#include <pic16f876a.h>
__code unsigned int __at(_CONFIG) __config_word =
    (_FOSC_HS & _WDTE_OFF & _PWRTE_ON & _BOREN_ON & _LVP_OFF & _CPD_OFF & _DEBUG_ON & _CP_OFF);
#endif
#endif

/* 1.0 encoded as f24_t: mantissa 0x800000 (implicit-1, no fraction),
 * exp = 127 (bias, i.e. 2^0). */
static const f24_t ONE_CONST = {0x00, 127, {0x80, 0x00, 0x00}};

/* GATE_PERIOD^2/(4*pi^2) * 1e15 (the nH unit conversion folded in, to
 * match lib/float24-based L_calc's own convention - f24_to_u32_x100
 * supplies the final x100 display scale). Independently derived (see
 * TODO.md) and cross-checked against the ASM's own hardcoded
 * Get_Lscale constant (AEXP=0xB8, AARGB0=0x60, AARGB1=0xFA,
 * "2.53303e+17") - matches almost byte-for-byte (only the top,
 * implicit-1 bit of AARGB0 differs, an encoding-convention artifact,
 * not a value difference). */
static const f24_t LSCALE_CONST = {0x00, 184, {0xE0, 0xFA, 0x6D}};

/* mirrors F1_F3/F1_F2 (which both fall into F1_F1's shared body in the
 * ASM): (F1/Fx)^2 - 1 */
static void
f1_fx_minus1(const f24_t *f1, const f24_t *fx, f24_t *out) {
  f24_t ratio, ratio_sq;
  f24_div(f1, fx, &ratio);
  f24_mul(&ratio, &ratio, &ratio_sq);
  f24_sub(&ratio_sq, &ONE_CONST, out);
}

/* mirrors C_calc: divide; Get_Ccal; multiply */
static uint32_t
c_calc(const f24_t *f13, const f24_t *f12, const f24_t *ccal) {
  f24_t ratio, cx;
  f24_div(f13, f12, &ratio);
  f24_mul(&ratio, ccal, &cx);
  return f24_to_u32_x100(&cx);
}

/* mirrors L_calc: multiply; Get_Lscale; multiply; Get_Ccal; S_swap;
 * divide; L_divF1: Get_F1; S_push; multiply; S_swap; divide */
static uint32_t
l_calc(const f24_t *f13, const f24_t *f12, const f24_t *ccal, const f24_t *f1) {
  f24_t prod, scaled, divccal, f1sq, lin;
  f24_mul(f13, f12, &prod);
  f24_mul(&prod, &LSCALE_CONST, &scaled);
  f24_div(&scaled, ccal, &divccal);
  f24_mul(f1, f1, &f1sq);
  f24_div(&divccal, &f1sq, &lin);
  return f24_to_u32_x100(&lin);
}

/* Test inputs - gpsim/MPLAB X can poke different values in here before
 * running (via the .cod symbol table) instead of reflashing; the
 * defaults match the case worked through by hand in TODO.md /
 * tests/README.md so a first run has a known-good expected answer. */
volatile uint16_t test_F1 = 30000;
volatile uint16_t test_F2 = 21300;
volatile uint16_t test_F3 = 29500;
volatile uint16_t test_CCal = 1000;

/* Results - read these back after `done` goes nonzero. */
volatile uint32_t result_Cx_x100;
volatile uint32_t result_Lin_x100;
volatile uint8_t done;

/* single case, shared by both build flavors below - never uses
 * printf/stdio, safe for the MCU build too. */
static void
run_known_case(void) {
  f24_t f1, f2, f3, ccal, f13, f12;

  f24_from_u16(test_F1, &f1);
  f24_from_u16(test_F2, &f2);
  f24_from_u16(test_F3, &f3);
  f24_from_u16(test_CCal, &ccal);

  f1_fx_minus1(&f1, &f3, &f13);
  f1_fx_minus1(&f1, &f2, &f12);

  result_Cx_x100 = c_calc(&f13, &f12, &ccal);
  result_Lin_x100 = l_calc(&f13, &f12, &ccal, &f1);

  done = 1;
}

#ifndef HOST_TEST
/* MCU build: no stdio anywhere - a simulator reads result_Cx_x100/
 * result_Lin_x100 back by symbol name after `done` goes nonzero. */
void
main(void) {
  run_known_case();
  for (;;) {
    /* halt point - gpsim/MDB breaks here on `done` or a PC-range breakpoint */
  }
}
#else
/* host build: same computation, plus common.h's trial sweep, printed
 * the same way test_double.c/test_fixed32.c report theirs, for
 * run_host_tests.sh to parse and compare. */
int
main(void) {
  int trial;
  stats_t cx_stats = {0, 0, 0, 0.0};
  stats_t lin_stats = {0, 0, 0, 0.0};

  run_known_case();
  printf("known case F1=30000 F2=21300 F3=29500 CCal=1000: Cx_x100=%lu  Lin_x100=%lu\n",
         (unsigned long)result_Cx_x100, (unsigned long)result_Lin_x100);

  srand(42);
  for (trial = 0; trial < 50000; trial++) {
    trial_t t;
    f24_t f1, f2, f3, ccal, f13, f12;
    uint32_t got_cx, got_lin;
    uint8_t fault = 0;

    gen_trial(&t);
    if (trial_degenerate(&t))
      continue;
    /* float24 only takes u16 frequencies/CCal, same as the real
     * firmware's counter/timer inputs - clamp like the MCU path would. */
    if (t.F1 > 65535.0 || t.CCal > 65535.0)
      continue;

    f24_from_u16((uint16_t)t.F1, &f1);
    f24_from_u16((uint16_t)t.F2, &f2);
    f24_from_u16((uint16_t)t.F3, &f3);
    f24_from_u16((uint16_t)t.CCal, &ccal);

    f1_fx_minus1(&f1, &f3, &f13);
    f1_fx_minus1(&f1, &f2, &f12);

    got_cx = c_calc(&f13, &f12, &ccal);
    got_lin = l_calc(&f13, &f12, &ccal, &f1);
    if (got_cx == 0xFFFFFFFFuL || got_lin == 0xFFFFFFFFuL)
      fault = 1;

    stats_record(&cx_stats, t.Cx_ref, got_cx / 100.0, fault, 0.05);
    stats_record(&lin_stats, t.Lin_ref, got_lin / 100.0, fault, 0.05);
  }
  stats_print("Cx (float24)", &cx_stats, 0.05);
  stats_print("Lin (float24)", &lin_stats, 0.05);
  return 0;
}
#endif /* HOST_TEST */

/*
 * uint32_t-only fixed-point implementation of the corrected Thomson
 * formula, using the real lib/fixedmath.h primitives (no 64-bit type
 * anywhere - SDCC has none on pic14/pic16). Same computation this
 * repo's src/measure.c uses under -DUSE_FIXED. See TODO.md for the
 * derivation of every constant/scaling step below.
 *
 * Dual-target, same convention as test_float24.c: HOST_TEST (+ __XC on
 * the command line - see run_host_tests.sh/Makefile, NOT defined
 * in-source here, since a real SDCC/pic14 build must NOT take that
 * branch) builds a host `main()` with printf; without it, this is
 * plain embedded C for a real PIC target, no stdio, results left in
 * volatile globals for a simulator (gpsim/mdb) to read back.
 */
#include "../lib/fixedmath.h"

#ifdef HOST_TEST
#include "common.h"
#endif

#define F_MAX_SAFE 46340u /* sqrt(2^31): keeps F*F < 2^31 */

/* (F1/Fx)^2 - 1, as an adaptively-scaled Q(fb) value - see
 * lib/fixedmath.h's fixed_div_u32 for why adaptive beats a fixed
 * Q16.16 budget here (the common case is a *small* quotient, near the
 * low end of the meter's range, which needs more fractional
 * precision, not less). */
static void
ratio_sq_minus_1_q(uint16_t F1, uint16_t Fx, qval_t *r) {
  uint32_t f1sq, fxsq;
  r->m = 0;
  r->fb = 0;
  r->fault = 1;
  if (F1 > F_MAX_SAFE || Fx > F_MAX_SAFE || Fx == 0)
    return;
  f1sq = (uint32_t)F1 * F1;
  fxsq = (uint32_t)Fx * Fx;
  if (f1sq < fxsq)
    return; /* F1 must be >= Fx by design (clamped upstream) */
  fixed_div_u32(f1sq - fxsq, fxsq, r);
}

/* Cx_x100 (pF*100) = r13 * CCal_x100 / r12, both aligned to a common
 * fractional scale first so the scale cancels exactly. */
static uint32_t
measure_capacitance_fixed(uint16_t F1, uint16_t F2, uint16_t F3, uint32_t CCal_x100, uint8_t *fault) {
  qval_t r13, r12;
  uint8_t common_fb;
  uint32_t n13, n12;

  ratio_sq_minus_1_q(F1, F3, &r13);
  ratio_sq_minus_1_q(F1, F2, &r12);
  if (r13.fault || r12.fault) {
    *fault = 1;
    return 0;
  }
  common_fb = r13.fb < r12.fb ? r13.fb : r12.fb;
  n13 = fixed_align_to(&r13, common_fb);
  n12 = fixed_align_to(&r12, common_fb);
  if (n12 == 0) {
    *fault = 1;
    return 0;
  }
  return muldiv_u32(n13, CCal_x100, n12, fault);
}

/* Lin_x100 (nH*100) = r13_true * r12_true * (GATE_PERIOD^2/(4*pi^2)) *
 * 1e15 * 100 / (F1^2 * CCal_pF), staged through muldiv_u32 so no
 * intermediate ever needs more than 32 bits - see TODO.md for how the
 * LSCALE_X1e7/1e5/1e5 split was derived (folding pi and the display
 * scale into compile-time integer constants, same spirit as the
 * ASM/float24 path's own hardcoded Get_Lscale constant). */
static uint32_t
measure_inductance_fixed(uint16_t F1, uint16_t F2, uint16_t F3, uint32_t CCal_pF, uint8_t *fault) {
  qval_t r13, r12;
  uint32_t r13_q20, r12_q20, prod_q20, f1sq, step1, tmp;
  const uint32_t LSCALE_X1e7 = 2533030450uL; /* GATE_PERIOD^2/(4*pi^2) * 1e7, GATE_PERIOD=100ms fixed */

  *fault = 0;
  ratio_sq_minus_1_q(F1, F3, &r13);
  ratio_sq_minus_1_q(F1, F2, &r12);
  if (r13.fault || r12.fault) {
    *fault = 1;
    return 0;
  }
  r13_q20 = fixed_align_to(&r13, r13.fb < 20 ? r13.fb : 20);
  r12_q20 = fixed_align_to(&r12, r12.fb < 20 ? r12.fb : 20);

  /* realistic ratios (up to ~10x) at Q20 can exceed sqrt(2^32), so
   * their product needs muldiv_u32's wide multiply, not a plain one. */
  prod_q20 = muldiv_u32(r13_q20, r12_q20, 1048576uL /* 2^20 */, fault);
  if (*fault)
    return 0;

  f1sq = (uint32_t)F1 * F1;
  if (f1sq == 0) {
    *fault = 1;
    return 0;
  }
  step1 = muldiv_u32(prod_q20, LSCALE_X1e7, f1sq, fault); /* still Q20, scaled x1e7 */
  if (*fault)
    return 0;
  tmp = muldiv_u32(step1, 100000uL, 1048576uL /* 2^20 */, fault); /* x1e5, undo Q20 */
  if (*fault)
    return 0;
  return muldiv_u32(tmp, 100000uL, CCal_pF, fault); /* x1e5 -> combined x1e17 -> nH*100 */
}

/* Results - read these back after `done` goes nonzero (MCU build), or
 * see the printed known-case line (host build). Same convention as
 * test_float24.c. */
volatile uint32_t result_Cx_x100;
volatile uint32_t result_Lin_x100;
volatile uint8_t done;

/* same known case as tests/test_double.c and the embedded
 * tests/test_float24.c's default inputs - never uses printf/stdio,
 * safe for the MCU build too. */
static void
run_known_case(void) {
  uint8_t fault;
  result_Cx_x100 = measure_capacitance_fixed(30000, 21300, 29500, 100000u, &fault);
  result_Lin_x100 = measure_inductance_fixed(30000, 21300, 29500, 1000u, &fault);
  done = 1;
}

#ifndef HOST_TEST
/* MCU build: no stdio - a simulator reads result_Cx_x100/
 * result_Lin_x100 back by symbol name after `done` goes nonzero. */
void
main(void) {
  run_known_case();
  for (;;) {
    /* halt point - gpsim/MDB breaks here on `done` or a PC-range breakpoint */
  }
}
#else
int
main(void) {
  int trial;
  stats_t cx_stats = {0, 0, 0, 0.0};
  stats_t lin_stats = {0, 0, 0, 0.0};
  uint8_t fault;

  run_known_case();
  printf("known case F1=30000 F2=21300 F3=29500 CCal=1000: Cx_x100=%lu  Lin_x100=%lu\n",
         (unsigned long)result_Cx_x100, (unsigned long)result_Lin_x100);

  srand(42);
  for (trial = 0; trial < 300000; trial++) {
    trial_t t;
    uint32_t got_x100;
    gen_trial(&t);
    if (trial_degenerate(&t))
      continue;

    fault = 0;
    got_x100 = measure_capacitance_fixed((uint16_t)t.F1, (uint16_t)t.F2, (uint16_t)t.F3,
                                          (uint32_t)(t.CCal * 100), &fault);
    stats_record(&cx_stats, t.Cx_ref, got_x100 / 100.0, fault, 0.05);

    fault = 0;
    got_x100 = measure_inductance_fixed((uint16_t)t.F1, (uint16_t)t.F2, (uint16_t)t.F3,
                                         (uint32_t)t.CCal, &fault);
    stats_record(&lin_stats, t.Lin_ref, got_x100 / 100.0, fault, 0.05);
  }
  stats_print("Cx (fixed32)", &cx_stats, 0.05);
  stats_print("Lin (fixed32)", &lin_stats, 0.05);
  return 0;
}
#endif /* HOST_TEST */

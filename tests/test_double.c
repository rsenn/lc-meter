/*
 * `double`-based reference implementation of the corrected Thomson
 * formula (see TODO.md for the derivation and why the *active* Cin
 * line in src/measure.c is missing its denominator). This is the
 * oracle the other two tests (test_fixed32.c, test_float24.c) get
 * checked against - it's what "just use normal C and double" costs:
 * correct and simple, but this is exactly the path that pulls in SDCC's
 * software float library and doesn't fit on 16F876A's flash (confirmed
 * via the real build matrix - see TODO.md).
 *
 * Dual-target, same convention as test_fixed32.c/test_float24.c:
 * HOST_TEST builds a host main() with printf (the correctness/
 * precision sweep against common.h's trial generator); without it,
 * this is plain embedded C for a real PIC target (no stdio) - built
 * mainly for compare_sizes.sh's code-size comparison, since this is
 * exactly the path that's too big for 16F876A's flash under SDCC.
 */
#include "../lib/typedef.h"

static double
measure_capacitance_double(double F1, double F2, double F3, double CCal) {
  if (F3 > F1)
    F3 = F1;
  return (F2 * F2 * (F1 * F1 - F3 * F3) * CCal) / (F3 * F3 * (F1 * F1 - F2 * F2));
}

static double
measure_inductance_double(double F1, double F2, double F3, double CCal) {
  double numerator, denominator;
  if (F3 > F1)
    F3 = F1;
  numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 * F2)) * (100.0 * 100.0); /* GATE_PERIOD_MS^2 */
  denominator = 4 * 3.14159265358979323846 * 3.14159265358979323846 * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
  return (numerator / denominator) * 1e15; /* nH */
}

/* Results - read these back after `done` goes nonzero (MCU build), or
 * see the printed known-case line (host build). Same convention as
 * test_fixed32.c/test_float24.c. */
volatile uint32_t result_Cx_x100;
volatile uint32_t result_Lin_x100;
volatile uint8_t done;

/* same known case as test_fixed32.c/test_float24.c's default inputs -
 * never uses printf/stdio, safe for the MCU build too. */
static void
run_known_case(void) {
  double got_cx = measure_capacitance_double(30000, 21300, 29500, 1000);
  double got_lin = measure_inductance_double(30000, 21300, 29500, 1000);
  result_Cx_x100 = (uint32_t)(got_cx * 100);
  result_Lin_x100 = (uint32_t)(got_lin * 100);
  done = 1;
}

#ifndef HOST_TEST
/* MCU build: no stdio - a simulator reads result_Cx_x100/
 * result_Lin_x100 back by symbol name after `done` goes nonzero. Also
 * what compare_sizes.sh actually builds - this is the path known to
 * overflow 16F876A's flash under SDCC (software double library), see
 * TODO.md. */
void
main(void) {
  run_known_case();
  for (;;) {
    /* halt point - gpsim/MDB breaks here on `done` or a PC-range breakpoint */
  }
}
#else
#include "common.h"

int
main(void) {
  int trial;
  stats_t cx_stats = {0, 0, 0, 0.0};
  stats_t lin_stats = {0, 0, 0, 0.0};

  /* the specific case tests/test_float24.c's embedded build ships as
   * its default inputs, so the gpsim round-trip has a known-good
   * expected answer to compare against. */
  run_known_case();
  printf("known case F1=30000 F2=21300 F3=29500 CCal=1000: Cx_x100=%lu  Lin_x100=%lu\n",
         (unsigned long)result_Cx_x100, (unsigned long)result_Lin_x100);

  srand(42);
  for (trial = 0; trial < 200000; trial++) {
    trial_t t;
    double got;
    gen_trial(&t);
    if (trial_degenerate(&t))
      continue;
    got = measure_capacitance_double(t.F1, t.F2, t.F3, t.CCal);
    stats_record(&cx_stats, t.Cx_ref, got, 0, 0.001);
    got = measure_inductance_double(t.F1, t.F2, t.F3, t.CCal);
    stats_record(&lin_stats, t.Lin_ref, got, 0, 0.001);
  }
  /* Self-consistency only (same formula, same math) - should be ~exact;
   * any drift here would mean the two code paths above diverged from
   * common.h's own gen_trial() reference by more than floating-point
   * noise. */
  stats_print("Cx (double, self-check)", &cx_stats, 0.001);
  stats_print("Lin (double, self-check)", &lin_stats, 0.001);
  return 0;
}
#endif /* HOST_TEST */

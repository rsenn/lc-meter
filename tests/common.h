#ifndef TESTS_COMMON_H
#define TESTS_COMMON_H

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

/* Shared synthetic-trial generator + error-stats accumulator for the
 * three Thomson-formula implementations. Kept host-only (uses double,
 * printf) - this is test scaffolding, never shipped to a chip. */

#define GATE_PERIOD_MS 100.0
#define PI_D 3.14159265358979323846

typedef struct {
  double F1, F2, F3, CCal;
  double Cx_ref, Lin_ref;
} trial_t;

/* F1 = baseline, F2 = ~0.55-0.85*F1 (realistic calibration-cap shift,
 * per VK3BHR's own "F2 should be about 71% of F1"), F3 swept across
 * the full 0.10-1.00*F1 range (the actual "unknown value" axis) -
 * matches the sweep used to derive the numbers in TODO.md. */
static void
gen_trial(trial_t *t) {
  double num, den;
  t->F1 = 20000 + (rand() % 20000);
  t->F2 = t->F1 * (0.55 + (rand() % 3000) / 10000.0);
  t->F3 = t->F1 * (0.10 + (rand() % 9000) / 10000.0);
  if (t->F2 > t->F1)
    t->F2 = t->F1;
  if (t->F3 > t->F1)
    t->F3 = t->F1;
  t->CCal = 1000.0;

  t->Cx_ref = (t->F2 * t->F2 * (t->F1 * t->F1 - t->F3 * t->F3) * t->CCal) /
              (t->F3 * t->F3 * (t->F1 * t->F1 - t->F2 * t->F2));

  num = ((t->F1 * t->F1) - (t->F3 * t->F3)) * ((t->F1 * t->F1) - (t->F2 * t->F2)) *
        (GATE_PERIOD_MS * GATE_PERIOD_MS);
  den = 4 * PI_D * PI_D * t->F1 * t->F1 * t->F2 * t->F2 * t->F3 * t->F3 * t->CCal;
  t->Lin_ref = (num / den) * 1e15; /* nH */
}

/* true if F2/F3 are too close to F1 for gen_trial's own reference to
 * be meaningful (division by ~0) - skip these, they're not a fair test
 * of any implementation. */
static int
trial_degenerate(const trial_t *t) {
  return t->F2 >= t->F1 - 1 || t->F3 < 1;
}

typedef struct {
  int total, big, faults;
  double max_rel;
} stats_t;

static void
stats_record(stats_t *s, double ref, double got, int fault, double big_threshold) {
  double rel;
  s->total++;
  if (fault) {
    s->faults++;
    return;
  }
  if (ref <= 0.01)
    return; /* reference itself too small to compare meaningfully */
  rel = fabs(got - ref) / ref;
  if (rel > s->max_rel)
    s->max_rel = rel;
  if (rel > big_threshold)
    s->big++;
}

static void
stats_print(const char *label, const stats_t *s, double big_threshold) {
  printf("%s: total=%d faults=%d big(>%.0f%%)=%d max_rel=%.6f\n", label, s->total, s->faults,
         big_threshold * 100.0, s->big, s->max_rel);
}

#endif /* !defined(TESTS_COMMON_H) */

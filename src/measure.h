#ifndef MEASURE_H
#define MEASURE_H

#include "../lib/typedef.h"

#ifdef USE_FIXED
extern uint16_t F1, F2, F3;
extern uint32_t CCal;
#else
extern double F1, F2, F3, CCal;
#endif

void calibrate(void);
uint16_t measure_freq(void);
void measure_capacitance(uint16_t);
void measure_inductance(uint16_t);

#endif // MEASURE_H

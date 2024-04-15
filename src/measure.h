#ifndef MEASURE_H
#define MEASURE_H

#include "../lib/typedef.h"

void calibrate(void);
uint16_t measure_freq(void);
void measure_capacitance(uint16_t);
void measure_inductance(uint16_t);

#endif // MEASURE_H

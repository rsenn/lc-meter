#ifndef MEASURE_H
#define MEASURE_H

#include "../lib/typedef.h"

void calibrate(void);
unsigned short measure_freq(void);
void measure_capacitance(void);
void measure_inductance(void);

#endif // MEASURE_H

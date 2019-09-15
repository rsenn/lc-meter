#ifndef PICLIB_LEDSENSE_H
#define PICLIB_LEDSENSE_H

#include "typedef.h"

void ledsense_emit(bool on);
void ledsense_charge(void);
uint16_t ledsense_read(void);
void ledsense_loop(void);

#endif

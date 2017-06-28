#ifndef PICLIB_LEDSENSE_H
#define PICLIB_LEDSENSE_H

#include "typedef.h"

void ledsense_emit(BOOL on);
void ledsense_charge(void);
uint16_t ledsense_read(void);
void ledsense_loop(void);

#endif
 


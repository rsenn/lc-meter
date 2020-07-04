#ifndef FREQ_METER_H
#define FREQ_METER_H

#include "lib/device.h"
#include "lib/oscillator.h"
#include "lib/typedef.h"
#include "lib/const.h"

#define LED_PIN LATC3
#define LED_TRIS TRISC3

#define INIT_LED() TRISC &= ~(1 << 3);
#define SET_LED(b) do { if(b) LATC |= (1 << 3); else LATC &= ~(1 << 3); } while(0);

#endif // defined(FREQ_METER_H)

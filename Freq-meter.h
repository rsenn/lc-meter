#ifndef FREQ_METER_H
#define FREQ_METER_H

#include "lib/device.h"
#include "lib/oscillator.h"
#include "lib/typedef.h"
#include "lib/const.h"

#define LED_PIN OUTC3
#define LED_TRIS TRISC3

#define INIT_LED() LED_TRIS = OUTPUT
#define SET_LED(b) LED_PIN = ((b) == 0)

#endif // defined(FREQ_METER_H)

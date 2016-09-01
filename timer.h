#ifndef TIMER_H
#define TIMER_H 1

#include "types.h"

/* ----------------------- Timer 0 ----------------------- */
#if USE_TIMER_0
extern volatile uint16 tmr0_overflow;

void setup_timer0();
#endif // USE_TIMER_0

/* ----------------------- Timer 1 ----------------------- */
#if USE_TIMER_1
extern volatile uint16 tmr1_overflow;

void setup_timer1();
#endif // USE_TIMER_1

/* ----------------------- Timer 2 ----------------------- */
#if USE_TIMER_2
extern volatile uint16 tmr2_overflow;

void setup_timer2();
#endif // USE_TIMER_2

#endif // defined TIMER_H
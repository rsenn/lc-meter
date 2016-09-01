#ifndef TIMER_H
#define TIMER_H 1

#include "types.h"
#include "device.h"

#define PRESCALE_1_1  0b000
#define PRESCALE_1_2  0b001
#define PRESCALE_1_4  0b010
#define PRESCALE_1_8  0b011
#define PRESCALE_1_16 0b100
#define PRESCALE_1_32 0b101

#define POSTSCALE_1_1   0
#define POSTSCALE_1_2   1
#define POSTSCALE_1_3   2
#define POSTSCALE_1_4   3
#define POSTSCALE_1_5   4
#define POSTSCALE_1_6   5
#define POSTSCALE_1_7   6
#define POSTSCALE_1_8   7
#define POSTSCALE_1_9   8
#define POSTSCALE_1_10  9
#define POSTSCALE_1_11 10
#define POSTSCALE_1_12 11
#define POSTSCALE_1_13 12
#define POSTSCALE_1_14 13
#define POSTSCALE_1_15 14
#define POSTSCALE_1_16 15

/* ----------------------- Timer 0 ----------------------- */
#if USE_TIMER_0
extern volatile uint16 tmr0_overflow;

#ifndef TMR0_PRESCALER 
#define TMR0_PRESCALER PRESCALE_1_1
#endif

#define TMR0_FREQ (OSC_4/(1<<(TMR0_PRESCALER)))
#define TMR0_TICK_US (1000000/TMR0_FREQ)
#define TMR0_INTERVAL_US (1000000*256/TMR0_FREQ)
#define TMR0_INTERVAL_MS (1000*256/TMR0_FREQ)

void setup_timer0();
#endif // USE_TIMER_0

/* ----------------------- Timer 1 ----------------------- */
#if USE_TIMER_1
extern volatile uint16 tmr1_overflow;

#ifndef TMR1_PRESCALER 
#define TMR1_PRESCALER PRESCALE_1_1
#endif

#define TMR1_FREQ (OSC_4/(1<<(TMR1_PRESCALER)))
#define TMR1_TICK_US (1000000/TMR1_FREQ)
#define TMR1_INTERVAL_US (1000000*65536/TMR1_FREQ)
#define TMR1_INTERVAL_MS (1000*65536/TMR1_FREQ)

void setup_timer1();
#endif // USE_TIMER_1

/* ----------------------- Timer 2 ----------------------- */
#if USE_TIMER_2
extern volatile uint16 tmr2_overflow;

#ifndef TMR2_PRESCALER 
#define TMR2_PRESCALER PRESCALE_1_1
#endif

#ifndef TMR2_POSTSCALER 
#define TMR2_POSTSCALER POSTSCALE_1_1
#endif

#define TMR2_FREQ (OSC_4/(1<<(TMR2_PRESCALER>>1))/(TMR2_POSTSCALER+1))
#define TMR2_TICK_US (1000000/TMR2_FREQ)
#define TMR2_INTERVAL_US (1000000*256/TMR2_FREQ)
#define TMR2_INTERVAL_MS (1000*256/TMR2_FREQ)

void setup_timer2();
#endif // USE_TIMER_2

#endif // defined TIMER_H
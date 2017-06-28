#ifndef PICLIB_TIMER_H
#define PICLIB_TIMER_H 1

#include "typedef.h"
#include "device.h"

#define PRESCALE_1_1    0b000
#define PRESCALE_1_2    0b001
#define PRESCALE_1_4    0b010
#define PRESCALE_1_8    0b011
#define PRESCALE_1_16   0b100
#define PRESCALE_1_32   0b101
#define PRESCALE_1_64   0b110
#define PRESCALE_1_128  0b111
#define PRESCALE_1_256 0b1000
#define PRESCALE_MASK 0b1111

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
#if USE_TIMER0

#define TIMER0_FREQ (OSC_4/(1<<(TIMER0_PRESCALER)))
#define TIMER0_INTERVAL (TIMER0_FREQ/256)
#define TIMER0_TICK_US (1000000/TIMER0_FREQ)
#define TIMER0_INTERVAL_US (1000000*256/TIMER0_FREQ)
#define TIMER0_INTERVAL_MS (1000*256/TIMER0_FREQ)

#define TIMER0_INTERRUPT_FLAG T0IF
#define TIMER0_INTERRUPT_ENABLE T0IE

#define TIMER0_FLAGS_INTR   0x80
#define TIMER0_FLAGS_EXTCLK 0x40

#define TIMER0_VALUE TMR0 
#define TIMER0_BITS 8

void timer0_init(uint8_t prescale);
#endif // USE_TIMER0

/* ----------------------- Timer 1 ----------------------- */
#if USE_TIMER1

#define TIMER1_FREQ (OSC_4/(1<<(TIMER1_PRESCALER)))
#define TIMER1_TICK_US (1000000/TIMER1_FREQ)
#define TIMER1_INTERVAL_US (1000000*65536/TIMER1_FREQ)
#define TIMER1_INTERVAL_MS (1000*65536/TIMER1_FREQ)

#define TIMER1_INTERRUPT_FLAG TMR1IF
#define TIMER1_INTERRUPT_ENABLE TMR1IE

#define TIMER1_FLAGS_INTR   0x80
#define TIMER1_FLAGS_EXTCLK 0x40
#define TIMER1_FLAGS_SYNC   0x20

void timer1_init(uint8_t ps_mode);

#ifdef TMR1
#define TIMER1_VALUE TMR1 
#else
#define TIMER1_VALUE ((TMR1H << 8)|TMR1L)
#endif
#define TIMER1_BITS 16

#endif // USE_TIMER1

/* ----------------------- Timer 2 ----------------------- */
#if USE_TIMER2

#ifndef TIMER2_POSTSCALER 
#define TIMER2_POSTSCALER POSTSCALE_1_1
#endif

#define TIMER2_FREQ (OSC_4/(1<<(TIMER2_PRESCALER>>1))/(TIMER2_POSTSCALER+1))
#define TIMER2_TICK_US (1000000/TIMER2_FREQ)
#define TIMER2_INTERVAL_US (1000000*256/TIMER2_FREQ)
#define TIMER2_INTERVAL_MS (1000*256/TIMER2_FREQ)

#define TIMER2_INTERRUPT_FLAG TMR2IF
#define TIMER2_INTERRUPT_ENABLE TMR2IE

#define TIMER2_FLAGS_INTR   0x80

void timer2_init(uint8_t ps_mode);

#define TIMER2_VALUE TMR2
#define TIMER2_BITS 8

#endif // USE_TIMER2

#endif // defined PICLIB_TIMER_H
 


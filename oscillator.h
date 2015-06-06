#ifndef OSCILLATOR_H
#define OSCILLATOR_H 1

#define FOSC (unsigned long)20*1000*1000  /** CPU clock */
#define KHZ (unsigned long)(FOSC/1000)
#define OSC_4 (unsigned long)(FOSC/4)

#ifdef HI_TECH_C
# define _XTAL_FREQ FOSC
#endif

#endif // !defined(OSCILLATOR_H)

#ifndef __OSCILLATOR_H__
#define __OSCILLATOR_H__ 1

#define FOSC (long)20*1000*1000  /** CPU clock */
#define KHZ (long)(FOSC/1000)
#define OSC_4 (long)(FOSC/4)

#ifdef HI_TECH_C
# define _XTAL_FREQ FOSC
#endif

#endif // !defined(__OSCILLATOR_H__)

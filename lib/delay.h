#ifndef PICLIB_DELAY_H
#define PICLIB_DELAY_H

#include "device.h"
#include "typedef.h"
#include "tsmdelay.h"


#if !(defined(HI_TECH_C) || defined(MCHP_XC8) || defined(__XC))
/*#define _delay(C)                                                                                                      \
  do {                                                                                                                 \
    if(C < 750)                                                                                                        \
      DELAY_SMALL_TCY(C);                                                                                              \
    else                                                                                                               \
      DELAY_BIG_TCY(C);                                                                                                \
  } while(0)
#define __delay_us(X)                                                                                                  \
  do {                                                                                                                 \
    if(US_CYCLES(X) < 750)                                                                                             \
      DELAY_SMALL_US(X);                                                                                               \
    else                                                                                                               \
      DELAY_BIG_US(X);                                                                                                 \
  } while(0)
#define __delay_ms(X)                                                                                                  \
  do {                                                                                                                 \
    dvars msec;                                                                                                        \
    SAVE_CYCLES_BIG(msec, US_CYCLES(X * 1000lu));                                                                      \
    CALL_CYCLES_BIG(msec);                                                                                             \
  } while(0)
#else*/
#define __delay_ms delay_ms
#define __delay_us delay_us
#endif

#if defined(__XC) || defined(HI_TECH_C)
#define delay_ms(n) __delay_ms(n)
#define delay_us(n) __delay_us(n)
#elif defined(SDCC)
void delay_ms(unsigned int milliseconds);
void delay_us(unsigned char microseconds);
#else
void delay_ms(uint16_t milliseconds);
void delay_us(uint16_t microseconds);
#endif

void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);

#endif
/* delay.c */

#ifndef PICLIB_DELAY_H
#define PICLIB_DELAY_H

#include "device.h"
#include "typedef.h"
#include "tsmdelay.h"

#define TCY_PER_SECOND ((long)_XTAL_FREQ / 4)
#define TCY_PER_MILLISECOND ((long)TCY_PER_SECOND / 1000)
#define TCY_PER_MICROSECOND ((long)TCY_PER_MILLISECOND / 1000)

#define KTCY_PER_SECOND ((long)TCY_PER_SECOND / 1000)
#define KTCY_PER_MILLISECOND ((long)KTCY_PER_SECOND / 1000)

#if !(defined(HI_TECH_C) || defined(MCHP_XC8))
#define _delay(C)  do { if(C < 750) DELAY_SMALL_TCY(C); else DELAY_BIG_TCY(C); } while(0)
#define __delay_us(X) do { if(US_CYCLES(X) < 750) DELAY_SMALL_US(X); else  DELAY_BIG_US(X); } while(0)
#define __delay_ms(X) do { dvars msec; SAVE_CYCLES_BIG(msec, US_CYCLES(X*1000lu)); CALL_CYCLES_BIG(msec); } while(0)
#else
#endif

void delay_ms(uint16_t milliseconds);
void delay_us(uint16_t microseconds);

void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);

#endif
/* delay.c */
 


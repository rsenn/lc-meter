#ifndef __DELAY_H__
#define __DELAY_H__

#include "types.h"
#include "oscillator.h"
#include "tsmdelay.h"

#ifdef HI_TECH_C
#include <pic.h>
#endif


#define TCY_PER_SECOND ((long)FOSC / 4)
#define TCY_PER_MILLISECOND ((long)TCY_PER_SECOND / 1000)
#define TCY_PER_MICROSECOND ((long)TCY_PER_MILLISECOND / 1000)

#define KTCY_PER_SECOND ((long)TCY_PER_SECOND / 1000)
#define KTCY_PER_MILLISECOND ((long)KTCY_PER_SECOND / 1000)

#ifndef HI_TECH_C
#define _delay(C)  do { if(C < 750) DELAY_SMALL_TCY(C); else DELAY_BIG_TCY(C); } while(0)
#define __delay_us(X) do { if(US_CYCLES(X) < 750) DELAY_SMALL_US(X); else  DELAY_BIG_US(X); } while(0)
#define __delay_ms(X) do { dvars msec; SAVE_CYCLES_BIG(msec, US_CYCLES(X*1000lu)); CALL_CYCLES_BIG(msec); } while(0)
#else
#endif

void delay_ms(uint16 milliseconds);
void delay_us(uint16 microseconds);

void Delay100TCYx(uint8);
void Delay10KTCYx(uint8);
void Delay10TCYx(uint8);
void Delay1KTCYx(uint8);

#endif
/* delay.c */

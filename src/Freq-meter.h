#ifndef FREQ_METER_H
#define FREQ_METER_H

#include "device.h"
#include "oscillator.h"

#ifdef HI_TECH_C
# include <htc.h>  // Required to interface with delay routines
# include <pic.h>
#ifndef nRBPU
volatile uint8_t           OPTION_REG          @ 0x081;

volatile bit nRBPU               @((unsigned)&OPTION_REG * 8) + 7;
//#define nRBPU OPTION_REGbits.nRBPU
#endif
# define NOT_RBPU nRBPU
#endif

#if !defined(HI_TECH_C) && !defined(_BOOSTC) && !defined(__MIKROC_PRO_FOR_PIC__)
# include <pic16f876a.h>
#endif

#ifdef SDCC
#define NOP() __asm("NOP")
#endif

#include "typedef.h"
#include "const.h"

#define LED_PIN RA2 = RC3
#define LED_TRIS TRISA2 = TRISC3

#endif // defined(FREQ_METER_H)

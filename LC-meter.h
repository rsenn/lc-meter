#ifndef LC_METER_H
#define LC_METER_H

#include "device.h"
#include "oscillator.h"

#ifdef HI_TECH_C
# include <htc.h>  // Required to interface with delay routines
# include <pic.h>
#ifndef nRBPU
volatile unsigned char           OPTION_REG          @ 0x081;

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

#include "types.h"
#include "const.h"

#include "lcd44780.h"
///#include "lcd3310.h"

#define Ccal          1000    //pF
#define gate_period   100      //ms
#define pi            3.14159
#define LC_select     RC4      //L or C select (from DPDT switch)
#define lc_tris()     TRISC4 = INPUT  //as input
#define add_ccal()    RC5 = HIGH    //relay on
#define remove_ccal() RC5 = LOW    //relay off
#define relay_tris()  TRISC5 = OUTPUT  //as output to drive the relay coil

//#ifdef HI_TECH_C
# define WITH_LCD 1
//#endif

#define LED_PIN RA2
#define LED_TRIS TRISA2

uint16 measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(uint16 period_10ms);


#endif // defined(LC_METER_H)
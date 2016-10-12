#ifndef MAIN_H
#define MAIN_H

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

#ifndef SDCC
#define float double
#endif

#include "types.h"
#include "const.h"

#include "lcd44780.h"
///#include "lcd3310.h"

#define M_4_PI_PI 39.47841760435743447527l
#define L_H 0.000330l
#define L_H_1 (1.0/L_H)
#define C_F  0.000000001l
#define C_MF 0.000001l
#define C_UF 0.001l
#define C_NF 1.0l
#define C_PF 1000.0l


#define C_CAL          1000    //pF
#define GATE_PERIOD   100      //ms
#define PI            3.14159
#define LC_SELECT     RC4      //L or C select (from DPDT switch)
#define LC_TRIS()     TRISC4 = INPUT  //as input
#define ADD_CCAL()    RC5 = HIGH    //relay on
#define REMOVE_CCAL() RC5 = LOW    //relay off
#define RELAY_TRIS()  TRISC5 = OUTPUT  //as output to drive the relay coil

//#ifdef HI_TECH_C
# define WITH_LCD 1
//#endif

#define LED_PIN RA2 = RC3
#define LED_TRIS TRISA2 = TRISC3

float measure_freq(void);
float measure_freq_tmr1(void) ;
void calibrate(void);
float calc_capacitance(float);
float calc_inductance(float);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(uint16_t period_10ms);


#endif // defined(MAIN_H)
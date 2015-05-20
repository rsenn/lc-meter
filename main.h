#ifndef __MAIN_H__
#define __MAIN_H__

#include "device.h"
#include "oscillator.h"

#ifdef HI_TECH_C
# include <htc.h>  // Required to interface with delay routines
# define NOT_RBPU nRBPU
#else
# include <pic16f876a.h>
#endif

#include "types.h"
#include "lcd3310.h"

#define Ccal          1000    //pF
#define gate_period   100      //ms
#define pi            3.14159
#define LC_select     RB0      //L or C select (from DPDT switch)
#define lc_tris()     TRISB0 = 1  //as input
#define add_ccal()    RC0 = 1    //relay on
#define remove_ccal() RC0 = 0    //relay off
#define relay_tris()  TRISC0 = 0  //as output to drive the relay coil

//#define WITH_LCD 1

double F1, F2, F3;

void initialize(void);
unsigned int measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(unsigned int period_10ms);


#endif // defined(__MAIN_H__)

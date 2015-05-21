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
#include "const.h"

#include "lcd44780.h"
///#include "lcd3310.h"

#define Ccal          1000    //pF
#define gate_period   100      //ms
#define pi            3.14159
#define LC_select     RC4      //L or C select (from DPDT switch)
#define lc_tris()     TRISC4 = 1  //as input
#define add_ccal()    RC5 = 1    //relay on
#define remove_ccal() RC5 = 0    //relay off
#define relay_tris()  TRISC5 = 0  //as output to drive the relay coil

//#ifdef HI_TECH_C
# define WITH_LCD 1
//#endif


void initialize(void);
unsigned int measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(unsigned int period_10ms);


#endif // defined(__MAIN_H__)

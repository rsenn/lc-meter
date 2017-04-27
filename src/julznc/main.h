#include <htc.h>	// Required to interface with delay routines
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif

#if (_HTC_VER_MINOR_ > 0 && _HTC_VER_MINOR_ < 80)
#define FOSC_HS HS
#define WDTE_OFF WDTDIS
#define PWRTE_ON PWRTEN
#define BOREN_ON BOREN
#endif

/*#ifdef PIC18
#else
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_ON);
#endif*/
#include "config-bits.h"

#include "lcd3310.h"

#define Ccal			1000		//pF
#define gate_period		100			//ms
#define pi				3.14159
#define LC_select		RB0			//L or C select (from DPDT switch)
#define lc_tris()		TRISB0 = 1	//as input
#define add_ccal()		RC0 = 1		//relay on
#define remove_ccal()	RC0 = 0		//relay off
#define relay_tris()	TRISC0 = 0	//as output to drive the relay coil

double F1, F2, F3;

void initialize(void);
unsigned int measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(unsigned int period_10ms);




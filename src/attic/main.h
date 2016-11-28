#include <htc.h>	// Required to interface with delay routines
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif
//__CONFIG(HS & WDTDIS & PWRTEN & BOREN);
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_ON & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF & CP_OFF);

#include "lcd3310.h"

#define Ccal			1000		//pF
#define gate_period		100			//ms
#define pi				3.14159
#define LC_select		RB4			//L or C select (from DPDT switch)
#define lc_tris()		TRISC4 = 1	//as input
#define add_ccal()		RC5 = 1		//relay on
#define remove_ccal()	RC5 = 0		//relay off
#define relay_tris()	TRISC5 = 0	//as output to drive the relay coil

double F1, F2, F3;

void initialize(void);
unsigned int measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(unsigned int period_10ms);



#include <htc.h>	// Required to interface with delay routines
#ifndef _XTAL_FREQ
	#define _XTAL_FREQ 20000000
#endif
__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_ON);

#include "lcd3310.h"

#define Ccal			1000		//pF
#define gate_period		100			//ms
#define pi				3.14159
#define LC_select		RB0			//L or C select (from DPDT switch)
#define lc_tris()		TRISB0 = 1	//as input
#define add_ccal()		RC0 = 1		//relay on
#define remove_ccal()	RC0 = 0		//relay off
#define relay_tris()	TRISC0 = 0	//as output to drive the relay coil

#define LED_PIN         RA2
#define LED_TRIS        TRISA2
#define LED2_PIN         RC3
#define LED2_TRIS        TRISC3

#define INIT_LED() LED_TRIS=0
#define INIT_LED2() LED2_TRIS=0
#define SET_LED(b) LED_PIN=((b)==0)
#define SET_LED2(b) LED2_PIN=((b)==0)

double F1, F2, F3;

void initialize(void);
unsigned int measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(unsigned int period_10ms);



#ifndef LC_METER_H
#define LC_METER_H

#include "device.h"
#include "oscillator.h"
#include "typedef.h"
#include "const.h"

#ifdef HI_TECH_C
#include <htc.h> // Required to interface with delay routines
//# include <pic.h>
#ifndef nRBPU

// volatile bit nRBPU               @((unsigned)&OPTION_REG * 8) + 7;
//#define nRBPU OPTION_REGbits.nRBPU
#endif
#define NOT_RBPU nRBPU
#endif

#define C_CAL 1000      // pF
#define GATE_PERIOD 100 // ms
#define PI 3.14159265358979323846l

#if PIC18F2550
#define LC_SELECT (!!(OUTC & 0b1))                   // L or C select (from DPDT switch)
#define LC_TRIS() TRISC |= 0b1        // as input
#define ADD_CCAL() OUTC |= 0b100          // relay on
#define REMOVE_CCAL() OUTC &= ~0b100          // relay off
#define RELAY_TRIS() TRISC &= ~(1 << 5) // as output to drive the relay coil

#else
#define LC_SELECT (!!(OUTC & 0b10000))                    // L or C select (from DPDT switch)
#define LC_TRIS() TRISC |= (1 << 4)      // as input
#define ADD_CCAL() OUTC |= (1 << 5)     // relay on
#define REMOVE_CCAL() OUTC &= ~(1 << 5) // relay off
#define RELAY_TRIS() TRISC &= ~(1 << 5)  // as output to drive the relay coil

#endif

#if PIC18_USB
#define LED_PIN OUTC1
#define LED_TRIS TRISC1
#else
#define LED_PIN OUTC3
#define LED_TRIS TRISC3
#endif

/*#define LED2_ANODE OUTC1
#define LED2_ANODE_TRIS TRISC1
*/

#define INIT_LED() TRISC &= ~0b00000010
#define SET_LED(b) OUTC &= ~0b00000010; OUTC |= (!!(b)) << 1;
/*
//#ifdef LED2_CATHODE
//#define SET_LED2(b)  LED2_ANODE=(!!(b)) ? HIGH : LOW, LED2_CATHODE=(!!(b)) ? LOW : HIGH
//#define INIT_LED2() LED2_ANODE_TRIS=OUTPUT,LED2_CATHODE_TRIS=OUTPUT
#else
//#define SET_LED2(b) LED2_ANODE=(!!(b))==0
//#define INIT_LED2() LED2_ANODE_TRIS=OUTPUT
#endif

*/
//#define TIMER0_PRESCALER PRESCALE_1_32
extern double F1, F2, F3, CCal;

void delay10ms(unsigned char period_10ms);

#endif // defined(LC_METER_H)

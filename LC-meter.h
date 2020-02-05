#ifndef LC_METER_H
#define LC_METER_H

#include "lib/oscillator.h"
#include "lib/typedef.h"
#include "lib/const.h"
#include "lib/device.h"
#include "lib/delay.h"

#ifdef HI_TECH_C
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

#if PIC16F628
#define NO_PORTC 1
#define LC_SELECT (!!(PORTA &(1 << 5))) // L or C select (from DPDT switch)
#define LC_TRIS() TRISA |=(1 << 5)      // as input
#define ADD_CCAL() OUTA |= (1 << 6)      // relay on
#define REMOVE_CCAL() OUTA &= ~(1 << 6)  // relay off
#define RELAY_TRIS() TRISA &= ~(1 << 7)    // as output to drive the relay coil
#elif PIC18F2550
#define NO_PORTC 0
#define LC_SELECT (!!(PORTC & 0b1))     // L or C select (from DPDT switch)
#define LC_TRIS() TRISC |= 0b1          // as input
#define ADD_CCAL() OUTC |= 0b100        // relay on
#define REMOVE_CCAL() OUTC &= ~0b100    // relay off
#define RELAY_TRIS() TRISC &= ~(1 << 5) // as output to drive the relay coil
#else
#define NO_PORTC 0
#define LC_SELECT (!!(PORTC & (1 << 4))) // L or C select (from DPDT switch)
#define LC_TRIS() TRISC |= (1 << 4)     // RC4 as input
#define ADD_CCAL() OUTC |= (1 << 5)     // RC5=1 relay on 
#define REMOVE_CCAL() OUTC &= ~(1 << 5) // RC5=0 relay off
#define RELAY_TRIS() TRISC &= ~(1 << 5) // as output to drive the relay coil

#endif

/*#define LED2_ANODE OUTC1
#define LED2_ANODE_TRIS TRISC1
*/
#ifdef __16f628
#define INIT_LED() TRISA &= ~(1 << 4)
#define SET_LED(b)                                                                                                     \
  OUTA &= ~(1 << 4);                                                                                                 \
  OUTA |= (!!(b)) << 4;
#else
#define INIT_LED() TRISC &= ~(1 << 2)
#define SET_LED(b)                                                                                                     \
  OUTC &= ~(1 << 2);                                                                                                 \
  OUTC |= (!!(b)) << 2;
#define TOGGLE_LED() OUTC ^= (1 << 2);
#endif

//#define TIMER0_PRESCALER PRESCALE_1_32
extern double F1, F2, F3, CCal;

void delay10ms(unsigned char period_10ms);

#endif // defined(LC_METER_H)

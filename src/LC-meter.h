#ifndef LC_METER_H
#define LC_METER_H

#include "device.h"
#include "oscillator.h"

#ifdef HI_TECH_C
#include <htc.h> // Required to interface with delay routines
//# include <pic.h>
#ifndef nRBPU

// volatile bit nRBPU               @((unsigned)&OPTION_REG * 8) + 7;
//#define nRBPU OPTION_REGbits.nRBPU
#endif
#define NOT_RBPU nRBPU
#endif

#if defined(__SDCC) || defined(SDCC)
#define NOP() __asm("NOP")
#endif

#include "typedef.h"
#include "const.h"

#define C_CAL 1000      // pF
#define GATE_PERIOD 100 // ms
#define PI 3.14159265358979323846l

#if PIC18F2550
#define LC_SELECT RC0                   // L or C select (from DPDT switch)
#define LC_TRIS() TRISC0 = INPUT        // as input
#define ADD_CCAL() RC2 = HIGH           // relay on
#define REMOVE_CCAL() RC2 = LOW         // relay off
#define RELAY_TRIS() TRISC &= ~(1 << 5) // as output to drive the relay coil

#else
#define LC_SELECT RC4                    // L or C select (from DPDT switch)
#define LC_TRIS() TRISC |= (1 << 4)      // as input
#define ADD_CCAL() PORTC |= (1 << 5)     // relay on
#define REMOVE_CCAL() PORTC &= ~(1 << 5) // relay off
#define RELAY_TRIS() TRISC &= ~(1 << 5)  // as output to drive the relay coil

#endif

#if PIC18_USB
#define LED_PIN RC1
#define LED_TRIS TRISC1
#else
#define LED_PIN RC3
#define LED_TRIS TRISC3
#endif

/*#define LED2_ANODE RC1
#define LED2_ANODE_TRIS TRISC1
*/

#define INIT_LED() LED_TRIS = OUTPUT
#define SET_LED(b) LED_PIN = ((b) == 0)
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

uint16_t measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(int16_t period_10ms);

#endif // defined(LC_METER_H)

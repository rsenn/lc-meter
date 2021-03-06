#ifndef CAP_METER_H
#define CAP_METER_H

#include "lib/device.h"
#include "lib/oscillator.h"

#ifdef HI_TECH_C
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

#include "lib/typedef.h"
#include "lib/const.h"

#define C_CAL 1000      // pF
#define GATE_PERIOD 100 // ms
#define PI 3.14159265358979323846l

#if PIC18F2550
#define LC_SELECT OUTC0              // L or C select (from DPDT switch)
#define LC_TRIS() TRISC0 = INPUT     // as input
#define ADD_CCAL() OUTC2 = HIGH      // relay on
#define REMOVE_CCAL() OUTC2 = LOW    // relay off
#define RELAY_TRIS() TRISC2 = OUTPUT // as output to drive the relay coil

#else
#define LC_SELECT OUTC4              // L or C select (from DPDT switch)
#define LC_TRIS() TRISC4 = INPUT     // as input
#define ADD_CCAL() OUTC5 = HIGH      // relay on
#define REMOVE_CCAL() OUTC5 = LOW    // relay off
#define RELAY_TRIS() TRISC5 = OUTPUT // as output to drive the relay coil

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

unsigned short measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(unsigned char period_10ms);

#endif // defined(CAP_METER_H)

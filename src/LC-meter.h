#ifndef LC_METER_H
#define LC_METER_H

#include "device.h"
#include "oscillator.h"

#ifdef HI_TECH_C
# include <htc.h>  // Required to interface with delay routines
//# include <pic.h>
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

#include "typedef.h"
#include "const.h"

#define C_CAL          1000    //pF
#define GATE_PERIOD   100      //ms
#define PI            3.14159
#define LC_SELECT     RC4      //L or C select (from DPDT switch)
#define LC_TRIS()     TRISC4 = INPUT  //as input
#define ADD_CCAL()    RC5 = HIGH    //relay on
#define REMOVE_CCAL() RC5 = LOW    //relay off
#define RELAY_TRIS()  TRISC5 = OUTPUT  //as output to drive the relay coil

#define LED_PIN RC3
#define LED_TRIS TRISC3

#define LED2_ANODE RC1
#define LED2_ANODE_TRIS TRISC1


#define INIT_LED() LED_TRIS=OUTPUT
#define SET_LED(b) LED_PIN=((b)==0)

#ifdef LED2_CATHODE
#define SET_LED2(b) { LED2_ANODE=(!!(b)) ? HIGH : LOW; LED2_CATHODE=(!!(b)) ? LOW : HIGH; }
#define INIT_LED2() { LED2_ANODE_TRIS=OUTPUT; LED2_CATHODE_TRIS=OUTPUT; }
#else
#define SET_LED2(b) { LED2_ANODE=(!!(b))==0; }
#define INIT_LED2() { LED2_ANODE_TRIS=OUTPUT; }
#endif


//#define TMR0_PRESCALER PRESCALE_1_32


uint16_t measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(uint16_t period_10ms);


#endif // defined(LC_METER_H)

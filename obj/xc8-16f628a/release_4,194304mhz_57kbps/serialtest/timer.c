#include <htc.h>
#include <pic_chip_select.h>
#line 27 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 149 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 184 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;
#include <xc.h>
#include <htc.h>
 
#include <stdbool.h>
#include <stdint.h>
#line 43 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
 
#line 33 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
extern volatile uint16_t tmr0_overflow;
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void setup_timer0();
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
extern volatile uint16_t tmr1_overflow;
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void setup_timer1(uint8_t ps);
 
#line 5 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
volatile uint16_t tmr0_overflow;

void setup_timer0()
{
  
  
T0CS = 0; 
  
  
  
  
  #line 22 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
PSA = (0 == 0); 
  #line 25 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
OPTION_REGbits.PS = 0 - 1;
#line 28 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
}
#line 33 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
volatile uint16_t tmr1_overflow;

void
setup_timer1(uint8_t ps)
{
  
tmr1_overflow = 0;
  
T1CONbits.T1CKPS = ps; 
  TMR1CS = 0; 
  T1OSCEN = 0;
  
  
TMR1 = 0;
  
T1CONbits.TMR1ON = 1;
#line 52 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
}
 

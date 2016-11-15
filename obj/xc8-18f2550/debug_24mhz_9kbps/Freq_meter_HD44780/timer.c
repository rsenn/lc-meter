#include <htc.h>
#include <pic18_chip_select.h>
#line 18 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
__attribute__((__unsupported__("The flash_write routine is no longer supported. Please use the peripheral library functions: WriteBytesFlash, WriteBlockFlash or WriteWordFlash"))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
#include <errata.h>
	
#line 41 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#line 160 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 162 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 164 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);
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
 
#line 5 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
volatile uint16_t tmr0_overflow;

void setup_timer0()
{
  
  
T0CS = 0; 
  
  
  
  
  #line 22 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
PSA = (0 == 0); 
  #line 25 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
T0CONbits.T0PS = 0 - 1;
#line 28 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
}
 

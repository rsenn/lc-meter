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
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
#line 68 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer0_init(unsigned char prescale);
#line 71 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer1_init(unsigned char ps_mode);
 
#line 6 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
void timer0_init(unsigned char ps_mode) {
  unsigned char prescaler = ps_mode & 0b1111;
  
TMR0 = 0;
  
  
T0CS = !!(ps_mode & 0x40); 
  
  
    
T0SE = 1; 
  
  #line 20 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
PSA = (prescaler == 0); 
  #line 23 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
if (prescaler > 0) {
T0CONbits.T0PS=(prescaler-1);
  } 
  TMR0IF = 0;
  TMR0IE = !!(ps_mode & 0x80);
}
#line 47 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
void
timer1_init(unsigned char ps_mode) {
   T1CKPS0 = (ps_mode & 0b1111) & 1; 
   T1CKPS1 = (ps_mode & 0b1111) >> 1; 
  
  
T1CONbits.TMR1CS = !!(ps_mode & 0x40); 
  
if (T1CONbits.TMR1CS) {
     #line 59 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
T1SYNC = !(ps_mode & 0x20);
    }
  #line 63 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
T1OSCEN = 0;
  
TMR1H = 0;
  TMR1L = 0;
   TMR1ON = 1;
  #line 70 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
TMR1IF = 0;
  TMR1IE = !!(ps_mode & 0x80);
}
 

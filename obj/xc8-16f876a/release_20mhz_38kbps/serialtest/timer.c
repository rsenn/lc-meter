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
  #line 27 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
OPTION_REG &= ~0b111;
  if (prescaler > 0) {
    OPTION_REG |= (prescaler - 1) & 0b111;
    
    
  #line 35 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
}
  
  
  TMR0IF = 0;
  TMR0IE = !!(ps_mode & 0x80);
}
#line 47 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
void
timer1_init(unsigned char ps_mode) {
   T1CKPS0 = (ps_mode & 0b1111) & 1; 
   T1CKPS1 = (ps_mode & 0b1111) >> 1; 
  
  
TMR1CS = !!(ps_mode & 0x40); 
  
if (TMR1CS) {
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
 

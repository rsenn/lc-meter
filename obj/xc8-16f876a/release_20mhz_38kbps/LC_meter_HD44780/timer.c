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
#line 63 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer0_init(uint8_t prescale);
#line 71 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer1_init(uint8_t ps_mode);
#line 95 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer2_init(uint8_t ps_mode);
 
#line 6 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
void timer0_init(uint8_t ps_mode) {
  uint8_t prescaler = ps_mode & 0b1111;
  
TMR0 = 0;
  
  
T0CS = !!(ps_mode & 0x40); 
  
  
    
T0SE = 1; 
  
  #line 20 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
PSA = (prescaler == 0); 
  
OPTION_REG &= ~0b111;
  if (prescaler > 0) {
    OPTION_REG |= (prescaler - 1) & 0b111;
    
    
  #line 30 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
}
  
  
  
TMR0IF = 0;
  TMR0IE = !!(ps_mode & 0x80);
}
#line 42 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
void
timer1_init(uint8_t ps_mode) {
  
T1CONbits.T1CKPS = ps_mode & 0b1111; 
  TMR1CS = !!(ps_mode & 0x40); 
  
if (TMR1CS)
    T1CONbits.T1SYNC = !(ps_mode & 0x20);
  
T1OSCEN = 0;
  
TMR1 = 0;
  
T1CONbits.TMR1ON = 1;
  
TMR1IF = 0;
  TMR1IE = !!(ps_mode & 0x80);
}
#line 67 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/timer.c"
void timer2_init(uint8_t ps_mode) {
  uint8_t ps = ps_mode & 0b1111;
  uint8_t postscaler = 0;
  
  
TOUTPS0 = postscaler & 1;
  TOUTPS1 = (postscaler >> 1) & 1;
  TOUTPS2 = (postscaler >> 2) & 1;
  T2CONbits.T2CKPS = ps >> 1; 
  
TMR2 = 0;
  
T2CONbits.TMR2ON = 1; 
  
TMR2IF = 0;
  TMR2IE = !!(ps_mode & 0x80);
}
 

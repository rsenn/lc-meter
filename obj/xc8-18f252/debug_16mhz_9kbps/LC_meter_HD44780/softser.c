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
 
 
#line 136 "C:/Users\\roman\\Documents\\lc-meter\\lib\\softser.h"
BOOL softser_poll(uint8_t ticks);
void softser_recv(void);

uint8_t softser_getch(void);
void softser_putch(uint8_t byte);
void softser_puts(const char * s);
void softser_puts2(uint8_t * s);
void softser_puthex(uint8_t v);
void softser_init(void);

extern uint8_t softser_rdata;
 
 
#line 33 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
extern volatile uint16_t tmr0_overflow;
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void setup_timer0();
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
extern volatile uint16_t tmr1_overflow;
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void setup_timer1(uint8_t ps);
 
#line 45 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/softser.c"
uint8_t softser_rdata; 
#line 48 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/softser.c"
void softser_init(void) {
  
  
  
  #line 56 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/softser.c"
setup_timer0(0);
  #line 65 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/softser.c"
TRISB0 = 1;
  TRISB1 = 0;
  do { LATB1 = 0^(1)^1; } while(0);
}
#line 75 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/softser.c"
BOOL
softser_poll(uint8_t bauds) {
  int i = bauds;
  
while(i--) {
    
    #line 83 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/softser.c"
TMR0 = (256 - ((((16000000)/4)/(1<<(0+1))/(38400)) + 1));
    while( TMR0&(1<<7) ) {
      if(((LATB0)^(1)^1))
        return 1;
    }
  }
  return 0;
}
#line 93 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/softser.c"
void
softser_recv(void) {
  
  
  
  
  
  uint8_t i;
  
i = 8; 
  
TMR0 = 256 - ((((16000000)/4)/(1<<(0+1))/(38400)) + 1) - ((((((16000000)/4)/(1<<(0+1))/(38400)) + 1)>>1) - 1); 
  while( TMR0&(1<<7) ); 
  
while(i) { 
    softser_rdata = (softser_rdata >> 1); 
    if(((LATB0)^(1)^1))
      softser_rdata &= ~(1<<7); 
    else
      softser_rdata |= (1<<7);
    i--;
    
TMR0 -= ((((16000000)/4)/(1<<(0+1))/(38400)) + 1); 
    while( TMR0&(1<<7) ); 
  }
  
TMR0 -= ((((16000000)/4)/(1<<(0+1))/(38400)) + 1); 
  while( TMR0&(1<<7) );

}
#line 125 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/softser.c"
uint8_t
softser_getch(void) {
  softser_rdata = 0;
  softser_recv();
  return softser_rdata;
}
#line 133 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/softser.c"
void
softser_putch(uint8_t data) {
  
  
  
  
  uint8_t i;
  
i = 8; 
  
do { LATB1 = 1^(1)^1; } while(0); 
  TMR0 = (256 - ((((16000000)/4)/(1<<(0+1))/(38400)) + 1)); 
  while( TMR0&(1<<7) ); 
  
while(i) { 
    if(data & 0x01)
      do { LATB1 = 0^(1)^1; } while(0); 
    else
      do { LATB1 = 1^(1)^1; } while(0);
    
data = (data >> 1); 
    i--;
    TMR0 -= ((((16000000)/4)/(1<<(0+1))/(38400)) + 1); 
    while( TMR0&(1<<7) ); 
  }
  
do { LATB1 = 0^(1)^1; } while(0); 
  TMR0 -= ((((16000000)/4)/(1<<(0+1))/(38400)) + 1); 
  while( TMR0&(1<<7) );
  
TMR0 -= ((((16000000)/4)/(1<<(0+1))/(38400)) + 1);
  while( TMR0&(1<<7) );

}

void softser_puts(const char * s) {
  while(*s)
    softser_putch(*s++);
}

void softser_puts2(uint8_t * s) {
  while(*s)
    softser_putch(*s++);
}

void softser_puthex(uint8_t v) {
  uint8_t c;
  
c = v >> 4;
  if(c > 9) {
    softser_putch('A' - 10 + c);
  } else {
    softser_putch('0' + c);
  }
  
c = v & 0x0F;
  if(c > 9) {
    softser_putch('A' - 10 + c);
  } else {
    softser_putch('0' + c);
  }
}
 

#include <htc.h>
#include <pic_chip_select.h>
#line 27 "/opt/microchip/xc8/v1.43/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 192 "/opt/microchip/xc8/v1.43/include/pic.h"
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;
#include <stdint.h>
#line 53 "/home/roman/Projects/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 79 "/home/roman/Projects/lc-meter/lib/timer.h"
void timer0_init(unsigned char);
#line 86 "/home/roman/Projects/lc-meter/lib/timer.h"
unsigned short timer0_read_ps(void);
#line 118 "/home/roman/Projects/lc-meter/lib/timer.h"
void timer1_init(unsigned char ps_mode);
#line 156 "/home/roman/Projects/lc-meter/lib/timer.h"
void timer2_init(uint8_t ps_mode);
#include <xc.h>
#line 25 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
void
timer0_init(uint8_t ps_mode) {
  uint8_t prescaler = ps_mode & 0b1111u;
  #line 30 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
TMR0 = 0;
  #line 40 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
OPTION_REG &= 0b11000000;
   
  
  #line 59 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
T0CS = (ps_mode & 0x20) ? 1 : 0;
  T0SE = (ps_mode & 0x10u) ? 1 : 0;
  
if(prescaler > 0) {
     PSA = prescaler > 0;
     OPTION_REGbits.PS = prescaler - 1;
  }
   
  #line 99 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
T0IE = (ps_mode & 0x80) ? 1 : 0;
}
#line 108 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
unsigned short
timer0_read_ps(void) {
  uint8_t prev = TMR0;
  uint16_t count = 0;
   T0CS = 1;
  #line 116 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
do {
     
    T0SE = 1;
    
__nop();
    __nop();
    
T0SE = 0;
    
__nop();
    __nop();
    
++count;
    
  
} while(prev == TMR0 && count <= 255);
  count = ((prev << 8) + (256 - count));
  return count;
}
#line 175 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
void
timer2_init(uint8_t ps_mode) {
  uint8_t ps = ps_mode & 0b1111u;
  uint8_t postscaler = 0u;
  
  
T2CON &= ~0b01111111;
  
T2CON |= (postscaler & 0b1111) << 3;
  T2CON |= (ps & 0b11); 
  
TMR2 = 0;
  
T2CON |= 0b100; 
  
  
PIR1 &= ~0b10;
  PIE1 = (!!(ps_mode & 0x80)) << 1;
}

#include <htc.h>
#include <pic_chip_select.h>
#line 28 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 152 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 154 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 193 "/opt/microchip/xc8/v1.45/include/pic.h"
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
#include <stdint.h>
#line 53 "/home/roman/Dokumente/Sources/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 72 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer0_init(unsigned char);
#line 79 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
unsigned short timer0_read_ps(void);
#line 111 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer1_init(unsigned char ps_mode);
#line 149 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer2_init(uint8_t ps_mode);
#include <xc.h>
#line 25 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/timer.c"
void
timer0_init(uint8_t ps_mode) {
  uint8_t prescaler = ps_mode & 0b1111;
  #line 30 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/timer.c"
TMR0 = 0;
  
  #line 42 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/timer.c"
T0CS = (ps_mode & 0x20) ? 1 : 0;
  T0SE = (ps_mode & 0x10) ? 1 : 0;
  
if(prescaler > 0) {
     PSA = prescaler > 0;
     OPTION_REGbits.PS = prescaler - 1;
  }
   TMR0IF = 0;
  #line 75 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/timer.c"
T0IE = (ps_mode & 0x80) ? 1 : 0;
}

unsigned short
timer0_read_ps(void) {
  uint8_t prev = TMR0;
  uint16_t count = 0;
   T0CS = 1;
  #line 85 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/timer.c"
do {
     
     T0SE = 1;
    
__nop();
    __nop();
     T0SE = 0;
    #line 94 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/timer.c"
__nop();
    __nop();
    
++count;
    
  
} while(prev == TMR0 && count <= 255);
  
count = ((prev << 8) + (256 - count));
  return count;
}
#line 144 "/home/roman/Dokumente/Sources/lc-meter/obj/../lib/timer.c"
void
timer2_init(uint8_t ps_mode) {
  uint8_t ps = ps_mode & 0b1111;
  uint8_t postscaler = 0;
  
  
T2CON &= ~0b01111111;
  
T2CON |= (postscaler & 0b1111) << 3;
  T2CON |= (ps & 0b11); 
  
TMR2 = 0;
  
T2CON |= 0b100; 
  
  
PIR1 &= ~0b10;
  PIE1 = (!!(ps_mode & 0x80)) << 1;
}

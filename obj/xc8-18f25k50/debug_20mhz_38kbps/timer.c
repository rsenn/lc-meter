#include <htc.h>
#include <pic18_chip_select.h>
#line 18 "/opt/microchip/xc8/v1.43/include/pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);
#include <errata.h>
	
#line 42 "/opt/microchip/xc8/v1.43/include/pic18.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#line 135 "/opt/microchip/xc8/v1.43/include/pic18.h"
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
#line 155 "/opt/microchip/xc8/v1.43/include/pic18.h"
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
#line 163 "/opt/microchip/xc8/v1.43/include/pic18.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 165 "/opt/microchip/xc8/v1.43/include/pic18.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 167 "/opt/microchip/xc8/v1.43/include/pic18.h"
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);
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
  #line 42 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
T0CON = 0;
  #line 51 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
T0CON |= (!!(ps_mode & 0x40)) ? 0x40 : 0x00;
  
  
  #line 71 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
T0CON |= (!!(ps_mode & 0x20)) ? 0x20u : 0x00u;
  
  
T0CON |= (!!(ps_mode & 0x10u)) ? 0x10u : 0x00u;
  
  
T0CON &= (!!prescaler) ? ~0x08 : ~0x00;
  
T0CON &= ~0b111;
  
if(prescaler > 0) {
    T0CON |= (prescaler - 1) & 0b111;
    
    
  #line 88 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
}
  
  
  #line 95 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
T0CON |= 0x80;
   
  #line 99 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
T0IE = (ps_mode & 0x80) ? 1 : 0;
}
#line 108 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
unsigned short
timer0_read_ps(void) {
  uint8_t prev = TMR0;
  uint16_t count = 0;
   T0CONbits.T0CS = 1;
  #line 116 "/home/roman/Projects/lc-meter/obj/../lib/timer.c"
do {
     
    T0CONbits.T0SE = 1;
    
__nop();
    __nop();
    
T0CONbits.T0SE = 0;
    
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

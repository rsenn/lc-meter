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
 
 
#line 49 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
typedef struct dvars {
  uint8_t loop_x, loop_b, loop_c;
} dvars;
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
extern dvars dvar;
#line 77 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
void cycle_eater(void);
 
#line 22 "C:/Users\\roman\\Documents\\lc-meter\\lib\\delay.h"
void delay_ms(uint16_t milliseconds);
void delay_us(uint16_t microseconds);

void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);
 
#line 9 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
void
delay_ms(uint16_t milliseconds) {
  
  #line 17 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
Delay100TCYx((((milliseconds * 1000lu)*(((4194304)/1000)))/4000LU) / 100);
}
#line 21 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
void
delay_us(uint16_t microseconds) {
  
  #line 30 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
Delay10TCYx((((microseconds)*(((4194304)/1000)))/4000LU) / 10);
#line 33 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
}
#line 66 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
void
Delay100TCYx(uint8_t unit) {
  do {
    
_delay(100);
  } while(--unit != 0);
}
#line 81 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
void
Delay10KTCYx(uint8_t unit) {
  do {
    
_delay(10000);
  } while(--unit != 0);
}
#line 96 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
void
Delay10TCYx(uint8_t unit) {
  do {
    #line 101 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
_delay(10);
  } while(--unit != 0);
}
#line 114 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/delay.c"
void
Delay1KTCYx(uint8_t unit) {
  do {
    
_delay(1000);
  } while(--unit != 0);
}
 

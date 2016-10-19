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
 
 
#line 47 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd44780.h"
void lcd_init(char fourbitmode);
void lcd_begin(uint8_t l, uint8_t ds);
void lcd_no_autoscroll(void);
void lcd_autoscroll(void);
void lcd_right_to_left(void);
void lcd_left_to_right(void);
void lcd_scroll_display_right(void);
void lcd_scroll_display_left(void);
void lcd_blink();
void lcd_no_blink();
void lcd_cursor();
void lcd_no_cursor();
void lcd_display();
void lcd_no_display();
void lcd_clear();
void lcd_home();
void lcd_print_number(uint16_t n, uint8_t base, int8_t pad);
void lcd_print_float(float number, uint8_t digits);
void lcd_print(const char *string);

void lcd_set_cursor(uint8_t col, uint8_t row);
void lcd_putch(char value);
 
#line 46 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
uint8_t ser_getch(void);
void ser_putch(uint8_t byte);
void ser_puts(const char * s);
void ser_puts2(uint8_t * s);
void ser_puthex(uint8_t v);
void ser_init(void);
#line 55 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern uint8_t rxfifo[16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-16f876a.h"
#pragma config FOSC=XT, WDTE=OFF, PWRTE=ON, BOREN=ON, LVP=OFF, CPD=OFF, WRT=OFF, CP=OFF, DEBUG=OFF
 
 
#line 23 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
uint8_t control;
#line 28 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
INTERRUPT_HANDLER()
{
  TMR1H = 0; TMR1L = 0;
  GIE = 0;
  
control = 1;
  
CCP1IF = 0;
  GIE = 1;
}
#line 40 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
int initialize()
{
    TRISA = 0x00;
  TRISB = 0x08;
  CMCON = 0x07;
  
control = 0;
  PORTA = 0; PORTB = 0;
  
CCP1IE = 1;
  
CCP1CON = 0b00000110;
  
T1CON = 0b00100001;
  #line 56 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
ser_init();
  #line 59 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
GIE = 1;
  PEIE = 1;
  
  #line 67 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
lcd_init(true);
  lcd_begin(2, 1);
}
#line 73 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
int main()
{
  const uint8_t number[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F };
  uint8_t select[4] = {1, 2, 4, 8};
  uint32_t counter, value, remainder1, remainder2;
  float frequency;
  uint8_t a, i, display[5], data;
  
initialize();
  
for(;;) {
    
counter = 256 * CCPR1H + CCPR1L;
    
if(control == 1) frequency = 100000000 / counter;
    if(control == 0) frequency = 0;
    
if(counter < 10000) frequency = 0;
    
control = 0;
    
for(a = 0; a < 25; a++) {
      
value = (int)frequency;
      
display[1] = value / 1000;
      remainder1 = value - display[1] * 1000;
      
display[2] = remainder1 / 100;
      remainder2 = remainder1 - display[2] * 100;
      
display[3] = remainder2 / 10;
      display[4] = remainder2 - display[3] * 10;
      #line 108 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
for(i = 0; i < 4; i++) {
        PORTB = 0;
        PORTA = 0;
        
data = number[display[i + 1]];
        PORTB = data & 0x07;
        data = data << 1;
        PORTB = PORTB | (data & 0xF0);
        
PORTA = select[i];
        _delay((unsigned long)((3)*(20000000/4000.0)));
      }
    }
  }
}

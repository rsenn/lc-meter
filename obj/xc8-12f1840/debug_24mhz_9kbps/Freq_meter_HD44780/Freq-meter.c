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
 
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad);
 
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
 
#line 9 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config FOSC = INTOSC 
#line 10 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config WDTE = OFF 
#line 11 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config PWRTE = ON 
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config MCLRE = OFF 
#line 13 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config CP = OFF 
#line 14 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config CPD = OFF 
#line 15 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config BOREN = ON 
#line 16 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config CLKOUTEN= OFF 
#line 17 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config IESO = OFF 
#line 21 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config FCMEN = OFF 
#line 22 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config WRT = OFF 
#line 23 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config PLLEN = OFF 
#line 24 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config STVREN = OFF 
#line 25 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-12f1840.h"
#pragma config BORV = LO 
 
#line 24 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
uint8_t control;
#line 29 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
INTERRUPT_HANDLER()
{
  
if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; } if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; } };
  #line 35 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
if(CCP1IF) {
    TMR1H = 0; TMR1L = 0;
    GIE = 0;
    
control = 1;
    
CCP1IF = 0;
    GIE = 1;
  }
}
#line 47 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
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
  #line 63 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
ser_init();
  #line 66 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
GIE = 1;
  PEIE = 1;
  
  #line 74 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
lcd_init(true);
  lcd_begin(2, 1);
}
#line 80 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
int main()
{
  const uint8_t number[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F };
  uint8_t select[4] = {1, 2, 4, 8};
  uint32_t counter, value, remainder1, remainder2;
  float frequency;
  uint8_t a, i, display[5], data;
  
initialize();
  ser_puts("Freq-meter READY.\r\n");
  
for(;;) {
    static uint32_t prev_frequency = 0;
    
counter = 256 * CCPR1H + CCPR1L;
    
if(control == 1) frequency = 100000000 / counter;
    if(control == 0) frequency = 0;
    
if(counter < 10000) frequency = 0;
    
control = 0;
    #line 104 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
if(frequency != prev_frequency) {
      
format_number(ser_putch, frequency, 10, 0);
      ser_putch('\r');
      ser_putch('\n');
        
_delay((unsigned long)((3)*(24000000/4000.0)));
     
     prev_frequency = frequency; 
    }
  #line 142 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
}
}

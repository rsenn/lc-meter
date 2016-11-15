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
 
#line 4 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f25k22.h"
__config(___mkstr(__CONFIG), ___mkstr(pic18), ___mkstr( FOSC_HSHP));
__config(___mkstr(__CONFIG), ___mkstr(pic18), ___mkstr( BOREN_ON & PWRTEN_ON & WDTEN_OFF));
__config(___mkstr(__CONFIG), ___mkstr(pic18), ___mkstr( CCP2MX_PORTC1));
__config(___mkstr(__CONFIG), ___mkstr(pic18), ___mkstr( LVP_OFF));
__config(___mkstr(__CONFIG), ___mkstr(pic18), ___mkstr( CPD_OFF));
 
 
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
  CMCONbits.CM = 0x07;
  
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
        
_delay((unsigned long)((3)*(20000000/4000.0)));
     
     prev_frequency = frequency; 
    }
  #line 142 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/Freq-meter.c"
}
}

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
 
 
#include <htc.h>
#line 11 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
volatile unsigned char OPTION_REG @ 0x081;

volatile bit nRBPU @((unsigned)&OPTION_REG * 8) + 7;
#include <stdbool.h>
#include <stdint.h>
#line 43 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
 
 
#line 61 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
uint16_t measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(uint16_t period_10ms);
 
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
 
#line 33 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
extern volatile uint16_t tmr0_overflow;
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void setup_timer0();
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
extern volatile uint16_t tmr1_overflow;
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void setup_timer1(uint8_t ps);
 
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
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad);
#line 39 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
volatile uint16_t bres;
volatile uint16_t msecs;
volatile uint32_t seconds;
#line 45 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
float F1, F2, F3;

void initialize();
void loop();

void
put_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad );

interrupt isr()
{
  if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; } if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; } };
  #line 61 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
if(T0IF) {
    
bres += 256;
    
if(bres >= 5000) {
      bres -= 5000;
      msecs++;
      
RC3=((msecs < 500)==0);
    }
    if(msecs >= 1000) { 
      seconds++; 
      msecs -= 1000;
      
{ RC1=(!!(seconds&1))==0; };
    
}
    
    
    
    
    
T0IF = 0;
  }
}

void
main() {
  initialize();
  #line 95 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_set_cursor(0, 0);
  lcd_print("LC-meter");
  #line 110 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
PEIE = 1;
  GIE = 1;
  
for(;;)
    loop();
}

void
loop() {
  static BOOL led = 0;
  
delay_ms(100);
  
led = !led;
  RC1 = led;
  #line 128 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
softser_puts("XXXX\r\n");
 
#line 150 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
}
#line 161 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
initialize() {
 bres = msecs = seconds = 0;
  
   CM0 = 1;
   CM1 = 0;
   CM2 = 1;
 #line 170 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISA = 0b11001111;
  
 
TRISC4 = 1;
  nRBPU = 1; 
  #line 177 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
ser_init();
  #line 180 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISC5 = 0;
  #line 183 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
SSPEN = 0;
  
  #line 190 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_init(true);
  lcd_begin(2, 1);
  #line 194 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
setup_timer0();
  OPTION_REGbits.PS = 0b000;
  T0CS = 0;
  TMR0 = 0;
  T0IE = 1;
  T0IF = 0;
  #line 202 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISC3=0;
  { TRISC1=0; };
  #line 207 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
RC3=((1)==0);
  { RC1=(!!(1))==0; };
  #line 211 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
softser_init();
  setup_timer1(0);
  #line 216 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
PEIE = 1;
  GIE = 1;
}
#line 233 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
calibrate() {
}

void
measure_capacitance() {
}

void
measure_inductance() {
}

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
#include <xc.h>
#include <stdint.h>
#line 53 "/home/roman/Projects/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 49 "/home/roman/Projects/lc-meter/lib/tsmdelay.h"
typedef struct dvars {
  uint8_t loop_x, loop_b, loop_c;
} dvars;
#line 67 "/home/roman/Projects/lc-meter/lib/tsmdelay.h"
extern dvars dvar;
#line 77 "/home/roman/Projects/lc-meter/lib/tsmdelay.h"
void cycle_eater(void);
#line 47 "/home/roman/Projects/lc-meter/lib/delay.h"
void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);
#line 65 "/home/roman/Projects/lc-meter/LC-meter.h"
extern double F1, F2, F3, CCal;

void delay10ms(unsigned char period_10ms);
#line 48 "/home/roman/Projects/lc-meter/lib/lcd44780.h"
void lcd_init(char fourbitmode);
void lcd_begin(uint8_t l, uint8_t ds);
void lcd_no_autoscroll(void);
void lcd_autoscroll(void);
void lcd_right_to_left(void);
void lcd_left_to_right(void);
void lcd_scroll_print_right(void);
void lcd_scroll_print_left(void);
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
void lcd_puts(const char* string);

void lcd_gotoxy(uint8_t col, uint8_t row);
void lcd_putch(char value);
void lcd_send(uint8_t value, uint8_t mode);
#line 79 "/home/roman/Projects/lc-meter/lib/timer.h"
void timer0_init(unsigned char);
#line 86 "/home/roman/Projects/lc-meter/lib/timer.h"
unsigned short timer0_read_ps(void);
#line 118 "/home/roman/Projects/lc-meter/lib/timer.h"
void timer1_init(unsigned char ps_mode);
#line 156 "/home/roman/Projects/lc-meter/lib/timer.h"
void timer2_init(uint8_t ps_mode);
#line 48 "/home/roman/Projects/lc-meter/lib/ser.h"
extern uint8_t ser_rxfifo[(uint8_t)16];
extern volatile uint8_t ser_rxiptr, ser_rxoptr;
extern uint8_t ser_txfifo[(uint8_t)16];
extern volatile uint8_t ser_txiptr, ser_txoptr;
extern uint8_t ser_tmp;

char ser_isrx(void);
unsigned char ser_rxsize(void);
uint8_t ser_getch(void);
void ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char* s);
void ser_puts2(uint8_t* s);
void ser_puthex(uint8_t v);
void ser_init(void);

uint8_t ser_rxat(unsigned char at);
unsigned char ser_size(void);
#line 68 "/home/roman/Projects/lc-meter/lib/ser.h"
extern uint8_t ser_rxfifo[(uint8_t)16];
extern volatile uint8_t ser_rxiptr, ser_rxoptr;
extern uint8_t ser_txfifo[(uint8_t)16];
extern volatile uint8_t ser_txiptr, ser_txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
#line 6 "/home/roman/Projects/lc-meter/src/measure.h"
void calibrate(void);
unsigned short measure_freq(void);
void measure_capacitance(void);
void measure_inductance(void);
#line 6 "/home/roman/Projects/lc-meter/src/print.h"
extern const char logo_image[504];

void put_str(const char*);
void output_putch(char c);
void lcd_puts(const char*);
void print_digit(uint8_t line, uint8_t column, uint8_t digit);
void print_unit(uint8_t unit);
void print_reading(uint16_t measurement); 
void print_indicator(uint8_t indicate);
void print_print_float(float number, uint8_t digits);
void print_buffer(void);
#line 5 "/home/roman/Projects/lc-meter/lib/format.h"
typedef void (*putch_t)(char);

void format_number(putch_t fn, uint16_t n, uint8_t base, int8_t pad);
void format_xint32(putch_t fn, uint32_t x);
void format_double(putch_t fn, double num);
void format_float(putch_t fn, float num);
#line 9 "/home/roman/Projects/lc-meter/src/config-16f876a.h"
#pragma config FOSC = HS, LVP = OFF, CPD = OFF, BOREN = ON, WDTE = OFF, WRT = OFF, DEBUG = OFF
#line 47 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
volatile uint32_t bres; 
volatile uint16_t msecpart; 
volatile uint16_t led_cycle; 
volatile uint16_t led_interval; 
volatile uint32_t seconds, msecs; 
volatile uint32_t timer1of; 

static char mode = -1;
#line 63 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
void
delay10ms(unsigned char period_10ms) {
  
#line 68 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
}
#line 72 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
double F1, F2, F3, CCal;
void main();
void loop();
void testloop();
void initialize();
uint32_t milliseconds();

void put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad );

volatile uint16_t blink = 0;
#line 84 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
__interrupt void isr() {
  if(TMR2IF) {
    bres += 256;
    if(bres >= ((unsigned long)((double)((20000000) / 4) / 1000))) {
      bres -= ((unsigned long)((double)((20000000) / 4) / 1000));
      msecpart++;
      led_cycle++;
      
PORTC &= ~(1 << 2); PORTC |= (!!(led_cycle >= 0 && led_cycle < led_interval / 6)) << 2;;
      
      
if(msecpart >= 1000) {
        
        seconds++;
        msecpart -= 1000;
      }
    }
    
    TMR2IF = 0;
  }
  
if(RCIF) { ser_rxfifo[ser_rxiptr] = RCREG; ser_tmp = (ser_rxiptr + 1) & ((uint8_t)16 - 1); if(ser_tmp != ser_rxoptr) ser_rxiptr = ser_tmp; }; if(TXIF && TXIE) { TXREG = ser_txfifo[ser_txoptr]; ++ser_txoptr; ser_txoptr &= ((uint8_t)16 - 1); if(ser_txoptr == ser_txiptr) { TXIE = 0; }; TXIF = 0; };
#line 110 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
}
#line 115 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
void
main() {
  bres = msecpart = msecs = seconds = 0;
  mode = -1;
  
CCal = 1000;
  
led_cycle = 0;
  led_interval = 500;
  
  
  #line 131 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
CMCON = 0b00000101;
  TRISA = 0b11001111;
  #line 135 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
TRISB &= 0b00001111;
  
  
timer0_init(0b1000u | 0x20 | 0x40);
  timer2_init(0b100u | 0x80);
  
  #line 148 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
OPTION_REG &= ~0b100000;
  
  
  #line 154 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
TRISC = 0b10110011;
  #line 158 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
RC3 = 1;
  #line 161 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
TRISC &= ~(1 << 2);
  PORTC &= ~(1 << 2); PORTC |= (!!(1)) << 2;;
  
timer2_init(0b000u | 0x80);
  
  #line 171 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
lcd_init(1);
  lcd_begin(2, 1);
  #line 175 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
TRISC |= (1 << 4);
  TRISC &= ~(1 << 5);
  
PORTC &= ~(1 << 5);
  delay10ms(50);
  PORTC |= (1 << 5);
  delay10ms(50);
  PORTC &= ~(1 << 5);
  delay10ms(50);
  PORTC |= (1 << 5);
  delay10ms(50);
  PORTC &= ~(1 << 5);
  #line 189 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
ser_init();
  
  #line 196 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
INTCON |= 0xc0; 
  #line 202 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
lcd_gotoxy(0, 0);
  lcd_puts("LC-meter ");
  format_float(&lcd_putch, CCal);
  #line 211 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
delay10ms(200);
  #line 214 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
calibrate();
  #line 217 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
lcd_clear();
  
  #line 225 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
for(;;) {
    char new_mode = (!!(PORTC & (1 << 4)));
    
if(new_mode != mode) {
      
ser_puts(mode ? "- C (Unit: F) -" : "- L (Unit: H) -");
      ser_puts("\r\n");
      mode = new_mode;
    }
    #line 236 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
if(led_cycle >= led_interval)
      led_cycle = 0;
    
if(mode)
      measure_capacitance();
    else
      measure_inductance();
    
print_indicator(1);
    delay10ms(30);
    
print_indicator(0);
    delay10ms(20);
  }
}

void
testloop() {
  
static char led = 0;
  static uint16_t prev_s = 0;
  uint16_t s;
  
delay10ms(10);
  
INTCON &= ~0x80; 
  s = seconds;
  INTCON |= 0x80; 
  #line 273 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
lcd_gotoxy(10, 0);
  lcd_puts("      ");
  lcd_gotoxy(10, 0);
  format_number(&lcd_putch, s, 10, 5);
  #line 279 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
lcd_gotoxy(10, 1);
  lcd_puts("      ");
  lcd_gotoxy(10, 1);
  
  
lcd_gotoxy(0, 1);
  lcd_puts("     ");
  lcd_gotoxy(0, 1);
  lcd_puts("RC4=");
  #line 290 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
lcd_putch((!!(PORTC & (1 << 4))) != 0 ? '1' : '0');
  #line 294 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
if(s != prev_s) {
    
format_number(&ser_putch, s, 10, 0);
    
    ser_puts("\r\n");
    #line 301 "/home/roman/Projects/lc-meter/obj/../LC-meter.c"
prev_s = s;
  }
}

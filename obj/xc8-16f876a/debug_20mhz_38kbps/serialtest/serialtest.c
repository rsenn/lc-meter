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
#line 63 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 58 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
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
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\display.h"
extern const char logo_image[504];

void lcd_print(const char *);
void display_digit(uint8_t line, uint8_t column, uint8_t digit);
void display_unit(uint8_t unit);
void display_reading(uint16_t measurement); 
void indicator(uint8_t indicate);

void display_print_float(float number, uint8_t digits);
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(putchar_p putchar, uint16_t n, uint8_t base, int8_t pad);
 
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
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd44780.h"
void lcd_gotoxy(uint8_t col, uint8_t row);
char lcd_putch(char value);
 
#line 64 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
uint8_t ser_getch(void);
char ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char * s);
void ser_puts2(uint8_t * s);
void ser_puthex(uint8_t v);
void ser_init(void);
#line 74 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern uint8_t rxfifo[16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
 
#line 136 "C:/Users\\roman\\Documents\\lc-meter\\lib\\softser.h"
bool softser_poll(uint8_t ticks);
void softser_recv(void);

uint8_t softser_getch(void);
void softser_putch(uint8_t byte);
void softser_puts(const char * s);
void softser_puts2(uint8_t * s);
void softser_puthex(uint8_t v);
void softser_init(void);

extern uint8_t softser_rdata;
 
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer0_init(uint8_t prescale);
#line 71 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer1_init(uint8_t ps_mode);
 
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef uint8_t len_t;
#line 15 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef struct {
  char x[16];
  unsigned p:4; 
  unsigned n:4; 
  putchar_p op; 
} buffer_t;
#line 27 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
extern buffer_t buffer;

void buffer_init(putchar_p op);
char buffer_flush();
char buffer_putch(char ch);
char buffer_put(const char *x, len_t len);
char buffer_puts(const char *x);
#include <ctype.h>
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-16f876a.h"
#pragma config FOSC=HS, WDTE=OFF, PWRTE=ON, BOREN=ON, LVP=OFF, CPD=OFF, WRT=OFF, CP=OFF
#line 30 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
static char
output_putch(char c) {
  lcd_putch(c);
  ser_putch(c);
  return 1;
}
#line 40 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
buffer_t buffer = { {0}, 0, 0, output_putch };

void loop();
void put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad);

volatile bool run = 1, got_byte = 0;
volatile uint16_t bres;

volatile uint16_t msecs;
volatile uint32_t seconds;

volatile uint8_t serial_in = 0;
volatile uint8_t led_state = 0;

volatile uint16_t tmr1_overflows;

interrupt isr() {
  if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; }; if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; }; TXIF = 0; };
  #line 63 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
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
    #line 78 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
}
    
    
    #line 83 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
T0IF = 0;
  }
  
if(TMR1IF) {
    tmr1_overflows++;
    
TMR1IF = 0;
  }
  
if(RCIF) {
    
    RCIF = 0;
  }
}

void flash_busy_led(uint16_t duration) {
  
  
}
#line 120 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
int main() {
  run = bres = msecs = seconds = tmr1_overflows = 0;
  #line 132 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
ser_init();
  #line 136 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
nRBPU = 1;
  #line 140 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
PORTA = 0;
  #line 143 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
ADON = 1;
  ADCON1 = 0b00000110;
  TRISA = 0x11000111;
  #line 148 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
RA3 = RA5 = 1;
  
  
timer0_init(0b000);
  T0IF = 0;
  T0IE = 1;
  timer1_init(0b000);
  TMR1IF = 0;
  TMR1IE = 1;
  #line 159 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
lcd_init(1);
  lcd_begin(2, 1);
  lcd_clear();
  
lcd_gotoxy(0, 0);
  
lcd_print_number(0x41, 16, -1);
   #line 169 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
SSPEN = 0;
  #line 173 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
TRISC &= ~0b1100;
  TRISC3=0;
  #line 177 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
RC3=((1)==0);
  #line 180 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
PEIE = 1;
  GIE = 1;
  
RCIF = 0;
  RCIE = 1;
  
run = 1;
  #line 194 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
ser_puts("ZZZZ\r\n");
  
  #line 202 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
for (;;)
    loop();
}

void loop() {
  char update_com, update_midi, echo_mode = 0;
  uint8_t c;
  
update_com = 0, update_midi = 0;
  
static int32_t prev = -1;
  
if(seconds != prev) {
    #line 221 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
put_number(ser_putch, seconds, 10, -5);
    ser_putch('\r');
    ser_putch('\n');
    prev = seconds;
  }
  
  #line 230 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(ser_isrx()) {
    c = ser_getch();
    
if(echo_mode) {
      ser_putch(' ');
      ser_puthex(c);
      ser_putch(' ');
    } else {
    }
    #line 243 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
update_com = 1;
    
if(c == 0x1b || c == '\t')
      echo_mode = !echo_mode;
  }
  #line 250 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(update_com) {
    lcd_gotoxy(12, 0);
    lcd_print("COM:");
    lcd_putch(c);
    update_com = 0;
  }
  #line 278 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(update_midi) {
    
    #line 285 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
update_midi = 0;
  }
  
  
  
  
  

}
#line 318 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
void put_number(void (*putchar)(char), uint16_t n, uint8_t base,
                int8_t pad ) {
  uint8_t buf[8 * sizeof(long)]; 
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';
  
if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }
  
  #line 335 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
do {
    
    #line 339 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
    
n /= base;
  } while (n > 0);
  
while (pad-- >= i)
    putchar(padchar);
  
for (; i > 0; i--)
    putchar((char)buf[(int16_t)i - 1]);
  
  
}

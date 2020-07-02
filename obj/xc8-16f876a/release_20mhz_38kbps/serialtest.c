#include <htc.h>
#include <pic_chip_select.h>
#line 27 "/opt/microchip/xc8/v1.34/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 149 "/opt/microchip/xc8/v1.34/include/pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 184 "/opt/microchip/xc8/v1.34/include/pic.h"
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;
#include <stdint.h>
#line 53 "/home/roman/Dokumente/Sources/lc-meter/lib/typedef.h"
typedef char BOOL;
#include <xc.h>
#line 49 "/home/roman/Dokumente/Sources/lc-meter/lib/tsmdelay.h"
typedef struct dvars {
  uint8_t loop_x, loop_b, loop_c;
} dvars;
#line 67 "/home/roman/Dokumente/Sources/lc-meter/lib/tsmdelay.h"
extern dvars dvar;
#line 77 "/home/roman/Dokumente/Sources/lc-meter/lib/tsmdelay.h"
void cycle_eater(void);
#line 47 "/home/roman/Dokumente/Sources/lc-meter/lib/delay.h"
void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);
#line 65 "/home/roman/Dokumente/Sources/lc-meter/LC-meter.h"
extern double F1, F2, F3, CCal;

void delay10ms(unsigned char period_10ms);
#line 6 "/home/roman/Dokumente/Sources/lc-meter/src/print.h"
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
#line 6 "/home/roman/Dokumente/Sources/lc-meter/lib/format.h"
void format_number(uint16_t n, uint8_t base, int8_t pad);
void format_xint32(uint32_t x);
void format_double(double num);
#line 48 "/home/roman/Dokumente/Sources/lc-meter/lib/lcd44780.h"
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
#line 48 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
char ser_isrx(void);
uint8_t ser_getch(void);
void ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char* s);
void ser_puts2(uint8_t* s);
void ser_puthex(uint8_t v);
void ser_init(void);
#line 58 "/home/roman/Dokumente/Sources/lc-meter/lib/ser.h"
extern uint8_t rxfifo[(uint8_t)16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[(uint8_t)16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
#line 146 "/home/roman/Dokumente/Sources/lc-meter/lib/softser.h"
BOOL softser_poll(uint8_t ticks);
void softser_recv(void);

uint8_t softser_getch(void);
void softser_putch(uint8_t byte);
void softser_puts(const char* s);
void softser_puts2(uint8_t* s);
void softser_puthex(uint8_t v);
void softser_init(void);

extern uint8_t softser_rdata;
#line 68 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer0_init(unsigned char);
#line 75 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
unsigned short timer0_read_ps(void);
#line 107 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer1_init(unsigned char ps_mode);
#line 145 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer2_init(uint8_t ps_mode);
#line 12 "/home/roman/Dokumente/Sources/lc-meter/lib/buffer.h"
typedef uint8_t len_t;

typedef struct {
  char x[16];
  unsigned p : 4; 
  unsigned n : 4; 
} buffer_t;
#line 26 "/home/roman/Dokumente/Sources/lc-meter/lib/buffer.h"
extern buffer_t buffer;

void buffer_init(void);
char buffer_flush(void);
char buffer_putch(char ch);
char buffer_put(const char* x, len_t len);
char buffer_puts(const char* x);
#include <ctype.h>
#line 9 "/home/roman/Dokumente/Sources/lc-meter/src/config-16f876a.h"
#pragma config FOSC = HS, LVP = OFF, CPD = OFF, BOREN = ON, WDTE = OFF, WRT = OFF, DEBUG = OFF
#line 38 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
static buffer_t buffer; 

void loop();
void put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad);

volatile BOOL run = 1, got_byte = 0;
volatile uint16_t bres;

volatile uint16_t msecs;
volatile uint32_t seconds;

volatile uint8_t serial_in = 0;
volatile uint8_t led_state = 0;

volatile uint16_t tmr1_overflows;

interrupt isr() {
  
if(RCIF) { rxfifo[rxiptr] = RCREG; ser_tmp = (rxiptr + 1) & ((uint8_t)16 - 1); if(ser_tmp != rxoptr) rxiptr = ser_tmp; }; if(TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= ((uint8_t)16 - 1); if(txoptr == txiptr) { TXIE = 0; }; TXIF = 0; };
  #line 61 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
if(T0IF) {
    
bres += 256;
    
if(bres >= 5000) {
      bres -= 5000;
      msecs++;
      
PORTC &= ~(1 << 2); PORTC |= (!!(msecs < 500)) << 2;;
    }
    if(msecs >= 1000) { 
      seconds++; 
      msecs -= 1000;
      
    
}
    
    
    #line 81 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
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

void
flash_busy_led(uint16_t duration) {
  
  
}
#line 119 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
int
main() {
  run = bres = msecs = seconds = tmr1_overflows = 0;
  #line 132 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
ser_init();
  #line 139 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
NOT_RBPU = 0; 
  #line 145 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
PORTA = 0;
  #line 148 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
ADON = 1;
  ADCON1 = 0b00000110;
  TRISA = 0x11000111;
  #line 153 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
RA3 = RA5 = 1;
  
  
timer0_init(0b000);
  T0IF = 0;
  T0IE = 1;
  timer1_init(0b000);
  TMR1IF = 0;
  TMR1IE = 1;
  #line 164 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
lcd_init(1);
  lcd_begin(2, 1);
  lcd_clear();
  
lcd_gotoxy(0, 0);
  
lcd_print_number(38400, 16, -1);
   #line 174 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
SSPEN = 0;
  #line 178 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
TRISC &= ~0b1100;
  TRISC &= ~(1 << 2);
  
  PORTC &= ~(1 << 2); PORTC |= (!!(1)) << 2;;
  
  #line 185 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
PEIE = 1;
  GIE = 1;
  
RCIF = 0;
  RCIE = 1;
  
run = 1;
  
  #line 199 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
ser_puts("ZZZZ\r\n");
  
  #line 207 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
for(;;) loop();
}

void
loop() {
  char update_com, update_midi, echo_mode = 0;
  uint8_t c;
  
update_com = 0, update_midi = 0;
  
static int32_t prev = -1;
  
if(seconds != prev) {
    #line 226 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
put_number(ser_putch, seconds, 10, -5);
    ser_putch('\r');
    ser_putch('\n');
    prev = seconds;
  }
  
  #line 235 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
if(ser_isrx()) {
    c = ser_getch();
    
if(echo_mode) {
      ser_putch(' ');
      ser_puthex(c);
      ser_putch(' ');
    } else {
    }
    #line 248 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
update_com = 1;
    
if(c == 0x1b || c == '\t')
      echo_mode = !echo_mode;
  }
  #line 255 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
if(update_com) {
    lcd_gotoxy(12, 0);
    lcd_puts("COM:");
    lcd_putch(c);
    update_com = 0;
  }
  #line 283 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
if(update_midi) {
    
    #line 290 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
update_midi = 0;
  }
  
  
  
  
  

}
#line 323 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
void
put_number(void (*putchar)(char), uint16_t n, uint8_t base, int8_t pad ) {
  uint8_t buf[8 * sizeof(long)]; 
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';
  
if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }
  
  #line 340 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
do {
    
    #line 344 "/home/roman/Dokumente/Sources/lc-meter/obj/../serialtest.c"
di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
    
n /= base;
  } while(n > 0);
  
while(pad-- >= i) putchar(padchar);
  
for(; i > 0; i--) putchar((char)buf[(int16_t)i - 1]);
  
  
}

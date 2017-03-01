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
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
#line 68 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 73 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
unsigned short int measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(unsigned short int period_10ms);
#line 49 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
typedef struct dvars {
  unsigned char loop_x, loop_b, loop_c;
} dvars;
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
extern dvars dvar;
#line 77 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
void cycle_eater(void);
 
#line 22 "C:/Users\\roman\\Documents\\lc-meter\\lib\\delay.h"
void delay_ms(unsigned short int milliseconds);
void delay_us(unsigned short int microseconds);

void Delay100TCYx(unsigned char);
void Delay10KTCYx(unsigned char);
void Delay10TCYx(unsigned char);
void Delay1KTCYx(unsigned char);
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\print.h"
extern const char logo_image[504];

void lcd_print(const char *);
void print_digit(unsigned char line, unsigned char column, unsigned char digit);
void print_unit(unsigned char unit);
void print_reading(unsigned short int measurement); 
void indicator(unsigned char indicate);

void print_print_float(float number, unsigned char digits);
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(putchar_p putchar, unsigned short int n, unsigned char base, signed char pad);
void
format_double(putchar_p putchar, double n);

void
format_xint32(putchar_p putchar, unsigned long int x);
 
#line 47 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd44780.h"
void lcd_init(char fourbitmode);
void lcd_begin(unsigned char l, unsigned char ds);
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
void lcd_print_number(unsigned short int n, unsigned char base, signed char pad);
void lcd_print_float(float number, unsigned char digits);
void lcd_print(const char *string);

void lcd_gotoxy(unsigned char col, unsigned char row);
char lcd_putch(char value);
 
#line 64 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
unsigned char ser_getch(void);
char ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char * s);
void ser_puts2(unsigned char * s);
void ser_puthex(unsigned char v);
void ser_init(void);
#line 74 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern unsigned char rxfifo[16];
extern volatile unsigned char rxiptr, rxoptr;
extern unsigned char txfifo[16];
extern volatile unsigned char txiptr, txoptr;
extern unsigned char ser_tmp;
extern unsigned char ser_brg;
 
#line 142 "C:/Users\\roman\\Documents\\lc-meter\\lib\\softser.h"
BOOL softser_poll(unsigned char ticks);
void softser_recv(void);

unsigned char softser_getch(void);
void softser_putch(unsigned char byte);
void softser_puts(const char * s);
void softser_puts2(unsigned char * s);
void softser_puthex(unsigned char v);
void softser_init(void);

extern unsigned char softser_rdata;
 
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer0_init(unsigned char prescale);
#line 71 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer1_init(unsigned char ps_mode);
 
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef unsigned char len_t;
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
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config FOSC = HSPLL_HS
#line 7 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config PWRT = ON, BOR = ON, BORV = 27
#line 8 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config WDT = OFF
#line 9 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config CCP2MX = ON, STVREN = OFF, LVP = OFF
#line 10 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#line 11 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config CPB = OFF, CPD = OFF
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#line 13 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#line 14 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#line 15 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-18f2550.h"
#pragma config EBTRB = OFF
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
void put_number(void (*putchar)(char), unsigned short int n, unsigned char base, signed char pad);

volatile BOOL run = 1, got_byte = 0;
volatile unsigned short int bres;

volatile unsigned short int msecs;
volatile unsigned long int seconds;

volatile unsigned char serial_in = 0;
volatile unsigned char led_state = 0;

volatile unsigned short int tmr1_overflows;

interrupt isr() {
  if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; }; if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; }; TXIF = 0; };
  #line 63 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(T0IF) {
    
bres += 256;
    
if(bres >= 5000) {
      bres -= 5000;
      msecs++;
      
LATC1=((msecs < 500)==0);
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

void flash_busy_led(unsigned short int duration) {
  
  
}
#line 120 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
int main() {
  run = bres = msecs = seconds = tmr1_overflows = 0;
  #line 132 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
ser_init();
  #line 139 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
nRBPU = 0; 
  #line 145 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
PORTA = 0;
  #line 148 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
ADON = 1;
  ADCON1 = 0b00000110;
  TRISA = 0x11000111;
  #line 153 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
LATA3 = LATA5 = 1;
  
  
timer0_init(0b000);
  T0IF = 0;
  T0IE = 1;
  timer1_init(0b000);
  TMR1IF = 0;
  TMR1IE = 1;
  #line 164 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
lcd_init(1);
  lcd_begin(2, 1);
  lcd_clear();
  
lcd_gotoxy(0, 0);
  
lcd_print_number(0x41, 16, -1);
   #line 174 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
SSPEN = 0;
  #line 178 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
TRISC &= ~0b1100;
  TRISC1=0;
  #line 182 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
LATC1=((1)==0);
  #line 185 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
PEIE = 1;
  GIE = 1;
  
RCIF = 0;
  RCIE = 1;
  
run = 1;
  #line 199 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
ser_puts("ZZZZ\r\n");
  
  #line 207 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
for (;;)
    loop();
}

void loop() {
  char update_com, update_midi, echo_mode = 0;
  unsigned char c;
  
update_com = 0, update_midi = 0;
  
static signed long int prev = -1;
  
if(seconds != prev) {
    #line 226 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
put_number(ser_putch, seconds, 10, -5);
    ser_putch('\r');
    ser_putch('\n');
    prev = seconds;
  }
  
  #line 235 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(ser_isrx()) {
    c = ser_getch();
    
if(echo_mode) {
      ser_putch(' ');
      ser_puthex(c);
      ser_putch(' ');
    } else {
    }
    #line 248 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
update_com = 1;
    
if(c == 0x1b || c == '\t')
      echo_mode = !echo_mode;
  }
  #line 255 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(update_com) {
    lcd_gotoxy(12, 0);
    lcd_print("COM:");
    lcd_putch(c);
    update_com = 0;
  }
  #line 283 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
if(update_midi) {
    
    #line 290 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
update_midi = 0;
  }
  
  
  
  
  

}
#line 323 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
void put_number(void (*putchar)(char), unsigned short int n, unsigned char base,
                signed char pad ) {
  unsigned char buf[8 * sizeof(long)]; 
  unsigned char di;
  signed char i = 0;
  char padchar = ' ';
  
if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }
  
  #line 340 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
do {
    
    #line 344 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/serialtest.c"
di = n % base;
    buf[i++] = (di < 10 ? (unsigned char)'0' + di : (unsigned char)'A' + di - 10);
    
n /= base;
  } while (n > 0);
  
while (pad-- >= i)
    putchar(padchar);
  
for (; i > 0; i--)
    putchar((char)buf[(signed short int)i - 1]);
  
  
}

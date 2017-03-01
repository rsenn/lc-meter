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
 
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer0_init(unsigned char prescale);
#line 71 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer1_init(unsigned char ps_mode);
#line 99 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer2_init(unsigned char ps_mode);
 
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
#line 42 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
volatile unsigned short int bres; 
volatile unsigned short int msecpart; 
volatile unsigned long int seconds, msecs; 
volatile unsigned long int timer1of; 
#line 49 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
static char
output_putch(char c) {
  lcd_putch(c);
  ser_putch(c);
  return 1;
}
#line 59 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
buffer_t buffer = { {0}, 0, 0, output_putch };
#line 62 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
double F1, F2, F3, CCal;
void main();
void loop();
void testloop();
void initialize();
unsigned short int measure_freq();
void calibrate();
void measure_capacitance();
void measure_inductance();
unsigned long int milliseconds();
void delay10ms(unsigned short int period_10ms);
#line 75 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void put_str(const char*);

void put_number(void (*putchar)(char), unsigned short int n, unsigned char base,
                signed char pad );

static unsigned short int blink;
#line 84 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
interrupt isr() {
  
if(TMR2IF) {
    
bres += 256;
    
if(bres >= 5000) {
      bres -= 5000;
      msecpart++;
      msecs++;
      
          
        LATC1=(((blink > 200))==0);
         if(blink >= 400) blink -= 400;
         ++blink;
         
        
if(msecpart >= 1000) {
           
          seconds++;
          msecpart -= 1000;
        }
    }
    
    TMR2IF = 0;
  }
  
if(TMR1IF) {
    ++timer1of;
    TMR1IF = 0;
  }
  if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; }; if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; }; TXIF = 0; };
#line 121 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
}
#line 124 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
main() {
 bres = msecpart = msecs = seconds = 0;
  
CCal = 1000;
  
   CM0 = 1;
   CM1 = 0;
   CM2 = 1;
  
  #line 140 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
nRBPU = 0; 
  #line 143 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISC1=0;
  LATC1=((1)==0);
  
SSPEN = 0;
 
 #line 151 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
timer2_init(0b000 | 0x80);
  #line 158 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISC1 = 0; 
  #line 162 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISC0 = 1; TRISC2 = 1;
  #line 168 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
ser_init();
  ser_puts("LC-meter\r\n");
  #line 177 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_init(!0);
  lcd_begin(2, 1);
  #line 181 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISC0 = 1;
  TRISC2 = 0;
  
LATC2 = 0;
  delay10ms(50);
  LATC2 = 1;
  delay10ms(50);
  LATC2 = 0;
  delay10ms(50);
  LATC2 = 1;
  delay10ms(50);
  LATC2 = 0;
  
PEIE = 1;
  GIE = 1;
  #line 201 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_gotoxy(0, 0);
  lcd_print("LC-meter ");
 format_double(lcd_putch, CCal);
  #line 209 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
delay10ms(5);
  #line 214 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
calibrate();
  lcd_clear();
  
  #line 223 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
for (;;) {
    if (LATC0)
      measure_capacitance();
    else
      measure_inductance();
    
indicator(1);
    delay10ms(30);
    indicator(0);
    delay10ms(20);
  }
}
#line 237 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
testloop() {
  
static BOOL led = 0;
  static unsigned long int prev_s = 0;
  unsigned long int s;
  
delay10ms(10);
  
GIE = 0;
  s = seconds;
  GIE = 1;
  #line 258 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_gotoxy(10, 0);
  lcd_print("      ");
  lcd_gotoxy(10, 0);
  format_number(lcd_putch, s, 10, 5);
  #line 264 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_gotoxy(10, 1);
  lcd_print("      ");
  lcd_gotoxy(10, 1);
  format_number(lcd_putch, ((TMR1H << 8)|TMR1L), 10, 5);
  
lcd_gotoxy(0, 1);
  lcd_print("     ");
  lcd_gotoxy(0, 1);
  lcd_print("RC4=");
  
lcd_putch(LATC0 != 0 ? '1' : '0');
  #line 279 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
if(s != prev_s) {
    
format_number(ser_putch, s, 10, 0);
    
    ser_puts("\r\n");
    #line 286 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
prev_s = s;
  }
}
#line 293 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
unsigned short int
measure_freq() {
  unsigned char prev;
  unsigned short int count;
  
TMR0IF = 0; 
  TRISA4 = 0; 
  
_delay((unsigned long)((20)*(20000000/4000.0))); 
  
TMR0 = 0x00; 
  
delay_ms(100);
  
TRISA4 = 1; 
  
prev = TMR0;
  count = 0;
  
do {
     
    T0SE = 1;
    __nop();
    __nop();
    
T0SE = 0;
    __nop();
    __nop();
    count++; 
  } while (prev == TMR0 && count <= 255); 
  
  
count = ((prev << 8) + (256 - count));
  
lcd_gotoxy(0, 1);
  put_str("Freq=");
  format_number(lcd_putch, count, 10, 5);
  
return count;
}
#line 337 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
calibrate() {
  unsigned char i;
  
lcd_clear();
  
lcd_gotoxy(0, 0);
  put_str("Calibrating");
  
lcd_gotoxy(0, 1);
  ser_puts("\r\n");
  put_str("please wait...");
  
LATC2 = 0;
  
F1 = (double)measure_freq(); 
  delay10ms(50);
  
F1 = (double)measure_freq();
  LATC2 = 1;
  
F2 = (double)measure_freq(); 
  delay10ms(50);
  
F2 = (double)measure_freq();
  LATC2 = 0;
  
lcd_gotoxy(11, 0);
  
for(i = 0; i < 6; i++) { 
    lcd_putch('=');
     
    delay10ms(28);
  }
  
ser_puts("\r\n");
}
#line 378 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
measure_capacitance() {
  unsigned char unit;
  unsigned short int var;
  
double Cin;
  
lcd_gotoxy(0, 0);
  put_str("Capacity ");
  
var = measure_freq();
  F3 = (double)var;
  
ser_puts("var=");
  format_xint32(ser_putch, var);
  ser_puts("\r\nF1=");
  format_double(ser_putch, F1);
  ser_putch(' '); format_xint32(ser_putch, *(unsigned long int*)&F1);
  ser_puts("\r\nF2=");
  format_double(ser_putch, F2);
  ser_putch(' '); format_xint32(ser_putch, *(unsigned long int*)&F2);
  ser_puts("\r\nF3=");
  format_double(ser_putch, F3);
  ser_putch(' '); format_xint32(ser_putch, *(unsigned long int*)&F3);
  ser_puts("\r\nCCal=");
  format_double(ser_putch, CCal);
  ser_putch(' '); format_xint32(ser_putch, *(unsigned long int*)&CCal);
  ser_puts("\r\n");
  #line 408 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
if(F3 > F1)
    F3 = F1; 
  
Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
  #line 416 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
ser_puts("Cin=");
  format_double(ser_putch, Cin);
  ser_putch(' '); format_xint32(ser_putch, *(unsigned long int*)&Cin);
  ser_puts("\r\n");
  if(Cin > 999) {
    if(Cin > (999e+03l)) {
      if(Cin > (999e+06l)) {
        Cin = Cin / (1e+09l);
        unit = 4; 
      } else {
        Cin = Cin / (1e+06l);
        unit = 5; 
      }
    } else {
      Cin = Cin / 1e+03l;
      unit = 6; 
    }
  } else
    unit = 7; 
  #line 437 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
Cin = Cin * 100; 
  var = (unsigned short int)Cin;
  print_reading(var);
  print_unit(unit);
}
#line 446 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
measure_inductance() {
  unsigned char unit;
  unsigned short int var;
  
double Lin, numerator, denominator;
  
lcd_gotoxy(0, 0);
  put_str("Inductivity ");
  
var = measure_freq();
  
F3 = (double)var;
  if(F3 > F1)
    F3 = F1; 
  
numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) *
              (100 * 100);
  
denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
  
Lin = (numerator / denominator) *
        1e+15l; 
  
if(Lin > 999) {
    if(Lin > (999e+03l)) {
      if(Lin > (999e+06l)) {
        Lin = Lin / (1e+09l);
        unit = 0; 
      } else {
        Lin = Lin / (1e+06l);
        unit = 1; 
      }
    } else {
      Lin = Lin / 1e+03l;
      unit = 2; 
    }
  } else
    unit = 3; 
  
Lin = Lin * 100; 
  var = (unsigned short int)Lin;
  
print_reading(var);
  print_unit(unit);
}
#line 510 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
delay10ms(unsigned short int period_10ms) {
    
unsigned long int ms;
  BOOL run = 1;
  #line 518 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
GIE=0,ms=msecs,GIE=1;
  #line 521 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
ms += period_10ms >> 2;
  #line 526 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
do {
    GIE=0;
    if(ms <= msecs)
      run = 0;
    GIE=1;
  } while (run);
}
#line 537 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
put_str(const char* s) {
  unsigned char i;
  
for(i = 0; s[i]; i++) {
    lcd_putch(s[i]);
    ser_putch(s[i]);
  }
#line 551 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
};

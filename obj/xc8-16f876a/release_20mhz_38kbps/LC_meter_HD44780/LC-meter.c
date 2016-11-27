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
#line 58 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
uint16_t measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(uint16_t period_10ms);
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-16f876a.h"
#pragma config FOSC=HS, WDTE=OFF, PWRTE=ON, BOREN=ON, LVP=OFF, CPD=OFF, WRT=OFF, CP=OFF
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
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd44780.h"
void lcd_gotoxy(uint8_t col, uint8_t row);
void lcd_putch(char value);
 
#line 53 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer0_init(uint8_t prescale);
#line 71 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer1_init(uint8_t ps_mode);
#line 95 "C:/Users\\roman\\Documents\\lc-meter\\lib\\timer.h"
void timer2_init(uint8_t ps_mode);
 
#line 64 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
uint8_t ser_getch(void);
void ser_putch(uint8_t byte);
void ser_puts(const char * s);
void ser_puts2(uint8_t * s);
void ser_puthex(uint8_t v);
void ser_init(void);
#line 73 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern uint8_t rxfifo[16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
 
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
format_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad);
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef uint8_t len_t;

typedef void buffer_fn(char);
	typedef buffer_fn* buffer_fnptr;

typedef struct {
  char x[16];
  unsigned p:4; 
  unsigned n:4; 
  buffer_fnptr op; 
} buffer_t;
#line 28 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
extern buffer_t buffer;

void buffer_init(void (*op)(char));
int buffer_flush();
int buffer_putch(char ch);
int buffer_put(const char *x, len_t len);
int buffer_putalign(const char *x, len_t len);
int buffer_putflush(const char *x, len_t len);
int buffer_puts(const char *x);
int buffer_putsalign(const char *x);
int buffer_putsflush(const char *x);

int buffer_putspace();
int buffer_putnlflush(); 
#line 42 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
volatile uint16_t bres; 
volatile uint16_t msecpart; 
volatile uint32_t seconds, msecs; 
volatile uint32_t timer1of; 
#line 49 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
static void
output_putch(char c) {
  lcd_putch(c);
  ser_putch(c);
}
#line 58 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
buffer_t buffer = { {0}, 0, 0, output_putch };
#line 61 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
float F1, F2, F3;
void main();
void loop();
void testloop();
void initialize();
uint16_t measure_freq();
void calibrate();
void measure_capacitance();
void measure_inductance();
uint32_t milliseconds();
void delay10ms(uint16_t period_10ms);
#line 74 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void put_str(const char*);

void put_number(void (*putchar)(char), uint16_t n, uint8_t base,
                int8_t pad );
#line 81 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
interrupt isr() {
  
if(TMR2IF) {
    
bres += 256;
    
if(bres >= 5000) {
      bres -= 5000;
      msecpart++;
      msecs++;
      
RC3=((msecpart < 500)==0);
    }
     
    
if(msecpart >= 1000) {
       
      seconds++;
      msecpart -= 1000;
    }
    
    
TMR2IF = 0;
  }
  
if(TMR1IF) {
    ++timer1of;
    TMR1IF = 0;
  }
  if (RCIF) { rxfifo[rxiptr]=RCREG; ser_tmp=(rxiptr+1) & (16-1); if (ser_tmp!=rxoptr) rxiptr=ser_tmp; }; if (TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= (16-1); if (txoptr==txiptr) { TXIE = 0; }; TXIF = 0; };
#line 116 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
}
#line 119 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
main() {
 bres = msecpart = msecs = seconds = 0;
  
   CM0 = 1;
   CM1 = 0;
   CM2 = 1;
  #line 128 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISA = 0b11001111;
  
  
nRBPU = 1; 
  
TRISC3=0;
  RC3=((1)==0);
  
SSPEN = 0;
  
timer0_init(0b1000 | 0x40);
  
timer1_init(0b000 | 0x40);
  timer1of = 0;
  
timer2_init(0b000 | 0x80);
  #line 148 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISC1 = 0; TRISC3 = 0;
  TRISC0 = 1; TRISC2 = 1;
  #line 152 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
TRISC4 = 1;
  TRISC5 = 0;
  #line 156 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
ser_init();
  ser_puts("LC-meter\r\n");
  #line 165 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_init(true);
  lcd_begin(2, 1);
  #line 169 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
PEIE = 1;
  GIE = 1;
  #line 176 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_gotoxy(0, 0);
  lcd_print("LC-meter");
  #line 184 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
delay10ms(200);
  #line 187 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
calibrate();
  lcd_clear();
  
for(;;)
    loop();
}
#line 199 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
loop() {
  if(RC4)
    measure_capacitance();
  else
    measure_inductance();
  
indicator(1);
  delay10ms(30);
  indicator(0);
  delay10ms(20);
}

void
testloop() {
  
static bool led = 0;
  static uint32_t prev_s = 0;
  uint32_t s;
  
delay10ms(10);
  
GIE = 0;
  s = seconds;
  GIE = 1;
  #line 233 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_gotoxy(10, 0);
  lcd_print("      ");
  lcd_gotoxy(10, 0);
  format_number(lcd_putch, s, 10, 5);
  #line 239 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
lcd_gotoxy(10, 1);
  lcd_print("      ");
  lcd_gotoxy(10, 1);
  format_number(lcd_putch, TMR1, 10, 5);
  
lcd_gotoxy(0, 1);
  lcd_print("     ");
  lcd_gotoxy(0, 1);
  lcd_print("RC4=");
  lcd_putch(RC4 != 0 ? '1' : '0');
  #line 252 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
if(s != prev_s) {
    
format_number(ser_putch, s, 10, 0);
    
    ser_puts("\r\n");
    #line 259 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
prev_s = s;
  }
}
#line 266 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
uint16_t
measure_freq() {
  uint8_t prev;
  uint16_t count;
  
TMR0IF = 0; 
  TRISA4 = 0; 
  
delay10ms(2); 
  
TMR0 = 0x00; 
  
delay10ms(10);
  
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
  } while (prev == TMR0 &&
           count <= 255); 
  
  
count = ((prev << 8) + (256 - count));
  #line 305 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
return count;
}
#line 311 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
calibrate() {
  uint8_t i;
  
lcd_clear();
  
lcd_gotoxy(0, 0);
  put_str("Calibrating.");
  
lcd_gotoxy(0, 1);
  put_str("please wait..");
  
RC5 = 0;
  
F1 = (double)measure_freq(); 
  delay10ms(50);
  
F1 = (double)measure_freq();
  RC5 = 1;
  
F2 = (double)measure_freq(); 
  delay10ms(50);
  
F2 = (double)measure_freq();
  RC5 = 0;
  
lcd_gotoxy(14, 0);
  
for(i = 0; i < 6; i++) { 
    lcd_putch('=');
     
    delay10ms(28);
  }
}
#line 349 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
measure_capacitance() {
  uint8_t unit;
  uint16_t var;
  
double Cin;
  
lcd_gotoxy(0, 0);
  put_str("Capact.:");
  
var = measure_freq();
  F3 = (double)var;
  
if(F3 > F1)
    F3 = F1; 
  
Cin = F2 * F2 * (F1 * F1 - F3 * F3) * 1000 / (F3 * F3 * (F1 * F1 - F2 * F2));
  
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
  
Cin = Cin * 100; 
  var = (uint16_t)Cin;
  display_unit(unit);
  display_reading(var);
}
#line 392 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
measure_inductance() {
  uint8_t unit;
  uint16_t var;
  
double Lin, numerator, denominator;
  
lcd_gotoxy(0, 0);
  put_str("Induct.:");
  
var = measure_freq();
  
F3 = (double)var;
  if(F3 > F1)
    F3 = F1; 
  
numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) *
              (100 * 100);
  
denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * 1000;
  
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
  var = (uint16_t)Lin;
  
display_unit(unit);
  display_reading(var);
}
#line 456 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
delay10ms(uint16_t period_10ms) {
  uint32_t ms;
  bool run = 1;
  
GIE=0,ms=msecs,GIE=1;
  #line 466 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
ms += period_10ms * 10;
  #line 469 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
do {
    GIE=0;
    if(ms <= msecs)
      run = 0;
    GIE=1;
  } while (run);
}
#line 480 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/LC-meter.c"
void
put_str(const char* s) {
  uint8_t i;
  
for(i = 0; s[i]; i++) {
    lcd_putch(s[i]);
    ser_putch(s[i]);
  }
  ser_putch('\r');
  ser_putch('\n');
}
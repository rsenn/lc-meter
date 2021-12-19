#include <htc.h>
#include <pic_chip_select.h>
#line 28 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 193 "/opt/microchip/xc8/v1.45/include/pic.h"
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
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
typedef void(*putch_t)(char);

void format_number(putch_t fn, uint16_t n, uint8_t base, int8_t pad);
void format_xint32(putch_t fn, uint32_t x);
void format_double(putch_t fn, double num);
void format_float(putch_t fn, float num);
#line 79 "/home/roman/Projects/lc-meter/lib/timer.h"
void timer0_init(unsigned char);
#line 86 "/home/roman/Projects/lc-meter/lib/timer.h"
unsigned short timer0_read_ps(void);
#line 118 "/home/roman/Projects/lc-meter/lib/timer.h"
void timer1_init(unsigned char ps_mode);
#line 156 "/home/roman/Projects/lc-meter/lib/timer.h"
void timer2_init(uint8_t ps_mode);
#line 12 "/home/roman/Projects/lc-meter/lib/buffer.h"
typedef uint8_t len_t;

typedef struct {
  char x[16];
  unsigned p : 4; 
  unsigned n : 4; 
} buffer_t;
#line 26 "/home/roman/Projects/lc-meter/lib/buffer.h"
extern buffer_t buffer;

void buffer_init(void);
char buffer_flush(void);
char buffer_putc(char ch);
void buffer_putch(char ch);
char buffer_put(const char* x, len_t len);
char buffer_puts(const char* x);
#line 25 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
void
calibrate() {
  uint8_t i;
  #line 30 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
lcd_clear();
  
lcd_gotoxy(0, 0);
  put_str("Calibrating");
  
lcd_gotoxy(0, 1);
  
ser_puts("\r\n");
  put_str("please wait...");
  #line 42 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
PORTC &= ~(1 << 5);
  
F1 = (double)measure_freq(); 
  delay10ms(50);
  
F1 = (double)measure_freq();
  PORTC |= (1 << 5);
  
F2 = (double)measure_freq(); 
  delay10ms(50);
  
F2 = (double)measure_freq();
  PORTC &= ~(1 << 5);
  #line 57 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
lcd_gotoxy(11, 0);
  for(i = 0; i < 6; i++) { 
    lcd_putch('=');
     
    delay10ms(28);
  }
  #line 65 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
ser_puts("\r\n");
}
#line 72 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
unsigned short
measure_freq() {
  uint16_t count;
  
TMR0IF = 0;
  
  
  
TRISA &= ~0b00010000;
  
__delay_ms(20); 
  
  
TMR0 = 0x00;
  
  
  #line 90 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
__delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  __delay_ms(10);
  
  
  #line 104 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
TRISA |= 0b00010000;
  
  
count = timer0_read_ps();
  #line 110 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
lcd_gotoxy(0, 1);
  buffer_init();
  buffer_puts("Freq=");
  format_number(&buffer_putch,count, 10, 5);
  print_buffer();
  #line 117 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
return count;
}

void
buf_to_ser() {
  ser_put(buffer.x, buffer.n);
  buffer.p = 0, buffer.n = 0, 0;
}
#line 130 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
void
measure_capacitance() {
  uint8_t unit;
  uint16_t var;
  
double Cin;
  #line 139 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
lcd_gotoxy(0, 0);
  put_str("Capacity ");
  var = measure_freq();
  #line 144 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
F3 = (double)var;
  
  
ser_puts("var=");
  format_xint32(&ser_putch, var);
  
  ser_puts("\r\nF1=");
  format_float(&ser_putch, F1);
  
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&F1);
  
  ser_puts("\r\nF2=");
  format_float(&ser_putch, F2);
  
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&F2);
  
  ser_puts("\r\nF3=");
  format_float(&ser_putch, F3);
  
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&F3);
  
  ser_puts("\r\nCCal=");
  format_float(&ser_putch, CCal);
  
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&CCal);
  
  ser_puts("\r\n");
  
  #line 178 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
if(F3 > F1)
    F3 = F1; 
  
Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
  
  #line 185 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
ser_puts("Cin=");
  format_float(&ser_putch, Cin);
  ser_putch(' ');
  format_xint32(&ser_putch, *(uint32_t*)&Cin);
  ser_puts("\r\n");
  if(Cin > 999) {
    if(Cin > (999e+03l)) {
      if(Cin > (999e+06l)) {
        Cin = Cin / (1e+09);
        unit = 4; 
      } else {
        Cin = Cin / (1e+06);
        unit = 5; 
      }
    } else {
      Cin = Cin / 1e+03;
      unit = 6; 
    }
  } else
    unit = 7; 
  #line 207 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
Cin = Cin * 100; 
  var = (uint16_t)Cin;
  
print_reading(var);
  print_unit(unit);
}
#line 217 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
void
measure_inductance() {
  uint8_t unit;
  uint16_t var;
  
double Lin, numerator, denominator;
  #line 225 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
lcd_gotoxy(0, 0);
  put_str("Inductivity ");
  var = measure_freq();
  #line 230 "/home/roman/Projects/lc-meter/obj/../src/measure.c"
F3 = (double)var;
  if(F3 > F1)
    F3 = F1; 
  numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
  denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
  Lin = (numerator / denominator) * 1e+15l; 
  
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
  
print_reading(var);
  print_unit(unit);
}

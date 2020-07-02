#include <htc.h>
#include <pic_chip_select.h>
#line 28 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 152 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 154 "/opt/microchip/xc8/v1.45/include/pic.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 193 "/opt/microchip/xc8/v1.45/include/pic.h"
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
#include <xc.h>
#include <stdint.h>
#line 53 "/home/roman/Dokumente/Sources/lc-meter/lib/typedef.h"
typedef char BOOL;
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
#line 6 "/home/roman/Dokumente/Sources/lc-meter/src/measure.h"
void calibrate(void);
unsigned short measure_freq(void);
void measure_capacitance(void);
void measure_inductance(void);
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
#line 5 "/home/roman/Dokumente/Sources/lc-meter/lib/format.h"
typedef void(putch_t)(char);
#line 8 "/home/roman/Dokumente/Sources/lc-meter/lib/format.h"
void format_number(putch_t fn,uint16_t n, uint8_t base, int8_t pad);
void format_xint32(putch_t fn,uint32_t x);
void format_double(putch_t fn,double num);
#line 72 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer0_init(unsigned char);
#line 79 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
unsigned short timer0_read_ps(void);
#line 111 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
void timer1_init(unsigned char ps_mode);
#line 149 "/home/roman/Dokumente/Sources/lc-meter/lib/timer.h"
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
#line 25 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
void
calibrate() {
  uint8_t i;
  #line 42 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
PORTC &= ~(1 << 5);
  
F1 = (double)measure_freq(); 
  delay10ms(50);
  
F1 = (double)measure_freq();
  PORTC |= (1 << 5);
  
F2 = (double)measure_freq(); 
  delay10ms(50);
  
F2 = (double)measure_freq();
  PORTC &= ~(1 << 5);
#line 67 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
}
#line 72 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
unsigned short
measure_freq() {
  uint16_t count;
  
TMR0IF = 0;
  
  
  
TRISA &= ~0b00010000;
  
_delay((unsigned long)((20)*(20000000/4000.0))); 
  
  
TMR0 = 0x00;
  
  
  #line 90 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
_delay((unsigned long)((10)*(20000000/4000.0)));
  _delay((unsigned long)((10)*(20000000/4000.0)));
  _delay((unsigned long)((10)*(20000000/4000.0)));
  _delay((unsigned long)((10)*(20000000/4000.0)));
  _delay((unsigned long)((10)*(20000000/4000.0)));
  _delay((unsigned long)((10)*(20000000/4000.0)));
  _delay((unsigned long)((10)*(20000000/4000.0)));
  _delay((unsigned long)((10)*(20000000/4000.0)));
  _delay((unsigned long)((10)*(20000000/4000.0)));
  _delay((unsigned long)((10)*(20000000/4000.0)));
  
  
  #line 104 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
TRISA |= 0b00010000;
  
  
count = timer0_read_ps();
  #line 112 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
buffer_init();
  buffer_puts("Freq=");
  format_number(&buffer_putch,count, 10, 5);
  print_buffer();
  
return count;
}
#line 130 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
void
measure_capacitance() {
  uint8_t unit;
  uint16_t var;
  
double Cin;
  #line 142 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
var = measure_freq();
  
F3 = (double)var;
  
  #line 178 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
if(F3 > F1)
    F3 = F1; 
  
Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
  
  #line 191 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
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
  
Cin = Cin * 100; 
  var = (uint16_t)Cin;
  
print_reading(var);
  print_unit(unit);
}
#line 217 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
void
measure_inductance() {
  uint8_t unit;
  uint16_t var;
  
double Lin, numerator, denominator;
  #line 228 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/measure.c"
var = measure_freq();
  
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

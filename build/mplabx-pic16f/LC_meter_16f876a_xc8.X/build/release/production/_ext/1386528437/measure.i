# 1 "../../../src/measure.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "../../../src/measure.c" 2
# 1 "../../../lib\\oscillator.h" 1
# 2 "../../../src/measure.c" 2
# 1 "../../..\\LC-meter.h" 1




# 1 "../../../lib/typedef.h" 1
# 22 "../../../lib/typedef.h"
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 1 3
# 13 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;
# 52 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;
# 88 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_least24_t;
# 118 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef signed long int int_least32_t;
# 136 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;
# 181 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;
# 224 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;
# 268 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef int32_t intmax_t;
# 282 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef uint32_t uintmax_t;






typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 23 "../../../lib/typedef.h" 2
# 56 "../../../lib/typedef.h"
typedef char BOOL;
# 6 "../../..\\LC-meter.h" 2
# 1 "../../../lib/const.h" 1
# 7 "../../..\\LC-meter.h" 2
# 63 "../../..\\LC-meter.h"
extern double F1, F2, F3, CCal;

void delay10ms(unsigned char period_10ms);
# 3 "../../../src/measure.c" 2
# 1 "../../../lib\\delay.h" 1





# 1 "../../../lib/tsmdelay.h" 1
# 50 "../../../lib/tsmdelay.h"
typedef struct dvars {
  uint8_t loop_x, loop_b, loop_c;
} dvars;
# 68 "../../../lib/tsmdelay.h"
extern dvars dvar;
# 78 "../../../lib/tsmdelay.h"
void cycle_eater(void);
# 7 "../../../lib\\delay.h" 2
# 48 "../../../lib\\delay.h"
void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);
# 4 "../../../src/measure.c" 2





# 1 "../../../lib\\ser.h" 1
# 48 "../../../lib\\ser.h"
char ser_isrx(void);
uint8_t ser_getch(void);
void ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char* s);
void ser_puts2(uint8_t* s);
void ser_puthex(uint8_t v);
void ser_init(void);


extern uint8_t rxfifo[(uint8_t)16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[(uint8_t)16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;

extern uint8_t ser_brg;
# 10 "../../../src/measure.c" 2





# 1 "../../../src/measure.h" 1





void calibrate(void);
unsigned short measure_freq(void);
void measure_capacitance(void);
void measure_inductance(void);
# 16 "../../../src/measure.c" 2
# 1 "../../../src/print.h" 1





extern const char logo_image[504];

void put_str(const char*);
void output_putch(char c); void lcd_puts(const char*);
void print_digit(uint8_t line, uint8_t column, uint8_t digit);
void print_unit(uint8_t unit);
void print_reading(uint16_t measurement);
void print_indicator(uint8_t indicate);
void print_print_float(float number, uint8_t digits);
void print_buffer(void);
# 17 "../../../src/measure.c" 2
# 1 "../../../lib\\format.h" 1





void format_number(uint16_t n, uint8_t base, int8_t pad);
void format_xint32(uint32_t x);
void format_double(double num);
# 18 "../../../src/measure.c" 2
# 1 "../../../lib\\timer.h" 1
# 69 "../../../lib\\timer.h"
void timer0_init(uint8_t);






unsigned short timer0_read_ps(void);
# 19 "../../../src/measure.c" 2
# 1 "../../../lib\\buffer.h" 1
# 12 "../../../lib\\buffer.h"
typedef uint8_t len_t;

typedef struct {
  char x[16];
  unsigned p : 4;
  unsigned n : 4;
} buffer_t;







extern buffer_t buffer;

void buffer_init(void);
char buffer_flush(void);
char buffer_putch(char ch);
char buffer_put(const char* x, len_t len);
char buffer_puts(const char* x);
# 20 "../../../src/measure.c" 2




void
calibrate() {
  uint8_t i;
# 41 "../../../src/measure.c"
  OUTC &= ~(1 << 5);

  F1 = (double)measure_freq();
  delay10ms(50);

  F1 = (double)measure_freq();
  OUTC |= (1 << 5);

  F2 = (double)measure_freq();
  delay10ms(50);

  F2 = (double)measure_freq();
  OUTC &= ~(1 << 5);
# 64 "../../../src/measure.c"
  ser_puts("\r\n");

}




unsigned short
measure_freq() {
  uint16_t count;

  INTCON &= ~0b100;



  TRISA &= ~0b00010000;

  __delay_ms(20);


  TMR0 = 0x00;




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




  TRISA |= 0b00010000;


  count = timer0_read_ps();




  buffer_init();
  buffer_puts("Freq=");
  format_number(count, 10, 5);
  print_buffer();

  return count;
}

void
buf_to_ser() {
  ser_put(buffer.x, buffer.n);
  buffer.p = 0, buffer.n = 0, 0;
}






void
measure_capacitance() {
  uint8_t unit;
  uint16_t var;

  double Cin;






  var = measure_freq();

  F3 = (double)var;


  ser_puts("var=");
  format_xint32(var); buf_to_ser();
  ser_puts("\r\nF1=");
  format_double(F1); buf_to_ser();
  ser_putch(' ');
  format_xint32(*(uint32_t*)&F1); buf_to_ser();
  ser_puts("\r\nF2=");
  format_double(F2); buf_to_ser();
  ser_putch(' ');
  format_xint32(*(uint32_t*)&F2); buf_to_ser();
  ser_puts("\r\nF3=");
  format_double(F3); buf_to_ser();
  ser_putch(' ');
  format_xint32(*(uint32_t*)&F3); buf_to_ser();
  ser_puts("\r\nCCal=");
  format_double(CCal); buf_to_ser();
  ser_putch(' ');
  format_xint32(*(uint32_t*)&CCal); buf_to_ser();
  ser_puts("\r\n");



  if(F3 > F1)
    F3 = F1;

  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;



  ser_puts("Cin=");
  format_double(Cin);
  ser_putch(' ');
  format_xint32(*(uint32_t*)&Cin);
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

  Cin = Cin * 100;
  var = (uint16_t)Cin;

  print_reading(var);
  print_unit(unit);
}




void
measure_inductance() {
  uint8_t unit;
  uint16_t var;

  double Lin, numerator, denominator;





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

# 1 "../../../lib/format.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "../../../lib/format.c" 2
# 1 "../../../lib/format.h" 1



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
# 5 "../../../lib/format.h" 2

void format_number(uint16_t n, uint8_t base, int8_t pad);
void format_xint32(uint32_t x);
void format_double(double num);
# 2 "../../../lib/format.c" 2
# 1 "../../../lib/buffer.h" 1
# 12 "../../../lib/buffer.h"
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
# 3 "../../../lib/format.c" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\math.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\__unsupported.h" 1 3
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\math.h" 2 3
# 30 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\math.h" 3
extern double fabs(double);
extern double floor(double);
extern double ceil(double);
extern double modf(double, double *);
extern double sqrt(double);
extern double atof(const char *);
extern double sin(double) ;
extern double cos(double) ;
extern double tan(double) ;
extern double asin(double) ;
extern double acos(double) ;
extern double atan(double);
extern double atan2(double, double) ;
extern double log(double);
extern double log10(double);
extern double pow(double, double) ;
extern double exp(double) ;
extern double sinh(double) ;
extern double cosh(double) ;
extern double tanh(double);
extern double eval_poly(double, const double *, int);
extern double frexp(double, int *);
extern double ldexp(double, int);
extern double fmod(double, double);
extern double trunc(double);
extern double round(double);
# 4 "../../../lib/format.c" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\float.h" 1 3
# 5 "../../../lib/format.c" 2

static void
format_putchar(char c) {
  return;
}




void
format_number(uint16_t n, uint8_t base, int8_t pad ) {
  char buf[8 * sizeof(long)];
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';

  if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }






  do {



    di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);

    n /= base;
  } while(n > 0);

  while(pad-- > i) buffer_putch(padchar);

  for(; i > 0; i--) {
    buffer_putch((char)buf[(int16_t)i - 1]);

  }
}


void
format_xint32( uint32_t x) {
  buffer_putch('0');
  buffer_putch('x');
  format_number((uint16_t)(x >> 16), 16, -4);
  format_number((uint16_t)(x & 0xffff), 16, -4);
}

void
format_float( float num) {
  short m = (int)log10(num);
  char digit;


  while(num > 0 + (3.05176e-05)) {
    float weight = pow(10.0l, m);
    digit = (char)floor(num / weight);
    num -= (digit * weight);
    buffer_putch('0' + digit);
    if(m == 0)
      buffer_putch('.');
    m--;
  }
}


void
format_double(double num) {
  short m = (short)log10(num);
  short digit;


  while(num > 0 + (1.19209290e-07)) {
    double weight = pow(10.0l, m);
    digit = (short)floor(num / weight);
    num -= (digit * weight);
    buffer_putch((char)('0' + digit));
    if(m == 0)
      buffer_putch('.');
    m--;
  }
}

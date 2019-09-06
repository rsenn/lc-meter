#include "format.h"
#include <math.h>
#include <float.h>

static void
format_putchar(char c) {
  return;
}

putchar_fn* putchar_ptr = format_putchar;

// -------------------------------------------------------------------------
void
format_number(/*putchar_fn* putchar_ptr,*/ uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
  char buf[8 * sizeof(long)]; // Assumes 8-bit chars.
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';

  if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }

  /*  if(n == 0) {
      lcd_putch('0');
      return;
    }*/

  do {
    /*    if(i == pointpos)
          buf[i++] = '.';
    */
    di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);

    n /= base;
  } while(n > 0);

  while(pad-- > i) putchar_ptr(padchar);

  for(; i > 0; i--) putchar_ptr((char)buf[(int16_t)i - 1]);
  //    lcd_putch((buf[i - 1] < 10 ?(char)'0' + buf[i - 1] : (char)'A' + buf[i - 1] - 10));
}

// -------------------------------------------------------------------------
void
format_xint32(/*putchar_fn* putchar,*/ uint32_t x) {
  putchar_ptr('0');
  putchar_ptr('x');
  format_number((uint16_t)(x >> 16), 16, -4);
  format_number((uint16_t)(x & 0xffff), 16, -4);
}

void
format_float(/*putchar_fn* putchar_ptr,*/ float num) {
  short m = (int)log10(num);
  char digit;
  //  float tolerance = .0001;

  while(num > 0 + FLT_EPSILON) {
    float weight = pow(10.0l, m);
    digit = (char)floor(num / weight);
    num -= (digit * weight);
    putchar_ptr('0' + digit);
    if(m == 0)
      putchar_ptr('.');
    m--;
  }
}

// -------------------------------------------------------------------------
void
format_double(double num) {
  short m = (short)log10(num);
  short digit;
  //  double tolerance = .0001;

  while(num > 0 + DBL_EPSILON) {
    double weight = pow(10.0l, m);
    digit = (short)floor(num / weight);
    num -= (digit * weight);
    putchar_ptr((char)('0' + digit));
    if(m == 0)
      putchar_ptr('.');
    m--;
  }
}

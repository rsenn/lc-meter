#include "format.h"
#include <math.h>
#include <float.h>

// -------------------------------------------------------------------------
void
format_number(putchar_p putchar, uint16_t n, uint8_t base, int8_t pad/*, int8_t pointpos*/)
{
  uint8_t buf[8 * sizeof(long)]; // Assumes 8-bit chars.
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';

  if(pad < 0)
  {
    pad = -pad;
    padchar = '0';
  }

  /*  if(n == 0) {
      lcd_putch('0');
      return;
    }*/

  do
  {
    /*    if(i == pointpos)
          buf[i++] = '.';
    */
    di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);

    n /= base;
  }
  while(n > 0);

  while(pad-- > i)
    putchar(padchar);

  for(; i > 0; i--)
    putchar((char)buf[(int16_t)i - 1]);
  //    lcd_putch((buf[i - 1] < 10 ?(char)'0' + buf[i - 1] : (char)'A' + buf[i - 1] - 10));
}
// -------------------------------------------------------------------------
void
format_xint32(putchar_p putchar, uint32_t x)
{
  putchar('0');
  putchar('x');
  format_number(putchar, x >> 16, 16, -4);
  format_number(putchar, x & 0xffff, 16, -4);
}

// -------------------------------------------------------------------------
void
format_double(putchar_p putchar, double num) {
  int m = log10(num);
  int digit;
//  double tolerance = .0001;

  while (num > 0 + DBL_EPSILON) {
    double weight = pow(10.0l, m);
    digit = floor(num / weight);
    num -= (digit * weight);
    putchar('0' + digit);
    if (m == 0)
      putchar('.');
    m--;
  }
}

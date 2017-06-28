#ifndef PICLIB_FORMAT_H
#define PICLIB_FORMAT_H 1

#include "typedef.h"

void
format_number(putchar_p putchar, uint16_t n, uint8_t base, int8_t pad);
void
format_double(putchar_p putchar, double n);

void
format_xint32(putchar_p putchar, uint32_t x);

#endif // defined PICLIB_FORMAT_H


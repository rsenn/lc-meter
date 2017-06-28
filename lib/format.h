#ifndef PICLIB_FORMAT_H
#define PICLIB_FORMAT_H 1

#include "typedef.h"

extern putchar_fn* putchar_ptr;


void
format_number(uint16_t n, uint8_t base, int8_t pad);
void
format_double(double n);

void
format_xint32(uint32_t x);

#endif // defined PICLIB_FORMAT_H


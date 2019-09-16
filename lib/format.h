#ifndef PICLIB_FORMAT_H
#define PICLIB_FORMAT_H 1

#include "typedef.h"

void format_number(/*putchar_fn* pc,*/ uint16_t n, uint8_t base, int8_t pad);

void format_xint32(/*putchar_fn* pc,*/ uint32_t x);

void format_double(/*putchar_fn* pc,*/ double num);

#endif // defined PICLIB_FORMAT_H

#ifndef PICLIB_FORMAT_H
#define PICLIB_FORMAT_H 1

#include "typedef.h"

void format_number(uint16_t n, uint8_t base, int8_t pad);
void format_xint32(uint32_t x);
void format_double(double num);

#endif // defined PICLIB_FORMAT_H

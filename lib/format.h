#ifndef FORMAT_H
#define FORMAT_H 1

#include "typedef.h"

void
format_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad);

#endif // defined FORMAT_H

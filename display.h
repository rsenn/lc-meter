#ifndef DISPLAY_H
#define DISPLAY_H

#include "types.h"

extern const char logo_image[504];

void  display_digit(uint8 line, uint8 column, uint8 digit);
void display_unit(uint8 unit);
void display_reading(uint16 measurement);  //measurement divide by 100
void indicator(uint8 indicate);

void display_print_number(uint16 n, uint8 base, int8 pad);
void display_print_float(float number, uint8 digits);

#undef DISPLAYPRINTFLOAT
#define DISPLAYPRINTNUMBER

#endif // DISPLAY_H
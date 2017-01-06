#ifndef DISPLAY_H
#define DISPLAY_H

#include "typedef.h"

extern const char logo_image[504];

void lcd_print(const char *);
void  print_digit(uint8_t line, uint8_t column, uint8_t digit);
void print_unit(uint8_t unit);
void print_reading(uint16_t measurement);  //measurement divide by 100
void indicator(uint8_t indicate);

void print_print_float(float number, uint8_t digits);


#undef DISPLAYPRINTFLOAT
#define DISPLAYPRINTNUMBER

#endif // DISPLAY_H


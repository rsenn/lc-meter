#ifndef DISPLAY_H
#define DISPLAY_H

#include "../lib/typedef.h"

extern const char logo_image[504];

void put_str(const char*);
void output_putch(char c);
void lcd_puts(const char*);
void print_digit(uint8_t line, uint8_t column, uint8_t digit);
void print_unit(uint8_t unit);
void print_reading(uint16_t measurement); // measurement divide by 100
void print_indicator(uint8_t indicate);
void print_print_float(float number, uint8_t digits);
void print_buffer(void);

#undef DISPLAYPRINTFLOAT
#define DISPLAYPRINTNUMBER

#endif // DISPLAY_H

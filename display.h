#ifndef DISPLAY_H
#define DISPLAY_H

#include "lcd3310.h"
#include "lcd44780.h"

void  display_digit(unsigned char line, unsigned char column, unsigned char digit);
void display_unit(unsigned char unit);
void display_reading(unsigned int measurement);	//measurement divide by 100
void indicator(unsigned char indicate);

#endif // defined DISPLAY_H
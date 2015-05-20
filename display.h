#include "lcd3310.h"
extern const char logo_image[504];

void  display_digit(uint8 line, uint8 column, uint8 digit);
void display_unit(uint8 unit);
void display_reading(unsigned int measurement);  //measurement divide by 100
void indicator(uint8 indicate);
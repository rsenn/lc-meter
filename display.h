#include "main.h"

extern const char logo_image[504];

void  display_digit(uint8 line, uint8 column, uint8 digit);
void display_unit(uint8 unit);
void display_reading(uint16 measurement);  //measurement divide by 100
void indicator(uint8 indicate);
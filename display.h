#include "lcd3310.h"
extern const char logo_image[504];

void  display_digit(unsigned char line, unsigned char column, unsigned char digit);
void display_unit(unsigned char unit);
void display_reading(unsigned int measurement);	//measurement divide by 100
void indicator(unsigned char indicate);
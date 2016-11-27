#include <htc.h>
#include <pic_chip_select.h>
#line 27 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 149 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 184 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;
#include <xc.h>
#include <htc.h>
#include <stdbool.h>
#include <stdint.h>
#line 43 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\display.h"
extern const char logo_image[504];

void lcd_print(const char *);
void display_digit(uint8_t line, uint8_t column, uint8_t digit);
void display_unit(uint8_t unit);
void display_reading(uint16_t measurement); 
void indicator(uint8_t indicate);

void display_print_float(float number, uint8_t digits);
 
#include <htc.h>
#line 11 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
volatile unsigned char OPTION_REG @ 0x081;

volatile bit nRBPU @((unsigned)&OPTION_REG * 8) + 7;
#line 58 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
uint16_t measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(uint16_t period_10ms);
#line 47 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd44780.h"
void lcd_init(char fourbitmode);
void lcd_begin(uint8_t l, uint8_t ds);
void lcd_no_autoscroll(void);
void lcd_autoscroll(void);
void lcd_right_to_left(void);
void lcd_left_to_right(void);
void lcd_scroll_display_right(void);
void lcd_scroll_display_left(void);
void lcd_blink();
void lcd_no_blink();
void lcd_cursor();
void lcd_no_cursor();
void lcd_display();
void lcd_no_display();
void lcd_clear();
void lcd_home();
void lcd_print_number(uint16_t n, uint8_t base, int8_t pad);
void lcd_print_float(float number, uint8_t digits);
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd44780.h"
void lcd_gotoxy(uint8_t col, uint8_t row);
void lcd_putch(char value);
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(void(*putchar)(char), uint16_t n, uint8_t base, int8_t pad);
#line 12 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
lcd_print(const char *string) {
  uint8_t i;
  for(i = 0; string[i]; i++)
    lcd_putch(string[i]);
}
#line 69 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
display_digit(uint8_t line, uint8_t column, uint8_t digit)
{
  #line 83 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
lcd_gotoxy(column, 0);
  lcd_putch('0' + digit);
}
#line 89 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
display_unit(uint8_t unit) {
  #line 100 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
static const char *units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
  lcd_gotoxy(14, 0);
  lcd_print(units[unit]);
  
#line 106 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
}

void
display_reading(uint16_t measurement) {
  #line 135 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
lcd_gotoxy(9, 0);
  lcd_print("     ");
  lcd_gotoxy(9, 0);
  format_number(lcd_putch, measurement / 100, 10, 0);
  lcd_putch('.');
  format_number(lcd_putch, measurement % 100, 10, 0);
}
#line 145 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
indicator(uint8_t indicate) {
  #line 160 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
lcd_gotoxy(0, 1);
  if(indicate) {
    lcd_print("-*-");
  } else {
    lcd_print("   ");
  }
}

#include <htc.h>
#include <pic18_chip_select.h>
#line 18 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
__attribute__((__unsupported__("The flash_write routine is no longer supported. Please use the peripheral library functions: WriteBytesFlash, WriteBlockFlash or WriteWordFlash"))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
#include <errata.h>
	
#line 41 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#line 160 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 162 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 164 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic18.h"
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);
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
 
#line 61 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
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
void lcd_print(const char *string);

void lcd_set_cursor(uint8_t col, uint8_t row);
void lcd_putch(char value);
 
#line 67 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
display_digit(uint8_t line, uint8_t column, uint8_t digit)
{
  #line 81 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
lcd_set_cursor(column, 0);
  lcd_putch('0' + digit);
}
#line 87 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
display_unit(uint8_t unit)
{
  #line 97 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
static const char* units[8] = { "H", "mH", "uH", "nH", "mF", "uF", "nF", "pF" };
  lcd_set_cursor(16, 0);
  lcd_print(units[unit]);
  lcd_set_cursor(16, 1);
  lcd_print(units[unit]);
}
#line 105 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
display_reading(uint16_t measurement)
{
  
  #line 131 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
lcd_set_cursor(4, 0);
  display_print_number(measurement / 100, 10, 0);
  lcd_putch('.');
  display_print_number(measurement % 100, 10, 0);
}
#line 139 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
indicator(uint8_t indicate)
{
  #line 158 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
lcd_set_cursor(0, 0);
  if(indicate)
  {
    lcd_print("-*-");
  }
  else
  {
    lcd_print("   ");
  }
}

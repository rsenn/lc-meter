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
#line 63 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef uint8_t len_t;
#line 15 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef struct {
  char x[16];
  unsigned p:4; 
  unsigned n:4; 
  putchar_p op; 
} buffer_t;
#line 27 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
extern buffer_t buffer;

void buffer_init(putchar_p op);
char buffer_flush();
char buffer_putch(char ch);
char buffer_put(const char *x, len_t len);
char buffer_puts(const char *x);
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
char lcd_putch(char value);
 
#line 64 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
uint8_t ser_getch(void);
char ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char * s);
void ser_puts2(uint8_t * s);
void ser_puthex(uint8_t v);
void ser_init(void);
#line 74 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern uint8_t rxfifo[16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(putchar_p putchar, uint16_t n, uint8_t base, int8_t pad);
#line 20 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
lcd_print(const char *string) {
  uint8_t i;
  for(i = 0; string[i]; i++)
    lcd_putch(string[i]);
}

void
lcd_put(const char* buf, unsigned n) {
  uint8_t i;
  while(n--)
    lcd_putch(*buf++);
}
#line 84 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
display_digit(uint8_t line, uint8_t column, uint8_t digit)
{
  #line 98 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
lcd_gotoxy(column, 0);
  lcd_putch('0' + digit);
}
#line 104 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
display_unit(uint8_t unit) {
  #line 115 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
static const char *units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
  lcd_gotoxy(14, 0);
  buffer_puts(units[unit]);
  
  
lcd_gotoxy(16-(buffer.n-buffer.p), 0);
    
buffer_flush();
  ser_puts("\r\n");
}
#line 127 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
display_reading(uint16_t measurement) {
  #line 155 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
lcd_gotoxy(9, 0);
  lcd_print("     ");
  lcd_gotoxy(9, 0);
  format_number(buffer_putch, measurement / 100, 10, 0);
  buffer_putch('.');
  format_number(buffer_putch, measurement % 100, 10, 0);
#line 164 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
}
#line 167 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
void
indicator(uint8_t indicate) {
  #line 182 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/display.c"
lcd_gotoxy(0, 1);
  if(indicate) {
    lcd_print("-*-");
  } else {
    lcd_print("   ");
  }
}

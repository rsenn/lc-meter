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
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
#line 68 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
#line 12 "C:/Users\\roman\\Documents\\lc-meter\\lib\\buffer.h"
typedef unsigned char len_t;
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
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\print.h"
extern const char logo_image[504];

void lcd_print(const char *);
void print_digit(unsigned char line, unsigned char column, unsigned char digit);
void print_unit(unsigned char unit);
void print_reading(unsigned short int measurement); 
void indicator(unsigned char indicate);

void print_print_float(float number, unsigned char digits);
 
#include <htc.h>
#line 73 "C:/Users\\roman\\Documents\\lc-meter\\src\\LC-meter.h"
unsigned short int measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(unsigned short int period_10ms);
#line 47 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd44780.h"
void lcd_init(char fourbitmode);
void lcd_begin(unsigned char l, unsigned char ds);
void lcd_no_autoscroll(void);
void lcd_autoscroll(void);
void lcd_right_to_left(void);
void lcd_left_to_right(void);
void lcd_scroll_print_right(void);
void lcd_scroll_print_left(void);
void lcd_blink();
void lcd_no_blink();
void lcd_cursor();
void lcd_no_cursor();
void lcd_display();
void lcd_no_display();
void lcd_clear();
void lcd_home();
void lcd_print_number(unsigned short int n, unsigned char base, signed char pad);
void lcd_print_float(float number, unsigned char digits);
void lcd_print(const char *string);

void lcd_gotoxy(unsigned char col, unsigned char row);
char lcd_putch(char value);
 
#line 64 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
bit ser_isrx(void);
unsigned char ser_getch(void);
char ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char * s);
void ser_puts2(unsigned char * s);
void ser_puthex(unsigned char v);
void ser_init(void);
#line 74 "C:/Users\\roman\\Documents\\lc-meter\\lib\\ser.h"
extern unsigned char rxfifo[16];
extern volatile unsigned char rxiptr, rxoptr;
extern unsigned char txfifo[16];
extern volatile unsigned char txiptr, txoptr;
extern unsigned char ser_tmp;
extern unsigned char ser_brg;
 
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\lib\\format.h"
void
format_number(putchar_p putchar, unsigned short int n, unsigned char base, signed char pad);
void
format_double(putchar_p putchar, double n);

void
format_xint32(putchar_p putchar, unsigned long int x);
#line 29 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
void
lcd_put(const char* buf, unsigned n) {
  unsigned char i;
  while(n--)
    lcd_putch(*buf++);
}
#line 86 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
void
print_digit(unsigned char line, unsigned char column, unsigned char digit)
{
  #line 100 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
lcd_gotoxy(column, 0);
  lcd_putch('0' + digit);
}
#line 106 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
void
print_unit(unsigned char unit) {
  #line 117 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
static const char *units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
  lcd_gotoxy(14, 0);
  buffer_puts(units[unit]);
  
  
lcd_gotoxy(16-(buffer.n-buffer.p), 0);
    
buffer_flush();
  ser_puts("\r\n");
}
#line 129 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
void
print_reading(unsigned short int measurement) {
  #line 157 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
lcd_gotoxy(9, 0);
  lcd_print("     ");
  lcd_gotoxy(9, 0);
  format_number(buffer_putch, measurement / 100, 10, 0);
  buffer_putch('.');
  format_number(buffer_putch, measurement % 100, 10, 0);
#line 166 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
}
#line 169 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
void
indicator(unsigned char indicate) {
  #line 184 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/print.c"
lcd_gotoxy(0, 1);
  if(indicate) {
    lcd_print("-*-");
  } else {
    lcd_print("   ");
  }
}

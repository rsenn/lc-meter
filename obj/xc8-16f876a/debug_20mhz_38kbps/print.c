#include <htc.h>
#include <pic_chip_select.h>
#line 27 "/opt/microchip/xc8/v1.43/include/pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 192 "/opt/microchip/xc8/v1.43/include/pic.h"
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;
#include <stdint.h>
#line 53 "/home/roman/Projects/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 12 "/home/roman/Projects/lc-meter/lib/buffer.h"
typedef uint8_t len_t;

typedef struct {
  char x[16];
  unsigned p : 4; 
  unsigned n : 4; 
} buffer_t;
#line 26 "/home/roman/Projects/lc-meter/lib/buffer.h"
extern buffer_t buffer;

void buffer_init(void);
char buffer_flush(void);
char buffer_putc(char ch);
void buffer_putch(char ch);
char buffer_put(const char* x, len_t len);
char buffer_puts(const char* x);
#line 6 "/home/roman/Projects/lc-meter/src/print.h"
extern const char logo_image[504];

void put_str(const char*);
void output_putch(char c);
void lcd_puts(const char*);
void print_digit(uint8_t line, uint8_t column, uint8_t digit);
void print_unit(uint8_t unit);
void print_reading(uint16_t measurement); 
void print_indicator(uint8_t indicate);
void print_print_float(float number, uint8_t digits);
void print_buffer(void);
#include <xc.h>
#line 48 "/home/roman/Projects/lc-meter/lib/lcd44780.h"
void lcd_init(char fourbitmode);
void lcd_begin(uint8_t l, uint8_t ds);
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
void lcd_print_number(uint16_t n, uint8_t base, int8_t pad);
void lcd_print_float(float number, uint8_t digits);
void lcd_puts(const char* string);

void lcd_gotoxy(uint8_t col, uint8_t row);
void lcd_putch(char value);
void lcd_send(uint8_t value, uint8_t mode);
#line 48 "/home/roman/Projects/lc-meter/lib/ser.h"
extern uint8_t ser_rxfifo[(uint8_t)16];
extern volatile uint8_t ser_rxiptr, ser_rxoptr;
extern uint8_t ser_txfifo[(uint8_t)16];
extern volatile uint8_t ser_txiptr, ser_txoptr;
extern uint8_t ser_tmp;

char ser_isrx(void);
unsigned char ser_rxsize(void);
uint8_t ser_getch(void);
void ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char* s);
void ser_puts2(uint8_t* s);
void ser_puthex(uint8_t v);
void ser_init(void);

uint8_t ser_rxat(unsigned char at);
unsigned char ser_size(void);
#line 68 "/home/roman/Projects/lc-meter/lib/ser.h"
extern uint8_t ser_rxfifo[(uint8_t)16];
extern volatile uint8_t ser_rxiptr, ser_rxoptr;
extern uint8_t ser_txfifo[(uint8_t)16];
extern volatile uint8_t ser_txiptr, ser_txoptr;
extern uint8_t ser_tmp;
extern uint8_t ser_brg;
#line 5 "/home/roman/Projects/lc-meter/lib/format.h"
typedef void(*putch_t)(char);

void format_number(putch_t fn, uint16_t n, uint8_t base, int8_t pad);
void format_xint32(putch_t fn, uint32_t x);
void format_double(putch_t fn, double num);
void format_float(putch_t fn, float num);
#line 22 "/home/roman/Projects/lc-meter/obj/../src/print.c"
void
lcd_put(const char* buf, unsigned n) {
  uint8_t i;
  while(n--) lcd_putch(*buf++);
}
#line 378 "/home/roman/Projects/lc-meter/obj/../src/print.c"
void
print_digit(uint8_t line, uint8_t column, uint8_t digit) {
  #line 394 "/home/roman/Projects/lc-meter/obj/../src/print.c"
lcd_gotoxy(column, 0);
  lcd_putch('0' + digit);
}
#line 400 "/home/roman/Projects/lc-meter/obj/../src/print.c"
void
print_unit(uint8_t unit) {
  #line 409 "/home/roman/Projects/lc-meter/obj/../src/print.c"
static const char* units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
  lcd_gotoxy(14, 0);
  
  
  
lcd_gotoxy(16 - (buffer.n - buffer.p), 0);
  
#line 421 "/home/roman/Projects/lc-meter/obj/../src/print.c"
}

void
print_reading(uint16_t measurement) {
  #line 451 "/home/roman/Projects/lc-meter/obj/../src/print.c"
lcd_gotoxy(9, 0);
  lcd_puts("     ");
  lcd_gotoxy(9, 0);
  
  format_number(&buffer_putch, measurement / 100, 10, 0);
  
  format_number(&buffer_putch, measurement % 100, 10, 0);
#line 460 "/home/roman/Projects/lc-meter/obj/../src/print.c"
}
#line 463 "/home/roman/Projects/lc-meter/obj/../src/print.c"
void
print_indicator(uint8_t indicate) {
  #line 478 "/home/roman/Projects/lc-meter/obj/../src/print.c"
lcd_gotoxy(0, 1);
  if(indicate) {
    lcd_puts("-*-");
  } else {
    lcd_puts("   ");
  }
}
#line 487 "/home/roman/Projects/lc-meter/obj/../src/print.c"
void
output_putch(char c) {
  
lcd_putch(c);
  #line 493 "/home/roman/Projects/lc-meter/obj/../src/print.c"
ser_putch(c);
}
#line 500 "/home/roman/Projects/lc-meter/obj/../src/print.c"
void
put_str(const char* s) {
  int i;
  
for(i = 0; s[i]; i++) {
    output_putch(s[i]);
  }
}

void
print_buffer(void) {
  
uint8_t i;
  for(i = 0; i < buffer.n; i++) {
    ser_putch(buffer.x[i]);
  }
  ser_puts("\r\n");
}

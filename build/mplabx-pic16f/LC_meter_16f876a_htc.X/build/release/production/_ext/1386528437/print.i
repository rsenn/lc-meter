# 1 "../../../src/print.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "../../../src/print.c" 2
# 1 "../../../lib\\buffer.h" 1



# 1 "../../../lib/typedef.h" 1
# 22 "../../../lib/typedef.h"
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 1 3
# 13 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;
# 52 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;
# 88 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_least24_t;
# 118 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef signed long int int_least32_t;
# 136 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;
# 181 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;
# 224 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;
# 268 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef int32_t intmax_t;
# 282 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.10\\pic\\include\\c90\\stdint.h" 3
typedef uint32_t uintmax_t;






typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 23 "../../../lib/typedef.h" 2
# 56 "../../../lib/typedef.h"
typedef char BOOL;
# 5 "../../../lib\\buffer.h" 2







typedef uint8_t len_t;

typedef struct {
  char x[16];
  unsigned p : 4;
  unsigned n : 4;
} buffer_t;







extern buffer_t buffer;

void buffer_init(void);
char buffer_flush(void);
char buffer_putch(char ch);
char buffer_put(const char* x, len_t len);
char buffer_puts(const char* x);
# 2 "../../../src/print.c" 2
# 1 "../../../src/print.h" 1





extern const char logo_image[504];

void put_str(const char*);
void output_putch(char c); void lcd_puts(const char*);
void print_digit(uint8_t line, uint8_t column, uint8_t digit);
void print_unit(uint8_t unit);
void print_reading(uint16_t measurement);
void print_indicator(uint8_t indicate);
void print_print_float(float number, uint8_t digits);
void print_buffer(void);
# 3 "../../../src/print.c" 2
# 16 "../../../src/print.c"
# 1 "../../../lib\\ser.h" 1
# 48 "../../../lib\\ser.h"
char ser_isrx(void);
uint8_t ser_getch(void);
void ser_putch(char byte);
void ser_put(const char* s, unsigned n);
void ser_puts(const char* s);
void ser_puts2(uint8_t* s);
void ser_puthex(uint8_t v);
void ser_init(void);


extern uint8_t rxfifo[(uint8_t)16];
extern volatile uint8_t rxiptr, rxoptr;
extern uint8_t txfifo[(uint8_t)16];
extern volatile uint8_t txiptr, txoptr;
extern uint8_t ser_tmp;

extern uint8_t ser_brg;
# 17 "../../../src/print.c" 2


# 1 "../../../lib\\format.h" 1





void format_number(uint16_t n, uint8_t base, int8_t pad);
void format_xint32(uint32_t x);
void format_double(double num);
# 20 "../../../src/print.c" 2


void
lcd_put(const char* buf, unsigned n) {




}
# 100 "../../../src/print.c"
void
print_digit(uint8_t line, uint8_t column, uint8_t digit) {
# 119 "../../../src/print.c"
}


void
print_unit(uint8_t unit) {
# 143 "../../../src/print.c"
}

void
print_reading(uint16_t measurement) {
# 182 "../../../src/print.c"
}


void
print_indicator(uint8_t indicate) {
# 207 "../../../src/print.c"
}

void
output_putch(char c) {




  ser_putch(c);

}




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

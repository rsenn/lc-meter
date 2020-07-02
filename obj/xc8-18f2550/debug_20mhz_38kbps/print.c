#include <htc.h>
#include <pic18_chip_select.h>
#line 18 "/opt/microchip/xc8/v1.45/include/pic18.h"
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);
#include <errata.h>
	
#line 42 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#line 135 "/opt/microchip/xc8/v1.45/include/pic18.h"
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
#line 155 "/opt/microchip/xc8/v1.45/include/pic18.h"
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
#line 163 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 165 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(_delaywdt)
extern __nonreentrant void _delaywdt(unsigned long);
#line 167 "/opt/microchip/xc8/v1.45/include/pic18.h"
#pragma intrinsic(_delay3)
extern __nonreentrant void _delay3(unsigned char);
#include <stdint.h>
#line 53 "/home/roman/Dokumente/Sources/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 12 "/home/roman/Dokumente/Sources/lc-meter/lib/buffer.h"
typedef uint8_t len_t;

typedef struct {
  char x[16];
  unsigned p : 4; 
  unsigned n : 4; 
} buffer_t;
#line 26 "/home/roman/Dokumente/Sources/lc-meter/lib/buffer.h"
extern buffer_t buffer;

void buffer_init(void);
char buffer_flush(void);
char buffer_putch(char ch);
char buffer_put(const char* x, len_t len);
char buffer_puts(const char* x);
#line 6 "/home/roman/Dokumente/Sources/lc-meter/src/print.h"
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
#line 5 "/home/roman/Dokumente/Sources/lc-meter/lib/format.h"
typedef void(putch_t)(char);
#line 8 "/home/roman/Dokumente/Sources/lc-meter/lib/format.h"
void format_number(putch_t fn,uint16_t n, uint8_t base, int8_t pad);
void format_xint32(putch_t fn,uint32_t x);
void format_double(putch_t fn,double num);
#line 22 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
void
lcd_put(const char* buf, unsigned n) {
}
#line 378 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
void
print_digit(uint8_t line, uint8_t column, uint8_t digit) {
#line 397 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
}
#line 400 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
void
print_unit(uint8_t unit) {
#line 421 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
}

void
print_reading(uint16_t measurement) {
#line 460 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
}
#line 463 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
void
print_indicator(uint8_t indicate) {
#line 485 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
}

void
output_putch(char c) {
#line 495 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
}
#line 500 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
void
put_str(const char* s) {
  int i;
  
for(i = 0; s[i]; i++) {
    output_putch(s[i]);
  }
}

void
print_buffer(void) {
#line 518 "/home/roman/Dokumente/Sources/lc-meter/obj/../src/print.c"
}
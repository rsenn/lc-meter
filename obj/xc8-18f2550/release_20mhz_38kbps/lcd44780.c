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
#line 53 "/home/roman/Projects/lc-meter/lib/typedef.h"
typedef char BOOL;
#line 49 "/home/roman/Projects/lc-meter/lib/tsmdelay.h"
typedef struct dvars {
  uint8_t loop_x, loop_b, loop_c;
} dvars;
#line 67 "/home/roman/Projects/lc-meter/lib/tsmdelay.h"
extern dvars dvar;
#line 77 "/home/roman/Projects/lc-meter/lib/tsmdelay.h"
void cycle_eater(void);
#line 47 "/home/roman/Projects/lc-meter/lib/delay.h"
void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);
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
#include <stdarg.h>
#include <stdio.h>
#line 15 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
static uint8_t LCD_function, LCD_ctrl, LCD_mode
    ,
    LCD_lines
    ;
#line 33 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
static void
lcd_write4bits(uint8_t value) {
  #line 39 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
LATB &= 0b00001111;
  LATB |= value << 4;
  
  #line 55 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
LATB |= 0b1000; _delay((unsigned long)((4)*(20000000/4000000.0))); LATB &= ~0b1000; _delay((unsigned long)((100)*(20000000/4000000.0)));;
#line 60 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
}
#line 102 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_send(uint8_t value, uint8_t mode) {
  if(mode) {
    LATB |= 0b0100;
  } else {
    LATB &= ~0b0100;
  }
  #line 115 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
{
    lcd_write4bits(value >> 4); 
    lcd_write4bits(value); 
  }
}
#line 126 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
static void
lcd_command(uint8_t value) {
  lcd_send(value, 0);
}
#line 134 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_gotoxy(uint8_t col, uint8_t row) {
  
  uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
  
  
  #line 146 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
if(LCD_lines == 1) {
    row_offsets[1] = 0x14;
    row_offsets[2] = 0x28;
    row_offsets[3] = 0x3C;
  }
  
  #line 156 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
lcd_command(0x80 | (col + row_offsets[row]));
}
#line 162 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_puts(const char* string) {
  uint8_t i;
  for(i = 0; string[i]; i++) lcd_putch(string[i]);
}
#line 169 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_putch(char value) {
  lcd_send((unsigned char)value, 1);
}
#line 196 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_print_number(uint16_t n, uint8_t base, int8_t pad ) {
  uint8_t buf[8 * sizeof(long)]; 
  uint8_t di;
  int8_t i = 0;
  char padchar = ' ';
  
if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }
  
  #line 213 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
do {
    
    #line 217 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
    
n /= base;
  } while(n > 0);
  
while(pad-- >= i) lcd_putch(padchar);
  
for(; i > 0; i--) lcd_putch((char)buf[(int16_t)i - 1]);
  
}
#line 280 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_home() {
  lcd_command(0x02);
  _delay((unsigned long)((2)*(20000000/4000.0))); 
  
}
#line 291 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_clear() {
  lcd_command(0x01); 
  _delay((unsigned long)((2)*(20000000/4000.0))); 
  
}
#line 311 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_display() {
  LCD_ctrl |= 0x04;
  lcd_command(0x08 | LCD_ctrl);
}
#line 321 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_no_cursor() {
  LCD_ctrl &= ~0x02;
  lcd_command(0x08 | LCD_ctrl);
}
#line 330 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_cursor() {
  LCD_ctrl |= 0x02;
  lcd_command(0x08 | LCD_ctrl);
}
#line 349 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_blink() {
  LCD_ctrl |= 0x01;
  lcd_command(0x08 | LCD_ctrl);
}
#line 376 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_left_to_right(void) {
  LCD_mode |= 0x02;
  lcd_command(0x04 | LCD_mode);
}
#line 396 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_autoscroll(void) {
  LCD_mode |= 0x01;
  lcd_command(0x04 | LCD_mode);
}
#line 415 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_begin(uint8_t lines, uint8_t dotsize) {
  if(lines > 1)
    LCD_function |= 0x08;
  #line 421 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
LCD_lines = lines;
   
  #line 425 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
if((dotsize != 0) && (lines == 1))
    LCD_function |= 0x04;
  
_delay((unsigned long)((15)*(20000000/4000.0))); 
   
  
LATB &= ~0b0100;
  LATB &= ~0b1000;
   
  
if(!(LCD_function & 0x10)) {
     
     
    
lcd_write4bits(0x03);
    _delay((unsigned long)((5)*(20000000/4000.0))); 
     
    lcd_write4bits(0x03);
    _delay((unsigned long)((150)*(20000000/4000000.0))); 
     
    lcd_write4bits(0x03);
    _delay((unsigned long)((150)*(20000000/4000000.0))); 
     
    lcd_write4bits(0x02);
  }
   
  else {
     
     
    
lcd_command(0x20 | LCD_function);
    _delay((unsigned long)((5)*(20000000/4000.0))); 
     
    
lcd_command(0x20 | LCD_function);
    _delay((unsigned long)((5)*(20000000/4000.0))); 
    
     
    
lcd_command(0x20 | LCD_function);
  }
   
  
lcd_command(0x20 | LCD_function);
   
  
LCD_ctrl = 0x04 | 0x00 | 0x00;
  lcd_command(0x08 | LCD_ctrl);
   
  
lcd_command(0x01); 
  _delay((unsigned long)((2)*(20000000/4000.0)));
   
  
LCD_mode = 0x02 | 0x00;
   
  lcd_command(0x04 | LCD_mode);
}
#line 488 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
void
lcd_init(char fourbitmode) {
  
LCD_ctrl = 0;
  LCD_function = (fourbitmode ? 0x00 : 0x10);
  LCD_lines = 0;
  LCD_mode = 0;
  #line 498 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
TRISB &= ~0b0100;
  LATB &= ~0b0100;
  #line 504 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
TRISB &= ~0b1000;
  LATB &= ~0b1000;
  
LATB &= ~0b11110000;
#line 517 "/home/roman/Projects/lc-meter/obj/../lib/lcd44780.c"
}

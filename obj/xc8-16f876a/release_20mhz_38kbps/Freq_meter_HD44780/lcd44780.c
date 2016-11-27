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
 
#line 49 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
typedef struct dvars {
  uint8_t loop_x, loop_b, loop_c;
} dvars;
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
extern dvars dvar;
#line 77 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
void cycle_eater(void);
 
#line 22 "C:/Users\\roman\\Documents\\lc-meter\\lib\\delay.h"
void delay_ms(uint16_t milliseconds);
void delay_us(uint16_t microseconds);

void Delay100TCYx(uint8_t);
void Delay10KTCYx(uint8_t);
void Delay10TCYx(uint8_t);
void Delay1KTCYx(uint8_t);
 
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
 
#include <stdarg.h>
#include <stdio.h>
#line 39 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
static uint8_t LCD_function, LCD_ctrl, LCD_mode
, LCD_lines
;
#line 47 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_pulse_enable(void) {
  
  
  
RB3 = 1;
  _delay((unsigned long)((4)*(20000000/4000000.0))); 
  RB3 = 0;
  _delay((unsigned long)((100)*(20000000/4000000.0))); 
}
#line 60 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
static void
lcd_write4bits(uint8_t value) {
  #line 66 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
RB4 = value & 1;
  value >>= 1;
  RB5 = value & 1;
  value >>= 1;
  RB6 = value & 1;
  value >>= 1;
  RB7 = value & 1;
  #line 78 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
lcd_pulse_enable();
#line 83 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
}
#line 127 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
static void
lcd_send(uint8_t value, uint8_t mode) {
  RB2 = mode;
  #line 136 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
{
    lcd_write4bits(value >> 4); 
    lcd_write4bits(value); 
  }
}
#line 144 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
char
lcd_putch(char value) {
  lcd_send((unsigned)value, 1);
  return 1;
}
#line 152 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
static void
lcd_command(uint8_t value) {
  lcd_send(value, 0);
}
#line 160 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_gotoxy(uint8_t col, uint8_t row) {
  
uint8_t row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };
  
  #line 172 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
if(LCD_lines == 1) {
    row_offsets[1] = 0x14;
    row_offsets[2] = 0x28;
    row_offsets[3] = 0x3C;
  }
  
  #line 182 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
lcd_command(0x80 | (col + row_offsets[row]));
}
#line 216 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_print_number(uint16_t n, uint8_t base, int8_t pad ) {
  uint8_t buf[8 * sizeof(long)]; 
  uint8_t di;
  uint8_t i = 0;
  char padchar = ' ';
  
if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }
  
  #line 233 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
do {
    
    #line 237 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
di = n % base;
    buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
    
n /= base;
  } while(n > 0);
  
while(pad-- >= i)
    lcd_putch(padchar);
  
for(; i > 0; i--)
    lcd_putch((char)buf[(int16_t)i - 1]);

}
#line 302 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_home() {
  lcd_command(0x02);
  delay_ms(2); 
  
}
#line 313 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_clear() {
  lcd_command(0x01); 
  delay_ms(2); 
  
}
#line 333 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_display() {
  LCD_ctrl |= 0x04;
  lcd_command(0x08 | LCD_ctrl);
}
#line 343 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_no_cursor() {
  LCD_ctrl &= ~0x02;
  lcd_command(0x08 | LCD_ctrl);
}
#line 352 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_cursor() {
  LCD_ctrl |= 0x02;
  lcd_command(0x08 | LCD_ctrl);
}
#line 371 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_blink() {
  LCD_ctrl |= 0x01;
  lcd_command(0x08 | LCD_ctrl);
}
#line 398 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_left_to_right(void) {
  LCD_mode |= 0x02;
  lcd_command(0x04 | LCD_mode);
}
#line 418 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_autoscroll(void) {
  LCD_mode |= 0x01;
  lcd_command(0x04 | LCD_mode);
}
#line 437 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_begin(uint8_t lines, uint8_t dotsize) {
  if(lines > 1)
    LCD_function |= 0x08;
  #line 443 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
LCD_lines = lines;
   
  #line 447 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
if((dotsize != 0) && (lines == 1))
    LCD_function |= 0x04;
  
delay_ms(15); 
   
  
RB2 = 0;
  RB3 = 0;
   
  
if(!(LCD_function & 0x10)) {
     
     
    
lcd_write4bits(0x03);
    delay_ms(5); 
     
    lcd_write4bits(0x03);
    _delay((unsigned long)((150)*(20000000/4000000.0))); 
     
    lcd_write4bits(0x03);
    _delay((unsigned long)((150)*(20000000/4000000.0))); 
     
    lcd_write4bits(0x02);
  }
   
  else {
     
     
    
lcd_command(0x20 | LCD_function);
    delay_ms(5); 
     
    
lcd_command(0x20 | LCD_function);
    delay_ms(5); 
    
     
    
lcd_command(0x20 | LCD_function);
  }
   
  
lcd_command(0x20 | LCD_function);
   
  
LCD_ctrl = 0x04 | 0x00 | 0x00;
  lcd_command(0x08 | LCD_ctrl);
   
  
lcd_command(0x01); 
  delay_ms(2);
   
  
LCD_mode = 0x02 | 0x00;
   
  lcd_command(0x04 | LCD_mode);
}
#line 510 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_init(char fourbitmode) {
  
LCD_ctrl = 0;
  LCD_function = (fourbitmode ? 0x00 : 0x10);
  LCD_lines = 0;
  LCD_mode = 0;
  #line 520 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
TRISB2 = 0;
  RB2 = 0;
  #line 526 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
TRISB3 = 0;
  RB3 = 0;
  
TRISB4 = 0; 
  TRISB5 = 0; 
  TRISB6 = 0; 
  TRISB7 = 0; 
#line 542 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
}
 

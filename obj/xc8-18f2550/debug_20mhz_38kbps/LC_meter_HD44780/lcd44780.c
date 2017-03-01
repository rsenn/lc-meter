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
#line 48 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char BOOL;
#line 68 "C:/Users\\roman\\Documents\\lc-meter\\lib\\typedef.h"
typedef char (putchar_fn)(char);
typedef putchar_fn* putchar_p;
 
#line 49 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
typedef struct dvars {
  unsigned char loop_x, loop_b, loop_c;
} dvars;
#line 67 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
extern dvars dvar;
#line 77 "C:/Users\\roman\\Documents\\lc-meter\\lib\\tsmdelay.h"
void cycle_eater(void);
 
#line 22 "C:/Users\\roman\\Documents\\lc-meter\\lib\\delay.h"
void delay_ms(unsigned short int milliseconds);
void delay_us(unsigned short int microseconds);

void Delay100TCYx(unsigned char);
void Delay10KTCYx(unsigned char);
void Delay10TCYx(unsigned char);
void Delay1KTCYx(unsigned char);
 
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
 
#include <stdarg.h>
#include <stdio.h>
#line 39 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
static unsigned char LCD_function, LCD_ctrl, LCD_mode
, LCD_lines
;
 
  
#line 55 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
static void
lcd_write4bits(unsigned char value) {
  #line 61 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
LATB4 = value & 1;
  value >>= 1;
  LATB5 = value & 1;
  value >>= 1;
  LATB6 = value & 1;
  value >>= 1;
  LATB7 = value & 1;
  #line 73 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
LATB3 = 1; _delay((unsigned long)((4)*(20000000/4000000.0))); LATB3 = 0; _delay((unsigned long)((100)*(20000000/4000000.0)));;
#line 78 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
}
#line 122 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
static void
lcd_send(unsigned char value, unsigned char mode) {
  LATB2 = mode;
  #line 131 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
{
    lcd_write4bits(value >> 4); 
    lcd_write4bits(value); 
  }
}
#line 139 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
char
lcd_putch(char value) {
  lcd_send((unsigned)value, 1);
  return 1;
}
#line 147 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
static void
lcd_command(unsigned char value) {
  lcd_send(value, 0);
}
#line 155 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_gotoxy(unsigned char col, unsigned char row) {
  
unsigned char row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };
  
  #line 167 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
if(LCD_lines == 1) {
    row_offsets[1] = 0x14;
    row_offsets[2] = 0x28;
    row_offsets[3] = 0x3C;
  }
  
  #line 177 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
lcd_command(0x80 | (col + row_offsets[row]));
}
#line 183 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_print(const char *string) {
  unsigned char i;
  for(i = 0; string[i]; i++)
    lcd_putch(string[i]);
}
#line 211 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_print_number(unsigned short int n, unsigned char base, signed char pad ) {
  unsigned char buf[8 * sizeof(long)]; 
  unsigned char di;
  unsigned char i = 0;
  char padchar = ' ';
  
if(pad < 0) {
    pad = -pad;
    padchar = '0';
  }
  
  #line 228 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
do {
    
    #line 232 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
di = n % base;
    buf[i++] = (di < 10 ? (unsigned char)'0' + di : (unsigned char)'A' + di - 10);
    
n /= base;
  } while(n > 0);
  
while(pad-- >= i)
    lcd_putch(padchar);
  
for(; i > 0; i--)
    lcd_putch((char)buf[(signed short int)i - 1]);

}
#line 297 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_home() {
  lcd_command(0x02);
  _delay((unsigned long)((2)*(20000000/4000.0))); 
  
}
#line 308 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_clear() {
  lcd_command(0x01); 
  _delay((unsigned long)((2)*(20000000/4000.0))); 
  
}
#line 328 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_display() {
  LCD_ctrl |= 0x04;
  lcd_command(0x08 | LCD_ctrl);
}
#line 338 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_no_cursor() {
  LCD_ctrl &= ~0x02;
  lcd_command(0x08 | LCD_ctrl);
}
#line 347 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_cursor() {
  LCD_ctrl |= 0x02;
  lcd_command(0x08 | LCD_ctrl);
}
#line 366 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_blink() {
  LCD_ctrl |= 0x01;
  lcd_command(0x08 | LCD_ctrl);
}
#line 393 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_left_to_right(void) {
  LCD_mode |= 0x02;
  lcd_command(0x04 | LCD_mode);
}
#line 413 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_autoscroll(void) {
  LCD_mode |= 0x01;
  lcd_command(0x04 | LCD_mode);
}
#line 432 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_begin(unsigned char lines, unsigned char dotsize) {
  if(lines > 1)
    LCD_function |= 0x08;
  #line 438 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
LCD_lines = lines;
   
  #line 442 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
if((dotsize != 0) && (lines == 1))
    LCD_function |= 0x04;
  
_delay((unsigned long)((15)*(20000000/4000.0))); 
   
  
LATB2 = 0;
  LATB3 = 0;
   
  
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
#line 505 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
void
lcd_init(char fourbitmode) {
  
LCD_ctrl = 0;
  LCD_function = (fourbitmode ? 0x00 : 0x10);
  LCD_lines = 0;
  LCD_mode = 0;
  #line 515 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
TRISB2 = 0;
  LATB2 = 0;
  #line 521 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
TRISB3 = 0;
  LATB3 = 0;
  
TRISB4 = 0; 
  TRISB5 = 0; 
  TRISB6 = 0; 
  TRISB7 = 0; 
#line 537 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd44780.c"
}
 

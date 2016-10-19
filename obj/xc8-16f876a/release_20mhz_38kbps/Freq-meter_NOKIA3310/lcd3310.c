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
 
#line 28 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd3310.h"
uint8_t lcd_str_width(const char *c);
void lcd_send(uint8_t a, uint8_t cmd);
void lcd_init(void);
void lcd_test(void);
void lcd_clear(void);
void lcd_gotoxy(uint8_t x, unsigned y);
void lcd_putch(uint8_t c);
void lcd_puts(const char *s);
void lcd_puts2(char *s);
void lcd_clear_line(uint8_t y);
void lcd_center_puts(uint8_t y, const char *c);
void lcd_center_puts2(uint8_t y, char *c, uint8_t len);
#line 42 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd3310.h"
void lcd_battery(uint8_t chg);
#line 46 "C:/Users\\roman\\Documents\\lc-meter\\lib\\lcd3310.h"
void lcd_symbol(const char *sym);
#line 23 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
const char lcd_font[][5] =
{
  { 0x00, 0x00, 0x00, 0x00, 0x00 }, 
  { 0x00, 0x00, 0x2f, 0x00, 0x00 }, 
  { 0x00, 0x07, 0x00, 0x07, 0x00 }, 
  { 0x14, 0x7f, 0x14, 0x7f, 0x14 }, 
  { 0x24, 0x2a, 0x7f, 0x2a, 0x12 }, 
  
  {
    0b00100011, 
    0b00010011,
    0b00001000,
    0b01100100,
    0b01100010
  },
  { 0x36, 0x49, 0x55, 0x22, 0x50 }, 
  { 0x00, 0x05, 0x03, 0x00, 0x00 }, 
  { 0x00, 0x1c, 0x22, 0x41, 0x00 }, 
  { 0x00, 0x41, 0x22, 0x1c, 0x00 }, 
  { 0x14, 0x08, 0x3E, 0x08, 0x14 }, 
  { 0x08, 0x08, 0x3E, 0x08, 0x08 }, 
  { 0x00, 0x00, 0x50, 0x30, 0x00 }, 
  { 0x10, 0x10, 0x10, 0x10, 0x10 }, 
  { 0x00, 0x60, 0x60, 0x00, 0x00 }, 
  { 0x20, 0x10, 0x08, 0x04, 0x02 }, 
  { 0x3E, 0x51, 0x49, 0x45, 0x3E }, 
  { 0x00, 0x42, 0x7F, 0x40, 0x00 }, 
  { 0x42, 0x61, 0x51, 0x49, 0x46 }, 
  { 0x21, 0x41, 0x45, 0x4B, 0x31 }, 
  { 0x18, 0x14, 0x12, 0x7F, 0x10 }, 
  { 0x27, 0x45, 0x45, 0x45, 0x39 }, 
  { 0x3C, 0x4A, 0x49, 0x49, 0x30 }, 
  { 0x01, 0x71, 0x09, 0x05, 0x03 }, 
  { 0x36, 0x49, 0x49, 0x49, 0x36 }, 
  { 0x06, 0x49, 0x49, 0x29, 0x1E }, 
  { 0x00, 0x36, 0x36, 0x00, 0x00 }, 
  { 0x00, 0x56, 0x36, 0x00, 0x00 }, 
  { 0x08, 0x14, 0x22, 0x41, 0x00 }, 
  { 0x14, 0x14, 0x14, 0x14, 0x14 }, 
  { 0x00, 0x41, 0x22, 0x14, 0x08 }, 
  { 0x02, 0x01, 0x51, 0x09, 0x06 }, 
  { 0x32, 0x49, 0x59, 0x51, 0x3E }, 
  { 0x7E, 0x11, 0x11, 0x11, 0x7E }, 
  { 0x7F, 0x49, 0x49, 0x49, 0x36 }, 
  { 0x3E, 0x41, 0x41, 0x41, 0x22 }, 
  { 0x7F, 0x41, 0x41, 0x22, 0x1C }, 
  { 0x7F, 0x49, 0x49, 0x49, 0x41 }, 
  { 0x7F, 0x09, 0x09, 0x09, 0x01 }, 
  { 0x3E, 0x41, 0x49, 0x49, 0x7A }, 
  { 0x7F, 0x08, 0x08, 0x08, 0x7F }, 
  { 0x00, 0x41, 0x7F, 0x41, 0x00 }, 
  { 0x20, 0x40, 0x41, 0x3F, 0x01 }, 
  { 0x7F, 0x08, 0x14, 0x22, 0x41 }, 
  { 0x7F, 0x40, 0x40, 0x40, 0x40 }, 
  { 0x7F, 0x02, 0x0C, 0x02, 0x7F }, 
  { 0x7F, 0x04, 0x08, 0x10, 0x7F }, 
  { 0x3E, 0x41, 0x41, 0x41, 0x3E }, 
  { 0x7F, 0x09, 0x09, 0x09, 0x06 }, 
  { 0x3E, 0x41, 0x51, 0x21, 0x5E }, 
  { 0x7F, 0x09, 0x19, 0x29, 0x46 }, 
  { 0x46, 0x49, 0x49, 0x49, 0x31 }, 
  { 0x01, 0x01, 0x7F, 0x01, 0x01 }, 
  { 0x3F, 0x40, 0x40, 0x40, 0x3F }, 
  { 0x1F, 0x20, 0x40, 0x20, 0x1F }, 
  { 0x3F, 0x40, 0x38, 0x40, 0x3F }, 
  { 0x63, 0x14, 0x08, 0x14, 0x63 }, 
  { 0x07, 0x08, 0x70, 0x08, 0x07 }, 
  { 0x61, 0x51, 0x49, 0x45, 0x43 }, 
  { 0x00, 0x7F, 0x41, 0x41, 0x00 }, 
  { 0x55, 0x2A, 0x55, 0x2A, 0x55 }, 
  { 0x00, 0x41, 0x41, 0x7F, 0x00 }, 
  { 0x04, 0x02, 0x01, 0x02, 0x04 }, 
  { 0x40, 0x40, 0x40, 0x40, 0x40 }, 
  { 0x00, 0x01, 0x02, 0x04, 0x00 }, 
  { 0x20, 0x54, 0x54, 0x54, 0x78 }, 
  { 0x7F, 0x48, 0x44, 0x44, 0x38 }, 
  { 0x38, 0x44, 0x44, 0x44, 0x20 }, 
  { 0x38, 0x44, 0x44, 0x48, 0x7F }, 
  { 0x38, 0x54, 0x54, 0x54, 0x18 }, 
  { 0x08, 0x7E, 0x09, 0x01, 0x02 }, 
  { 0x0C, 0x52, 0x52, 0x52, 0x3E }, 
  { 0x7F, 0x08, 0x04, 0x04, 0x78 }, 
  { 0x00, 0x44, 0x7D, 0x40, 0x00 }, 
  { 0x20, 0x40, 0x44, 0x3D, 0x00 }, 
  { 0x7F, 0x10, 0x28, 0x44, 0x00 }, 
  { 0x00, 0x41, 0x7F, 0x40, 0x00 }, 
  { 0x7C, 0x04, 0x18, 0x04, 0x78 }, 
  { 0x7C, 0x08, 0x04, 0x04, 0x78 }, 
  { 0x38, 0x44, 0x44, 0x44, 0x38 }, 
  { 0x7C, 0x14, 0x14, 0x14, 0x08 }, 
  { 0x08, 0x14, 0x14, 0x18, 0x7C }, 
  { 0x7C, 0x08, 0x04, 0x04, 0x08 }, 
  { 0x48, 0x54, 0x54, 0x54, 0x20 }, 
  { 0x04, 0x3F, 0x44, 0x40, 0x20 }, 
  { 0x3C, 0x40, 0x40, 0x20, 0x7C }, 
  { 0x1C, 0x20, 0x40, 0x20, 0x1C }, 
  { 0x3C, 0x40, 0x30, 0x40, 0x3C }, 
  { 0x44, 0x28, 0x10, 0x28, 0x44 }, 
  { 0x0C, 0x50, 0x50, 0x50, 0x3C }, 
  { 0x44, 0x64, 0x54, 0x4C, 0x44 } 
};
#line 126 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
uint8_t
lcd_str_width(const char* c)
{
  uint8_t i;
  i = 0;
  while(*c)
  {
    ++i;
    ++c;
  }
  
  return((i << 1) + i) << 1; 
}
#line 142 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_send(uint8_t a, uint8_t cmd)
{
  
  RC1 = 1;
  if(cmd == 0)
  {
    RC1 = 0;
  }
  __nop();
  RC2 = 0;
  
  __nop(); RC5=0; __nop(); RC4=0; if((a) & ( 0b10000000)) { RC4=1; } __nop(); RC5=1;
  __nop(); RC5=0; __nop(); RC4=0; if((a) & ( 0b01000000)) { RC4=1; } __nop(); RC5=1;
  __nop(); RC5=0; __nop(); RC4=0; if((a) & ( 0b00100000)) { RC4=1; } __nop(); RC5=1;
  __nop(); RC5=0; __nop(); RC4=0; if((a) & ( 0b00010000)) { RC4=1; } __nop(); RC5=1;
  __nop(); RC5=0; __nop(); RC4=0; if((a) & ( 0b00001000)) { RC4=1; } __nop(); RC5=1;
  __nop(); RC5=0; __nop(); RC4=0; if((a) & ( 0b00000100)) { RC4=1; } __nop(); RC5=1;
  __nop(); RC5=0; __nop(); RC4=0; if((a) & ( 0b00000010)) { RC4=1; } __nop(); RC5=1;
  __nop(); RC5=0; __nop(); RC4=0; if((a) & ( 0b00000001)) { RC4=1; } __nop(); RC5=1;
  __nop();
  RC2 = 1;
}
#line 167 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_init(void)
{
  TRISC &= 0x00;
  _delay((unsigned long)((20)*(20000000/4000.0)));
  
  __nop();
  RC5 = 0;
  __nop();
  RC4 = 1;
  __nop();
  RC1 = 0;
  __nop();
  RC2 = 1;
  __nop();
  
  RC3 = 0;
  _delay((unsigned long)((20)*(20000000/4000.0)));
  
  RC3 = 1;
  
lcd_send(0x21, 0); 
  lcd_send(0xC8, 0); 
  lcd_send(0x06, 0); 
  lcd_send(0x13, 0); 
  lcd_send(0x20, 0); 
  lcd_send(0x0C, 0); 
  
  
}
#line 213 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_test(void)
{
  uint16_t i;
  lcd_gotoxy(0, 0);
  for(i = 0; i < 504; ++i)
  {
    lcd_send(i, 1);
  }
}
#line 225 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_clear(void)
{
  uint16_t i;
  lcd_gotoxy(0, 0);
  for(i = 0; i < 504; ++i)
  {
    lcd_send(0, 1);
  }
}
#line 237 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_gotoxy(uint8_t x, unsigned y)
{
  lcd_send(x | 0b10000000, 0);
  lcd_send((y & 0b00000111) | 0b01000000, 0);
}
#line 245 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_putch(uint8_t c)
{
  if(c > 'z' || c < 32)
  {
    return;
  }
  lcd_send(lcd_font[c - 32][0], 1);
  lcd_send(lcd_font[c - 32][1], 1);
  lcd_send(lcd_font[c - 32][2], 1);
  lcd_send(lcd_font[c - 32][3], 1);
  lcd_send(lcd_font[c - 32][4], 1);
  lcd_send(0, 1);
}
#line 262 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_puts(const char* s)
{
  while(*s)
  {
    lcd_putch(*s);
    ++s;
  }
  
}
#line 274 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_center_puts(uint8_t y, const char* c)
{
  lcd_gotoxy(41 - (lcd_str_width(c) / 2), y);
  lcd_puts(c);
}
#line 283 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_puts2(char* s)
{
  while(*s)
  {
    lcd_putch(*s);
    ++s;
  }
  
}
#line 295 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_clear_line(uint8_t y)
{
  uint8_t k;
  lcd_gotoxy(0, y);
  for(k = 0; k < 83; ++k)
  {
    lcd_send(0, 1);
  }
}
#line 307 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_center_puts2(uint8_t y, char* c, uint8_t len)
{
  lcd_gotoxy(42 - (len << 1) - len, y);
  while(len)
  {
    lcd_putch(*c);
    ++c;
    --len;
  }
}

const char bat_symbol[] =
{
  0b00111000,
  0b11111110,
  0b10000010,
  0b10000010,
  0b10000010,
  0b10000010,
  0b10000010,
  0b10000010,
  0b10000010,
  0b10000010,
  0b10000010,
  0b10000010,
  0b11111110
};
#line 337 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_battery(uint8_t chg)
{
  uint8_t i;
  chg = 12 - chg;
  lcd_gotoxy(71, 0);
  for(i = 0; i < 13; ++i)
  {
    if(i >= chg)
    {
      lcd_send(0b11111110, 1);
    }
    else
    {
      lcd_send(bat_symbol[i], 1);
    }
  }
}
#line 370 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../lib/lcd3310.c"
void
lcd_symbol(const char* sym)
{
  uint8_t i, n;
  n = sym[0];
  for(i = 1; i <= n; ++i)
  {
    lcd_send(sym[i], 1);
  }
}

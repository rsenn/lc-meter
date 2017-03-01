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
#include <htc.h>
#line 31 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
unsigned char lcd_str_width(const unsigned char *c);
void lcd_send(unsigned char a, unsigned char cmd);
void lcd_init(void);
void lcd_test(void);
void lcd_clear(void);
void lcd_gotoxy(unsigned char x, unsigned y);
void lcd_putch(unsigned char c);
void lcd_puts(const char *s);
void lcd_puts2(char *s);
void lcd_clear_line(unsigned char y);
void lcd_center_puts(unsigned char y, const char *c);
void lcd_center_puts2(unsigned char y, char *c, unsigned char len);
#line 45 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
void lcd_battery(unsigned char chg);
#line 49 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
void lcd_symbol(const char *sym);
	
#line 15 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
static const char lcd_font[][5] =
{
	{ 0x00, 0x00, 0x00, 0x00, 0x00 }, 
	{ 0x00, 0x00, 0x2f, 0x00, 0x00 }, 
	{ 0x00, 0x07, 0x00, 0x07, 0x00 }, 
	{ 0x14, 0x7f, 0x14, 0x7f, 0x14 }, 
	{ 0x24, 0x2a, 0x7f, 0x2a, 0x12 }, 
	
{	0b00100011, 
		0b00010011,
		0b00001000,
		0b01100100,
		0b01100010}, 
   #line 30 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
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
#line 118 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
unsigned char lcd_str_width(const char *c)
{
	unsigned char i;
	
i=0;
	while (*c) {
		++i;
		++c;
	}
	
return ((i<<1) + i)<<1; 
}
	
#line 144 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_send(unsigned char a, unsigned char cmd)
{
	
	RB4=1;
	if (cmd==0) {
		RB4=0;
	}
	__nop();
	RB2=0;
	
	#line 156 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
__nop(); RB6=0; __nop(); RB5=0; if ((a) & (0b10000000)) { RB5=1; } __nop(); RB6=1;
	__nop(); RB6=0; __nop(); RB5=0; if ((a) & (0b01000000)) { RB5=1; } __nop(); RB6=1;
	__nop(); RB6=0; __nop(); RB5=0; if ((a) & (0b00100000)) { RB5=1; } __nop(); RB6=1;
	__nop(); RB6=0; __nop(); RB5=0; if ((a) & (0b00010000)) { RB5=1; } __nop(); RB6=1;
	__nop(); RB6=0; __nop(); RB5=0; if ((a) & (0b00001000)) { RB5=1; } __nop(); RB6=1;
	__nop(); RB6=0; __nop(); RB5=0; if ((a) & (0b00000100)) { RB5=1; } __nop(); RB6=1;
	__nop(); RB6=0; __nop(); RB5=0; if ((a) & (0b00000010)) { RB5=1; } __nop(); RB6=1;
	__nop(); RB6=0; __nop(); RB5=0; if ((a) & (0b00000001)) { RB5=1; } __nop(); RB6=1;
	
__nop();
	RB2=1;
}
#line 171 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_init(void)
{
	TRISB &= 0x00;
	_delay((unsigned long)((20)*(20000000/4000.0)));
	
	__nop();
	RB6=0;
	__nop();
	RB5=1;
	__nop();
	RB4=0;
	__nop();
	RB2=1;
	__nop();
	
	
RB3=0;
	_delay((unsigned long)((20)*(20000000/4000.0)));
	
	RB3=1;
	#line 195 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
lcd_send(0x21,0); 
	lcd_send(0xC8,0); 
	lcd_send(0x06,0); 
	lcd_send(0x13,0); 
	
lcd_send(0x20,0); 
	
lcd_send(0x0C,0); 
#line 225 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
}
#line 228 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_test(void)
{
	unsigned int i;
	
lcd_gotoxy(0,0);
	for (i=0;i<504;++i) {
		lcd_send(i, 1);
	}
}
#line 239 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_clear(void)
{
	unsigned int i;
	
lcd_gotoxy(0,0);
	for (i=0;i<504;++i) {
		lcd_send(0, 1);
	}
}
#line 250 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_gotoxy(unsigned char x, unsigned y)
{
	lcd_send(x | 0b10000000, 0);
	lcd_send((y & 0b00000111) | 0b01000000, 0);
}
#line 257 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_putch(unsigned char c)
{
	if (c>'z' || c<32) {
		return;
	}
	
lcd_send(lcd_font[c-32][0], 1);
	lcd_send(lcd_font[c-32][1], 1);
	lcd_send(lcd_font[c-32][2], 1);
	lcd_send(lcd_font[c-32][3], 1);
	lcd_send(lcd_font[c-32][4], 1);
	lcd_send(0, 1);
}
#line 272 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_puts(const char *s)
{
	while (*s) {
		lcd_putch(*s);
		++s;
	}
	
}

void lcd_center_puts(unsigned char y, const char *c)
{
	lcd_gotoxy(41-(lcd_str_width(c)/2),y);
	lcd_puts(c);
}
#line 289 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_puts2(char *s)
{
	while (*s) {
		lcd_putch(*s);
		++s;
	}
	
}
#line 299 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_clear_line(unsigned char y)
{
	unsigned char k;
	lcd_gotoxy(0,y);
	for (k=0;k<83;++k) {
		lcd_send(0, 1);
	}
}

void lcd_center_puts2(unsigned char y, char *c, unsigned char len)
{
	lcd_gotoxy(42-(len<<1)-len,y);
	while(len) {
		lcd_putch(*c);
		++c;
		--len;
	}
}

const char bat_symbol[] = {
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

void lcd_battery(unsigned char chg)
{
	unsigned char i;
	
chg=12-chg;
	lcd_gotoxy(71,0);
	for (i=0;i<13;++i) {
		if (i>=chg) {
			lcd_send(0b11111110,1);
		} else {
			lcd_send(bat_symbol[i],1);
		}
	}
}
#line 361 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/lcd3310.c"
void lcd_symbol(const char *sym)
{
	unsigned char i,n;
	
n=sym[0];
	for (i=1;i<=n;++i) {
		lcd_send(sym[i], 1);
	}
}

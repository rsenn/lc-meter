#ifndef __LCD3310_H__
#define __LCD3310_H__

#include "device.h"

#define LCD_CLK		RC5
#define	LCD_DATA	RC4
#define	LCD_DC		RC1
#define	LCD_CE		RC2
#define	LCD_RESET	RC3
#define LCD_TRIS()	TRISC &= 0x00


#define BIT7 0b10000000
#define BIT6 0b01000000
#define BIT5 0b00100000
#define BIT4 0b00010000
#define BIT3 0b00001000
#define BIT2 0b00000100
#define BIT1 0b00000010
#define BIT0 0b00000001

#define LCD_TCMD	0
#define	LCD_TDATA	1


unsigned char lcd_str_width(const char *c);
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


void lcd_battery(unsigned char chg);
//void lcd_bluetooth(void);

//first element array is the length
void lcd_symbol(const char *sym);

//void  display_digit(unsigned char line, unsigned char column, unsigned char digit);



#endif
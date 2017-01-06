#include "lcd_driver.h"

/* A simple LCD driver that provides the following functions:
 * http://www.pjrc.com/tech/8051/board4/lcd_example.html
 * 
 *   lcd_init         Initialize the LCD - Call this first!
 *   lcd_clear        Clear the LCD
 *   lcd_home         Return the cursor to the home position
 *   lcd_putchar      Print a character to the LCD
 *   lcd_set_xy_raw   Set the cursor to and X,Y position
 */


/* This code is an original work of authorship by PJRC.COM, LLC
 * and has been placed in the public domain.  That means there
 * is no copyright and you are free to use it however you like
 * in your own application, even in commercial for-profit products.
 * This code is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY, without even the implied warranty of
 * merchantability or fitness for a particular purpose.
 */

 

#ifndef LCD_USE_FAST_ASM


/* This C-only version is easier to read and understand, but it is
 * not as fast and efficient as the assembly version below.  You
 * should normally use the optimized assembly version, but read
 * this one to understand the code.
 */

volatile xdata at LCD_COMMAND_WR unsigned char lcd_command_wr;
volatile xdata at LCD_STATUS_RD unsigned char lcd_status_rd;
volatile xdata at LCD_DATA_WR unsigned char lcd_data_wr;
volatile xdata at LCD_DATA_RD unsigned char lcd_data_rd;

#pragma CALLEE-SAVES lcd_busy
void lcd_busy(void)
{
	while (lcd_status_rd & 0x80)  ;
}

#pragma CALLEE-SAVES lcd_command
void lcd_command(unsigned char cmd)
{
	lcd_busy();
	lcd_command_wr = cmd;
}

void lcd_putchar(char c)
{
	lcd_busy();
	lcd_data_wr = c;
}

void lcd_init(void)
{
	lcd_command(LCD_CONFIG_CMD);
	lcd_command(LCD_ON_CMD);
	lcd_command(LCD_SHIFT_CMD);
}

void lcd_set_xy_raw(unsigned int x_and_y)
{
	unsigned char x, y;
	if ((x = x_and_y & 255) >= LCD_HORIZ_SIZE) x = LCD_HORIZ_SIZE - 1;
	if ((y = x_and_y >> 8) >= LCD_VERT_SIZE) y = LCD_VERT_SIZE - 1;
	lcd_busy();
	lcd_command_wr = (y * LCD_BYTES_PER_LINE + x) | 0x80;
}

void lcd_clear(void)
{
	lcd_command(LCD_CLEAR_CMD);
}

void lcd_home(void)
{
	lcd_command(LCD_HOME_CMD);
}




#else


/* Fast assembly version of the LCD driver. */


void lcd_putchar(char c)
{
	c;
	_asm
	mov	b, dpl
	mov	dptr, #LCD_STATUS_RD
00001$:	movx	a, @dptr
	jb	acc.7, 00001$
	mov	a, b
	mov	dptr, #LCD_DATA_WR
	movx	@dptr, a
	_endasm;
}


void lcd_command(void)	/* actually takes command byte in b */
{
	_asm
	mov	dptr, #LCD_STATUS_RD
00001$:	movx	a, @dptr
	jb	acc.7, 00001$
	mov	a, b
	mov	dptr, #LCD_COMMAND_WR
	movx	@dptr, a
	_endasm;
}


void lcd_init(void)
{
	_asm
	mov	b, #LCD_CONFIG_CMD
	lcall	_lcd_command
	mov	b, #LCD_ON_CMD
	lcall	_lcd_command
	mov	b, #LCD_SHIFT_CMD
	lcall	_lcd_command
	_endasm;
}


void lcd_set_xy_raw(unsigned int x_and_y)
{
	x_and_y;	/* x in LSB, y in MSB */
	_asm
	;check X is within display size
	mov	a, dpl
	add	a, #256 - LCD_HORIZ_SIZE
	jnc	00001$
	mov	dpl, #LCD_HORIZ_SIZE - 1
00001$:
	;check Y is within display size
	mov	a, dph
	add	a, #256 - LCD_VERT_SIZE
	jnc	00002$
	mov	dph, #LCD_VERT_SIZE - 1
00002$:
	;compute address within data display ram in LCD controller chip
	mov	a, dph
	mov	b, #LCD_BYTES_PER_LINE
	mul	ab
	add	a, dpl
	orl	a, #0x80	;msb set for set DD RAM address
	mov	b, a
	lcall	_lcd_command
	_endasm;
}


void lcd_clear(void)
{
	_asm
	mov	b, #LCD_CLEAR_CMD
	lcall	_lcd_command
	_endasm;
}


void lcd_home(void)
{
	_asm
	mov	b, #LCD_HOME_CMD
	lcall	_lcd_command
	_endasm;
}


#endif



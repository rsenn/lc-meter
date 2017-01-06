#ifndef __LCD_DRIVER_INCLUDED
#define __LCD_DRIVER_INCLUDED

/* comment this out to use the slower C version */
#define LCD_USE_FAST_ASM


#pragma CALLEE-SAVES lcd_putchar,lcd_init,lcd_set_xy_raw,lcd_clear,lcd_home

extern void lcd_putchar(char c);
extern void lcd_init(void);
extern void lcd_set_xy_raw(unsigned int x_and_y);
extern void lcd_clear(void);
extern void lcd_home(void);


/* This macro defines the lcd_set_xy function with two parameters
 * that get merged into a single 16 bit parameter when calling
 * the lcd_set_xy_raw code.  The idea is to allow the common case
 * of two constants to turn into a single MOV DPTR, #XXX instruction
 * and avoid SDCC's overhead of passing a second parameter.
 */
#define lcd_set_xy(x, y) (lcd_set_xy_raw((x) + ((y) << 8)))


/* to use a different size display, change this (untested on 4 lines) */

#define LCD_HORIZ_SIZE  16
#define LCD_VERT_SIZE   2
#define LCD_BYTES_PER_LINE  (128 / LCD_VERT_SIZE)

/* memory map locations for PJRC 8051 development board, Rev 4
 * http://www.pjrc.com/tech/8051/board4/memory_map.html
 */

#define LCD_COMMAND_WR 0xFE00
#define LCD_STATUS_RD 0xFE01
#define LCD_DATA_WR 0xFE02
#define LCD_DATA_RD 0xFE03

/* misc LCD controller commands... these should not change */

#define LCD_CLEAR_CMD 0x01
#define LCD_HOME_CMD 0x02
#define LCD_ON_CMD 0x0C
#define LCD_SHIFT_CMD 0x10
#define LCD_CONFIG_CMD 0x38

#endif


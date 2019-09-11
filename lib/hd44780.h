//------------------------------------------------------
/* File:       Library for HD44780 compatible displays  */
/* Version:	   v2.01  						 			*/
/* Author:     GrAnd/www.MakeSystem.net		 			*/
/* Tested on:  AVR, STM32F10X		 	 	 		 	*/
/* License:	   GNU LGPLv2.1		 		 	 			*/
//------------------------------------------------------
/* Copyright (C)2014 GrAnd. All right reserved 			*/
//------------------------------------------------------

/*
    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

Contact information :
                        mail@makesystem.net
                        http://makesystem.net/?page_id=2
*/

#ifndef HD44780_H
#define HD44780_H

#include <stdint.h>
#include "lcd_cfg.h"

#ifdef __cplusplus
extern "C" {
#endif

//-------------------------------
// CONSTANTS
//-------------------------------
#define CGRAM 5u /* used in "lcd_goto(CGRAM,address)" function */
#define RIGHT '>'
#define LEFT '<'
#define LCD_1st_LINE 1u
#define LCD_2nd_LINE 2u
#define LCD_3rd_LINE 3u
#define LCD_4th_LINE 4u
#define START_ADDRESS_1st_LINE 0x00u
#define START_ADDRESS_2nd_LINE 0x40u
/* 5x8 pixel font only */
#define FONT_HEIGHT 8u                                          /* 8 pixels */
#define FONT_WIDTH 5u                                           /* 5 pixels */
#define PROGRESS_BAR_MAX_LOAD (PROGRESS_BAR_WIDTH * FONT_WIDTH) /* 100% full */

//-------------------------------
// DISPLAY CONFIG MACROS
//-------------------------------
#define DISPLAY_CONFIG_4bit_2L_5x8 0x28u /* Use 4-bit interface, 2 or 4 Lines, 5x8 pixel resolution */
#define DISPLAY_CONFIG_4bit_1L_5x8 0x20u /* Use 4-bit interface, 1 Line, 5x8 pixel resolution */

//-------------------------------
// ENTRY MODE MACROS
//-------------------------------
#define ENTRY_MODE_DEC_NO_SHIFT 0x04u // справа налево, без сдвига видимой части DDRAM памяти
#define ENTRY_MODE_DEC_WITH_SHIFT 0x05u // справа налево, со сдвигом видимой части DDRAM памяти
#define ENTRY_MODE_INC_NO_SHIFT 0x06u // слева направо, без сдвига видимой части DDRAM памяти
#define ENTRY_MODE_INC_WITH_SHIFT 0x07u // слева направо, со сдвигом видимой части DDRAM памяти

//-------------------------------
// VIEW_MODE MACROS
//-------------------------------
#define VIEW_MODE_DispOn_BlkOn_CrsOn 0x0Fu    /* Display On, Blink On, Cursor On */
#define VIEW_MODE_DispOn_BlkOff_CrsOn 0x0Eu   /* Display On, Blink Off, Cursor On */
#define VIEW_MODE_DispOn_BlkOn_CrsOff 0x0Du   /* Display On, Blink On, Cursor Off */
#define VIEW_MODE_DispOn_BlkOff_CrsOff 0x0Cu  /* Display On, Blink Off, Cursor Off */
#define VIEW_MODE_DispOff_BlkOff_CrsOff 0x08u /* Display Off, Blink Off, Cursor Off */

//-------------------------------
// LCDlib API
//-------------------------------
extern void lcd_clrscr(void);
extern void lcd_return(void);
extern void lcd_setmode(uint8_t param);
extern void lcd_goto(uint8_t line, uint8_t address);
extern void lcd_puts(const uint8_t* str);
extern void lcd_putc(uint8_t data);
extern void lcd_loadchar(uint8_t* vector, uint8_t position);
extern void lcd_drawchar(uint8_t* vector, uint8_t position, uint8_t line, uint8_t address);
extern void lcd_backspace(void);
extern void lcd_scroll(uint8_t direction);
extern void cursor_shift(uint8_t direction);
extern void lcd_itos(int32_t value);
extern void lcd_ftos(float value, uint8_t n);
extern void lcd_ntos(uint32_t value, uint8_t n);
extern void lcd_drawbar(uint8_t data);
extern void lcd_clrbar(void);
extern void lcd_init(void);

#ifdef __cplusplus
}
#endif

#endif /* HD44780_H */

//-------------------------------
/* END OF FILE */
//-------------------------------

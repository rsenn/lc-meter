#ifndef __LCD44780_H__
#define __LCD44780_H__

#include "device.h"
#include "types.h"

// commands
#define LCD_CLEARDISPLAY 0x01
#define LCD_RETURNHOME 0x02
#define LCD_ENTRYMODESET 0x04
#define LCD_DISPLAYCONTROL 0x08
#define LCD_CURSORSHIFT 0x10
#define LCD_FUNCTIONSET 0x20
#define LCD_SETCGRAMADDR 0x40
#define LCD_SETDDRAMADDR 0x80

// flags for display entry mode
#define LCD_ENTRYRIGHT 0x00
#define LCD_ENTRYLEFT 0x02
#define LCD_ENTRYSHIFTINCREMENT 0x01
#define LCD_ENTRYSHIFTDECREMENT 0x00

// flags for display on/off control
#define LCD_DISPLAYON 0x04
#define LCD_DISPLAYOFF 0x00
#define LCD_CURSORON 0x02
#define LCD_CURSOROFF 0x00
#define LCD_BLINKON 0x01
#define LCD_BLINKOFF 0x00

// flags for display/cursor shift
#define LCD_DISPLAYMOVE 0x08
#define LCD_CURSORMOVE 0x00
#define LCD_MOVERIGHT 0x04
#define LCD_MOVELEFT 0x00

// flags for function set
#define LCD_8BITMODE 0x10
#define LCD_4BITMODE 0x00
#define LCD_2LINE 0x08
#define LCD_1LINE 0x00
#define LCD_5x10DOTS 0x04
#define LCD_5x8DOTS 0x00

#ifdef __16f628a
# define RS_PIN  RB5
# define RS_TRIS TRISB5
# undef RW_PIN
# undef RW_TRIS
# define EN_PIN  RB4
# define EN_TRIS TRISB4

#define DATA0_PIN  RA2
#define DATA0_TRIS TRISA2
#define DATA1_PIN  RA3
#define DATA1_TRIS TRISA3
#define DATA2_PIN  RB3
#define DATA2_TRIS TRISB3
#define DATA3_PIN  RB6
#define DATA3_TRIS TRISB6
#else
# define RS_PIN  RC1
# define RS_TRIS TRISC1
# undef RW_PIN
# undef RW_TRIS
# define EN_PIN  RC2    // activated by a HIGH pulse.
# define EN_TRIS TRISC2    // activated by a HIGH pulse.

#define DATA0_PIN  RB0
#define DATA0_TRIS TRISB0
#define DATA1_PIN  RB1
#define DATA1_TRIS TRISB1
#define DATA2_PIN  RB2
#define DATA2_TRIS TRISB2
#define DATA3_PIN  RB3
#define DATA3_TRIS TRISB3
#endif

void lcd_init(bool fourbitmode);
void lcd_begin(uint8 lines, uint8 dotsize);
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
void lcd_print_number(uint16 n, uint8 base);
void lcd_print_float(float number, uint8 digits);
void lcd_print(const char *string);
void lcd_printf(const char *fmt, ...);
void lcd_set_cursor(uint8 col, uint8 row);
void lcd_write(uint8 value);

#define LCDAUTOSCROLL
#define LCDBLINK
#define LCDCLEAR
#define LCDCURSOR
#define LCDDISPLAY
#define LCDHOME
#define LCDLEFTTORIGHT
#define LCDPRINT
#undef LCDPRINTF
#undef LCDPRINTFLOAT
#define LCDPRINTNUMBER
#undef LCDRIGHTTOLEFT
#undef LCDSCROLLDISPLAYLEFT
#undef LCDSCROLLDISPLAYRIGHT
#define LCDSETCURSOR


#endif /* __LCD44780_H__ */

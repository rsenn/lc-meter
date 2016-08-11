/*  ----------------------------------------------------------------------------
FILE:        lcd44780.c
PROJECT:     pinguino8
PURPOSE:     LCD routines for use with pinguino board,
        based on LiquidCrystal lib from Arduino project.
PROGRAMER:     Orignal port by Marcus Fazzi (marcus@fazzi.eng.br)
Updated - 28 Jan 2011 : lcdprintf by RegisBlanchot (rblanchot@gmail.com)
Updated - 03 Mar 2012 : Library updated, new function names
            : lcd44780.pdl updated
            : LiquidCrystal examples updated
Updated:    26 May 2012 - M Harper
        Changed to deal more consistently with single line displays
        as included in P32 lcd44780.c at x.3 r363.
        (changes identified by dated comments in code)
  ----------------------------------------------------------------------------
LiquidCrystal original Arduino site:
    http://www.arduino.cc/en/Tutorial/LiquidCrystal by David A. Mellis
Pins, Schematics and more info:
    http://pinguino.koocotte.org/index.php/LCD_Example
      http://www.fazzi.eng.br
*/
#if USE_HD44780_LCD

#include "const.h"         // HIGH, LOW, OUTPUT, ...
#include "delay.h"
#include "device.h"
#include "lcd44780.h"

#include <stdarg.h>
#include <stdio.h>

#if defined(DATA4_PIN) && defined(DATA5_PIN) && defined(DATA6_PIN) && defined(DATA7_PIN) && \
    defined(DATA4_TRIS) && defined(DATA5_TRIS) && defined(DATA6_TRIS) && defined(DATA7_TRIS)
#define LCD_HAVE_8BIT_MODE 1
#endif


static uint8 LCD_function, LCD_ctrl, LCD_mode
#ifdef LCDSETCURSOR
, LCD_lines
#endif
;


/** Positive pulse on E */
void
lcd_pulse_enable(void) {

  //EN_PIN = LOW;
  //__delay_us(4);
  EN_PIN = HIGH;
  __delay_us(4);    // enable pulse must be >450ns
  EN_PIN = LOW;
  __delay_us(100);   // commands need > 37us to settle
}

/** Write using 4bits mode */
static void
lcd_write4bits(uint8 value) {
  DATA0_PIN = value & 1; value >>= 1;
  DATA1_PIN = value & 1; value >>= 1;
  DATA2_PIN = value & 1; value >>= 1;
  DATA3_PIN = value & 1;

  lcd_pulse_enable();
}

#ifdef LCD_HAVE_8BIT_MODE
/** Write using 8bits mode */
static void
lcd_write8bits(uint8 value) {
  DATA0_PIN = value & 1; value >>= 1;
  DATA1_PIN = value & 1; value >>= 1;
  DATA2_PIN = value & 1; value >>= 1;
  DATA3_PIN = value & 1; value >>= 1;
  DATA4_PIN = value & 1; value >>= 1;
  DATA5_PIN = value & 1; value >>= 1;
  DATA6_PIN = value & 1; value >>= 1;
  DATA7_PIN = value & 1;

  lcd_pulse_enable();
}
#endif

/** Send data to LCD 8 or 4 bits */
static void
lcd_send(uint8 value, uint8 mode) {
  RS_PIN = mode;

#ifdef LCD_HAVE_8BIT_MODE
  if(LCD_function & LCD_8BITMODE) {
    lcd_write8bits(value);
  } else
#endif
  {
    lcd_write4bits(value >> 4);  // Upper 4 bits first
    lcd_write4bits(value);      // Lower 4 bits second
  }
}

/** Write a data character on LCD */
void
lcd_write(uint8 value) {
  lcd_send(value, HIGH);
}

/** Write a control command on LCD */
static void
lcd_command(uint8 value) {
  lcd_send(value, LOW);
}

/** Setup line x column on LCD */
#ifdef LCDSETCURSOR
void
lcd_gotoxy(uint8 col, uint8 row) {
//  uint8 row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };
  uint8 row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };

  row %= LCD_lines;

  /* Added 26 May 2012 by MFH
    sets row_offsets for a single line display so that
    80 column space divided in 4 equal 20 column sections.
    This means that if an n x 4 display is set to behave as
    a single line display lines 1 and 2 are displayed and
    lines 3 and 4 are 20 characters to the right.*/
  if(LCD_lines == 1) {
    row_offsets[1] = 0x14;
    row_offsets[2] = 0x28;
    row_offsets[3] = 0x3C;
  }
  /* Removed 26 May 2012 by MFH as did not treat row
    starts consistently for n x 2 and n x 4 displays
  if(row > LCD_lines)
    row = LCD_lines-1;    // we count rows starting w/0
  */
  lcd_command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
}
#endif

/** Print a string on LCD */
#ifdef LCDPRINT
void
lcd_puts(const char *string) {
  uint8 i;
  for(i = 0; string[i]; i++)
    lcd_write(string[i]);
}
#endif

/** Write formated string on LCD **/
#ifdef LCDPRINTF
/* added 28/01/2011 rblanchot@gmail.com */
void
lcd_printf(const char *fmt, ...) {
  va_list args;

  va_start(args, fmt);
  pprintf(lcd_write, fmt, args);
  va_end(args);
}
#endif

/** Print a number on LCD */
#if defined(LCDPRINTNUMBER) || defined(LCDPRINTFLOAT)
/*
static const char digits[] =
{ '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z' };
*/
void
lcd_print_number(uint16 n, uint8 base, int8 pad/*, int8 pointpos*/) {
  uint8 buf[8 * sizeof(long)]; // Assumes 8-bit chars.
  uint8 di;
  uint8 i = 0;

/*  if(n == 0) {
    lcd_write('0');
    return;
  }*/

  do {
/*    if(i == pointpos)
      buf[i++] = '.';
*/
    di = n % base;
    buf[i++] = (di < 10 ? (uint8)'0' + di : (uint8)'A' + di - 10);

    n /= base;
  } while(n > 0);

  while(pad-- >= i)
    lcd_write(' ');

  for(; i > 0; i--)
    lcd_write((uint8)buf[(int16)i - 1]);
//    lcd_write((buf[i - 1] < 10 ? (uint8)'0' + buf[i - 1] : (uint8)'A' + buf[i - 1] - 10));
}

#endif

/** Print a float number to LCD */
#ifdef LCDPRINTFLOAT
void
lcd_print_float(float number, uint8 digits) {

  char buf[16];
  sprintf(buf, "%f", number);
  lcd_puts(buf);
//  lcd_print_number_internal((long)(number * 1000), 10, 1);

  //uint8 i, toPrint;
  //uint16 int_part;
  //float rounding, remainder;

  ///* Handle negative numbers */
  //if(number < 0.0) {
  //  lcd_write('-');
  //  number = -number;
  //}

  ///* Round correctly so that print(1.999, 2) prints as "2.00" */
  //rounding = 0.5;
  //for(i=0; i<digits; ++i)
  //  rounding /= 10.0;

  //number += rounding;

  ///* Extract the integer part of the number and print it */
  //int_part = (uint16)number;
  //remainder = number - (float)int_part;
  //lcd_print_number(int_part, 10);

  ///* Print the decimal point, but only if there are digits beyond */
  //if(digits > 0)
  //  lcd_write('.');

  ///* Extract digits from the remainder one at a time */
  //while(digits-- > 0) {
  //  remainder *= 10.0;
  //  toPrint = (uint16)remainder; //Integer part without use of math.h lib, I think better! (Fazzi)
  //  lcd_print_number(toPrint, 10);
  //  remainder -= toPrint;
  //}
}
#endif

/** Move cursor to Home position */
#ifdef LCDHOME
void
lcd_home() {
  lcd_command(LCD_RETURNHOME);
  __delay_ms(2);                  // Wait for more than 4.1 ms
  //__delay_us(2000);
}
#endif

/** Clear LCD */
#ifdef LCDCLEAR
void
lcd_clear() {
  lcd_command(LCD_CLEARDISPLAY);  // clear display, set cursor position to zero
  __delay_ms(2);                  // Wait for more than 4.1 ms
  //__delay_us(2000);  // this command takes a long time! */
}
#endif

/** Turn the display on/off (quickly) */
#ifndef LCDDISPLAY
void
lcd_no_display() {
  LCD_ctrl &= ~LCD_DISPLAYON;
  lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
}
#endif

#ifdef LCDDISPLAY
void
lcd_display() {
  LCD_ctrl |= LCD_DISPLAYON;
  lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
}
#endif

/** Turns the underline cursor on/off */
#ifdef LCDCURSOR
void
lcd_no_cursor() {
  LCD_ctrl &= ~LCD_CURSORON;
  lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
}
#endif

#ifdef LCDCURSOR
void
lcd_cursor() {
  LCD_ctrl |= LCD_CURSORON;
  lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
}
#endif

/** Turn on and off the blinking cursor */
#ifndef LCDBLINK
void
lcd_no_blink() {
  LCD_ctrl &= ~LCD_BLINKON;
  lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
}
#endif

#ifdef LCDBLINK
void
lcd_blink() {
  LCD_ctrl |= LCD_BLINKON;
  lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);
}
#endif

/** These commands scroll the display without changing the RAM */
#ifdef LCDSCROLLDISPLAYLEFT
void
lcd_scroll_display_left(void) {
  lcd_command(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVELEFT);
}
#endif

#ifdef LCDSCROLLDISPLAYRIGHT
void
lcd_scroll_display_right(void) {
  lcd_command(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVERIGHT);
}
#endif

/** This is for text that flows Left to Right */
#ifdef LCDLEFTTORIGHT
void
lcd_left_to_right(void) {
  LCD_mode |= LCD_ENTRYLEFT;
  lcd_command(LCD_ENTRYMODESET | LCD_mode);
}
#endif

/** This is for text that flows Right to Left */
#ifdef LCDRIGHTTOLEFT
void
lcd_right_to_left(void) {
  LCD_mode &= ~LCD_ENTRYLEFT;
  lcd_command(LCD_ENTRYMODESET | LCD_mode);
}
#endif

/** This will 'right justify' text from the cursor */
#ifdef LCDAUTOSCROLL
void
lcd_autoscroll(void) {
  LCD_mode |= LCD_ENTRYSHIFTINCREMENT;
  lcd_command(LCD_ENTRYMODESET | LCD_mode);
}
#endif

/** This will 'left justify' text from the cursor */
#ifndef LCDAUTOSCROLL
void
lcd_no_autoscroll(void) {
  LCD_mode &= ~LCD_ENTRYSHIFTINCREMENT;
  lcd_command(LCD_ENTRYMODESET | LCD_mode);
}
#endif

/** Initial Display settings! */
void
lcd_begin(uint8 lines, uint8 dotsize) {
  if(lines > 1)
    LCD_function |= LCD_2LINE;

#ifdef LCDSETCURSOR
  LCD_lines = lines;
#endif

  /* Some one line displays can select 10 pixel high font */
  if((dotsize != 0) && (lines == 1))
    LCD_function |= LCD_5x10DOTS;

  __delay_ms(15);                // Wait more than 15 ms after VDD rises to 4.5V

  /* Now we pull both RS and R/W low to begin commands */
  RS_PIN = LOW;
  EN_PIN = LOW;

  /* put the LCD into 4 bit mode */
  if(!(LCD_function & LCD_8BITMODE)) {
    /* this is according to the hitachi HD44780 datasheet p46, figure 24 */

    /* we start in 8bit mode, try to set 4 bit mode */
    lcd_write4bits(0x03);
    __delay_ms(5);                  // Wait for more than 4.1 ms
    /* second try */
    lcd_write4bits(0x03);
    __delay_us(150);                // Wait more than 100 μs
    /* third go! */
    lcd_write4bits(0x03);
    __delay_us(150);                // Wait more than 100 μs
    /* finally, set to 8-bit interface */
    lcd_write4bits(0x02);
  }
  /* put the LCD into 8 bit mode */
  else {
    /* this is according to the hitachi HD44780 datasheet p45, figure 23 */

    /* Send function set command sequence */
    lcd_command(LCD_FUNCTIONSET | LCD_function);
    __delay_ms(5);                  // Wait for more than 4.1 ms

    /* second try */
    lcd_command(LCD_FUNCTIONSET | LCD_function);
    __delay_ms(5);                  // Wait for more than 4.1 ms
    //__delay_us(150);

    /* third go */
    lcd_command(LCD_FUNCTIONSET | LCD_function);
  }

  /* finally, set # lines, font size, etc. */
  lcd_command(LCD_FUNCTIONSET | LCD_function);

  /* turn the display on with no cursor or blinking default */
  LCD_ctrl = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
  lcd_command(LCD_DISPLAYCONTROL | LCD_ctrl);

  /* clear it off */
  lcd_command(LCD_CLEARDISPLAY);  // clear display, set cursor position to zero
  __delay_ms(2);

  /* Initialize to default text direction (for romance languages) */
  LCD_mode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
  /* set the entry mode */
  lcd_command(LCD_ENTRYMODESET | LCD_mode);
}

/** Init LCD
 * @param flags one of LCD_8BITMODE|LCD_4BITMODE, LCD_2LINE|LCD_1LINE, LCD_5x10DOTS|LCD_5x8DOTS
 */
void
lcd_init() {
const bool fourbitmode =true;
  LCD_ctrl = 0;
  LCD_function = (fourbitmode ? LCD_4BITMODE : LCD_8BITMODE);
#ifdef LCDSETCURSOR
  LCD_lines = 0;
#endif
  LCD_mode = 0;

  RS_TRIS = OUTPUT; RS_PIN = LOW;
#if defined(RW_TRIS) && defined(RW_PIN)
  RW_TRIS = OUTPUT; RW_PIN = LOW;
#endif
  EN_TRIS = OUTPUT; EN_PIN = LOW;

  DATA0_TRIS = OUTPUT; //DATA0_PIN = LOW;
  DATA1_TRIS = OUTPUT; //DATA1_PIN = LOW;
  DATA2_TRIS = OUTPUT; //DATA2_PIN = LOW;
  DATA3_TRIS = OUTPUT; //DATA3_PIN = LOW;

#if defined(DATA4_TRIS) && defined(DATA5_TRIS) && defined(DATA6_TRIS) && defined(DATA7_TRIS)
  if((LCD_function & LCD_8BITMODE)) {
    DATA4_TRIS = OUTPUT; //DATA4_PIN = LOW;
    DATA5_TRIS = OUTPUT; //DATA5_PIN = LOW;
    DATA6_TRIS = OUTPUT; //DATA6_PIN = LOW;
    DATA7_TRIS = OUTPUT; //DATA7_PIN = LOW;
  }
#endif
}

/** LCD 8 bits mode
void
lcd_pins(uint8 rs, uint8 enable, uint8 d0, uint8 d1, uint8 d2, uint8 d3, uint8 d4, uint8 d5, uint8 d6, uint8 d7) {
  lcd_init(((d4 + d5 + d6 + d7)==0), rs, -1, enable, d0, d1, d2, d3, d4, d5, d6, d7);
}*/

#endif // USE_HD44780_LCD

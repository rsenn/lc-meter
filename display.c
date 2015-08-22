#include "display.h"
#include "main.h"

#ifdef __LCD3310_H__
__code const char logo_image[504] = {
  0x00, 0x40, 0xC0, 0xC0, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0xF8, 0xF0, 0xE0, 0x00, 0x00, 0x00, 0x00, 0xE0, 0xE0, 0xE0, 0xC0, 0x80, 0x10, 0x7C, 0xFC, 0xFE, 0xFC, 0xF8, 0xE0, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x07, 0x1F, 0x7F, 0xFC, 0xF8, 0xE0, 0x80, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xFE, 0xFC, 0xDC, 0x18, 0x38, 0x70, 0xE0, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x80, 0x80, 0x80, 0x00, 0x80, 0xC0, 0xC0, 0xC0, 0x80, 0x80, 0x00, 0x00, 0xF0, 0xF8, 0xF8, 0x78, 0x70, 0xF0, 0xCF, 0x9F, 0x3F, 0x7F, 0xFF, 0xF6, 0xC0, 0x87, 0x7F, 0xFF, 0xFF, 0xE7, 0x9F, 0xFC, 0xFB, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xDF, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x0F, 0x7F, 0xFE, 0xF8, 0xE0, 0x80, 0x00, 0x07, 0x3F, 0xFF, 0xFE, 0xFC, 0xE0, 0x01, 0x03, 0x0F, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x3F, 0xFF, 0xFF, 0xFF, 0xE7, 0x1F, 0x7F, 0xFF, 0xFF, 0xF3, 0xCF, 0x3F, 0xFF, 0xFE, 0xF8, 0xE3, 0x9F, 0x7F, 0xFF, 0xFC, 0xFF, 0xDF, 0x1F, 0x0F, 0x0E, 0xC3, 0xCF, 0x3F, 0xFF, 0xFE, 0xF9, 0xC7, 0x1F, 0x7F, 0xFF, 0xFF, 0xF3, 0x83, 0x03, 0x21, 0xE7, 0xDF, 0xFF, 0xFC, 0xF0, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x0F, 0x3F, 0xFE, 0xF8, 0xE0, 0x80, 0x01, 0x07, 0x1F, 0xFF, 0xFE, 0xF8, 0xE0, 0x80, 0x00, 0x04, 0x1C, 0xF8, 0xF0, 0x80, 0x00, 0x00, 0x01, 0x03, 0x0F, 0x3F, 0xFF, 0xFE, 0xF9, 0xE7, 0x9F, 0x7F, 0x7F, 0x7C, 0x71, 0x07, 0x3F, 0x3F, 0x1E, 0x1D, 0x01, 0x03, 0x07, 0x0F, 0x0E, 0x0E, 0x0C, 0x0F, 0x0F, 0x00, 0x01, 0x03, 0x07, 0x0F, 0x0E, 0x0F, 0x07, 0x03, 0x07, 0x0E, 0x1E, 0x3D, 0x3F, 0x3F, 0x19, 0x07, 0x1F, 0x7F, 0x7E, 0x78, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x3F, 0xFE, 0xF8, 0xF0, 0x80, 0x01, 0x07, 0x0F, 0x9F, 0xFF, 0x7C, 0xF8, 0xF0, 0xF7, 0xFF, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x3F, 0xFE, 0xFE, 0x7F, 0x3F, 0x1F, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

__code const char digits_8x16[160] = {
  0xfc, 0xfe, 0xfe, 0x06, 0x06, 0xfe, 0xfe, 0xfc, 0x7f, 0xff, 0xff, 0xc0, 0xc0, 0xff, 0xff, 0x7f, //0
  0x00, 0x18, 0x1c, 0xfe, 0xfe, 0xfe, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xff, 0xff, 0xff, 0xc0, 0x00, //1
  0x3c, 0x3e, 0x3e, 0x06, 0x86, 0xfe, 0xfe, 0x7c, 0xe0, 0xf0, 0xfc, 0xff, 0xcf, 0xc7, 0xc1, 0xc0, //2
  0x1c, 0x1e, 0x9e, 0x86, 0x86, 0xfe, 0xfe, 0xfc, 0x78, 0xf8, 0xf9, 0xc1, 0xc1, 0xff, 0xff, 0x7e, //3
  0x00, 0xf0, 0xfe, 0x7e, 0xfe, 0xfe, 0xfe, 0x00, 0x3f, 0x3f, 0x37, 0x30, 0xff, 0xff, 0xff, 0x30, //4
  0xfe, 0xfe, 0xfe, 0xc6, 0xc6, 0xc6, 0xc6, 0x86, 0x71, 0xf1, 0xf1, 0xc0, 0xc0, 0xff, 0xff, 0x7f, //5
  0xfc, 0xfe, 0xfe, 0xc6, 0xc6, 0xde, 0xde, 0x9c, 0x7f, 0xff, 0xff, 0xc0, 0xc0, 0xff, 0xff, 0x7f, //6
  0x06, 0x06, 0x06, 0x86, 0xe6, 0xfe, 0x7e, 0x1e, 0x80, 0xf0, 0xfe, 0x3f, 0x07, 0x01, 0x00, 0x00, //7
  0x7c, 0xfe, 0xfe, 0x86, 0x86, 0xfe, 0xfe, 0x7c, 0x7e, 0xff, 0xff, 0xc1, 0xc1, 0xff, 0xff, 0x7e, //8
  0xfc, 0xfe, 0xfe, 0x86, 0x86, 0xfe, 0xfe, 0xfc, 0x78, 0xf9, 0xf9, 0xc1, 0xc1, 0xff, 0xff, 0x7f  //9
};

__code const char units[288] = { //8units * (18*2)
  //H = 0
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 252, 192, 192, 192, 252, 252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 0, 0, 0, 31, 31,
  //mH = 1
  224, 224, 192, 96, 224, 224, 192, 96, 224, 192, 0, 252, 252, 192, 192, 192, 252, 252, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 31, 31, 0, 0, 0, 31, 31,
  //uH = 2
  0, 0, 0, 224, 224, 0, 0, 224, 224, 0, 0, 252, 252, 192, 192, 192, 252, 252, 0, 0, 0, 255, 255, 24, 8, 31, 31, 0, 0, 31, 31, 0, 0, 0, 31, 31,
  //nH = 3
  0, 0, 0, 224, 224, 192, 96, 224, 192, 0, 0, 252, 252, 192, 192, 192, 252, 252, 0, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 0, 31, 31,
  //mF = 4
  224, 224, 192, 96, 224, 224, 192, 96, 224, 192, 0, 0, 252, 252, 204, 204, 204, 12, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 0, 0,
  //uF = 5
  0, 0, 0, 0, 224, 224, 0, 0, 224, 224, 0, 0, 252, 252, 204, 204, 204, 12, 0, 0, 0, 0, 255, 255, 24, 8, 31, 31, 0, 0, 31, 31, 0, 0, 0, 0,
  //nF = 6
  0, 0, 0, 0, 224, 224, 192, 96, 224, 192, 0, 0, 252, 252, 204, 204, 204, 12, 0, 0, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 0, 0,
  //pF = 7
  0, 0, 0, 0, 224, 224, 96, 96, 224, 192, 0, 0, 252, 252, 204, 204, 204, 12, 0, 0, 0, 0, 255, 255, 24, 24, 31, 7, 0, 0, 31, 31, 0, 0, 0, 0
};
#elif defined(LCD44780_H)
#endif

// -------------------------------------------------------------------------
// -------------------------------------------------------------------------
void
display_digit(uint8 line, uint8 column, uint8 digit) {
#ifdef __LCD3310_H__
  uint8 i;
  if(line < 1 || line > 5) return;
  if(column > 74) return;
  if(digit > 9) return;

  lcd_gotoxy(column, line - 1);
  for(i = 0; i < 8; i++) lcd_send(digits_8x16[(digit << 4) + i], LCD_TDATA);
  lcd_gotoxy(column, line);
  for(i = 8; i < 16; i++) lcd_send(digits_8x16[(digit << 4) + i], LCD_TDATA);
#elif defined(LCD44780_H)
  lcd_set_cursor(column, /*line - 1*/ 0);
  lcd_write('0' + digit);
#endif // defined(__LCD3310_H__)
}

// -------------------------------------------------------------------------
void
display_unit(uint8 unit) {
#ifdef __LCD3310_H__
  uint8 i;
  lcd_gotoxy(60, 2);
  for(i = 0; i < 18; i++) lcd_send(units[unit * 36 + i], LCD_TDATA);
  lcd_gotoxy(60, 3);
  for(i = 18; i < 36; i++) lcd_send(units[unit * 36 + i], LCD_TDATA);
#elif defined(LCD44780_H)
  static const char* units[8] = { "H", "mH", "uH", "nH", "mF", "uF", "nF", "pF" };
  lcd_set_cursor(16, 0);
  lcd_print(units[unit]);
  lcd_set_cursor(16, 1);
  lcd_print(units[unit]);
#endif // defined(__LCD3310_H__)
}

void
display_reading(uint16 measurement) {
    //measurement divide by 100
#ifdef __LCD3310_H__
  //clear previous measurement
  lcd_gotoxy(0, 2);
  lcd_puts(" ");
  lcd_gotoxy(0, 3);
  lcd_puts(" ");
  //decimal point
  lcd_gotoxy(35, 3);
  lcd_send(0x70, LCD_TDATA);
  lcd_send(0x70, LCD_TDATA);
  lcd_send(0x70, LCD_TDATA);
  //hundreds digit
  if(measurement / 10000 > 0) display_digit(3, 5, measurement / 10000);
  //tens digit
  if(((measurement / 1000) % 10 > 0) || (measurement / 10000 > 0)) display_digit(3, 15, (measurement / 1000) % 10);
  //ones digit
  display_digit(3, 25, (measurement / 100) % 10);
  //tenths digit
  display_digit(3, 40, (measurement / 10) % 10);
  //hundredths digit
  display_digit(3, 50, measurement % 10);
#elif defined(LCD44780_H)
  lcd_set_cursor(4, 0);
  lcd_print_number(measurement / 100, 10, 0);
  lcd_write('.');
  lcd_print_number(measurement % 100, 10, 0);
#endif // defined(__LCD3310_H__)
}

// -------------------------------------------------------------------------
void
indicator(uint8 indicate) {
#ifdef __LCD3310_H__
  if(indicate) {
    lcd_gotoxy(70, 4);
    lcd_send(0x1C, LCD_TDATA);
    lcd_send(0x3E, LCD_TDATA);
    lcd_send(0x36, LCD_TDATA);
    lcd_send(0x3E, LCD_TDATA);
    lcd_send(0x1C, LCD_TDATA);
  } else {
    lcd_gotoxy(70, 4);
    lcd_puts(" ");
  }
#elif defined(LCD44780_H)
  lcd_set_cursor(0, 0);
  if(indicate) {
    lcd_print("-*-");
  } else {
    lcd_print("   ");
  }
#endif // defined(__LCD3310_H__)
}
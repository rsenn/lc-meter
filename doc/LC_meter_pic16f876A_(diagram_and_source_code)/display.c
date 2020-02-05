#include "display.h"

void
display_digit(unsigned char line, unsigned char column, unsigned char digit) {
  unsigned char i;
  if(line < 1 || line > 5)
    return;
  if(column > 74)
    return;
  if(digit > 9)
    return;

  lcd_gotoxy(column, line - 1);
  for(i = 0; i < 8; i++) lcd_send(digits_8x16[(digit << 4) + i], LCD_TDATA);
  lcd_gotoxy(column, line);
  for(i = 8; i < 16; i++) lcd_send(digits_8x16[(digit << 4) + i], LCD_TDATA);
}
void
display_unit(unsigned char unit) {
  unsigned char i;
  lcd_gotoxy(60, 2);
  for(i = 0; i < 18; i++) lcd_send(units[unit * 36 + i], LCD_TDATA);
  lcd_gotoxy(60, 3);
  for(i = 18; i < 36; i++) lcd_send(units[unit * 36 + i], LCD_TDATA);
}
void
display_reading(unsigned int measurement) { // measurement divide by 100
  // clear previous measurement
  lcd_gotoxy(0, 2);
  lcd_puts("         ");
  lcd_gotoxy(0, 3);
  lcd_puts("         ");
  // decimal point
  lcd_gotoxy(35, 3);
  lcd_send(0x70, LCD_TDATA);
  lcd_send(0x70, LCD_TDATA);
  lcd_send(0x70, LCD_TDATA);
  // hundreds digit
  if(measurement / 10000 > 0)
    display_digit(3, 5, measurement / 10000);
  // tens digit
  if(((measurement / 1000) % 10 > 0) || (measurement / 10000 > 0))
    display_digit(3, 15, (measurement / 1000) % 10);
  // ones digit
  display_digit(3, 25, (measurement / 100) % 10);
  // tenths digit
  display_digit(3, 40, (measurement / 10) % 10);
  // hundredths digit
  display_digit(3, 50, measurement % 10);
}
void
indicator(unsigned char indicate) {
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
}
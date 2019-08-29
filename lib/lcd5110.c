/*
NOKIA 5110 LCD driver library
84x48 lcd display PCD8544
by Regulus Berdin
V1.0 11/23/04   Created.
*/

#include "lcd5110.h"

#if USE_NOKIA5110_LCD

#define CLK_IN(data, bitnum)                                                                                           \
  NOP();                                                                                                               \
  LCD_CLK = 0;                                                                                                         \
  NOP();                                                                                                               \
  LCD_DATA = 0;                                                                                                        \
  if((data) & (bitnum)) {                                                                                              \
    LCD_DATA = 1;                                                                                                      \
  }                                                                                                                    \
  NOP();                                                                                                               \
  LCD_CLK = 1

const char lcd_font[][5] = {
    {0x00, 0x00, 0x00, 0x00, 0x00}, // sp
    {0x00, 0x00, 0x2f, 0x00, 0x00}, // !
    {0x00, 0x07, 0x00, 0x07, 0x00}, // "
    {0x14, 0x7f, 0x14, 0x7f, 0x14}, // #
    {0x24, 0x2a, 0x7f, 0x2a, 0x12}, // $
    //  { 0xc4, 0xc8, 0x10, 0x26, 0x46 },  // %
    {0b00100011, //%
     0b00010011,
     0b00001000,
     0b01100100,
     0b01100010},
    {0x36, 0x49, 0x55, 0x22, 0x50}, // &
    {0x00, 0x05, 0x03, 0x00, 0x00}, // '
    {0x00, 0x1c, 0x22, 0x41, 0x00}, // (
    {0x00, 0x41, 0x22, 0x1c, 0x00}, // )
    {0x14, 0x08, 0x3E, 0x08, 0x14}, // *
    {0x08, 0x08, 0x3E, 0x08, 0x08}, // +
    {0x00, 0x00, 0x50, 0x30, 0x00}, // ,
    {0x10, 0x10, 0x10, 0x10, 0x10}, // -
    {0x00, 0x60, 0x60, 0x00, 0x00}, // .
    {0x20, 0x10, 0x08, 0x04, 0x02}, // /
    {0x3E, 0x51, 0x49, 0x45, 0x3E}, // 0
    {0x00, 0x42, 0x7F, 0x40, 0x00}, // 1
    {0x42, 0x61, 0x51, 0x49, 0x46}, // 2
    {0x21, 0x41, 0x45, 0x4B, 0x31}, // 3
    {0x18, 0x14, 0x12, 0x7F, 0x10}, // 4
    {0x27, 0x45, 0x45, 0x45, 0x39}, // 5
    {0x3C, 0x4A, 0x49, 0x49, 0x30}, // 6
    {0x01, 0x71, 0x09, 0x05, 0x03}, // 7
    {0x36, 0x49, 0x49, 0x49, 0x36}, // 8
    {0x06, 0x49, 0x49, 0x29, 0x1E}, // 9
    {0x00, 0x36, 0x36, 0x00, 0x00}, // :
    {0x00, 0x56, 0x36, 0x00, 0x00}, // ;
    {0x08, 0x14, 0x22, 0x41, 0x00}, // <
    {0x14, 0x14, 0x14, 0x14, 0x14}, // =
    {0x00, 0x41, 0x22, 0x14, 0x08}, // >
    {0x02, 0x01, 0x51, 0x09, 0x06}, // ?
    {0x32, 0x49, 0x59, 0x51, 0x3E}, // @
    {0x7E, 0x11, 0x11, 0x11, 0x7E}, // A
    {0x7F, 0x49, 0x49, 0x49, 0x36}, // B
    {0x3E, 0x41, 0x41, 0x41, 0x22}, // C
    {0x7F, 0x41, 0x41, 0x22, 0x1C}, // D
    {0x7F, 0x49, 0x49, 0x49, 0x41}, // E
    {0x7F, 0x09, 0x09, 0x09, 0x01}, // F
    {0x3E, 0x41, 0x49, 0x49, 0x7A}, // G
    {0x7F, 0x08, 0x08, 0x08, 0x7F}, // H
    {0x00, 0x41, 0x7F, 0x41, 0x00}, // I
    {0x20, 0x40, 0x41, 0x3F, 0x01}, // J
    {0x7F, 0x08, 0x14, 0x22, 0x41}, // K
    {0x7F, 0x40, 0x40, 0x40, 0x40}, // L
    {0x7F, 0x02, 0x0C, 0x02, 0x7F}, // M
    {0x7F, 0x04, 0x08, 0x10, 0x7F}, // N
    {0x3E, 0x41, 0x41, 0x41, 0x3E}, // O
    {0x7F, 0x09, 0x09, 0x09, 0x06}, // P
    {0x3E, 0x41, 0x51, 0x21, 0x5E}, // Q
    {0x7F, 0x09, 0x19, 0x29, 0x46}, // R
    {0x46, 0x49, 0x49, 0x49, 0x31}, // S
    {0x01, 0x01, 0x7F, 0x01, 0x01}, // T
    {0x3F, 0x40, 0x40, 0x40, 0x3F}, // U
    {0x1F, 0x20, 0x40, 0x20, 0x1F}, // V
    {0x3F, 0x40, 0x38, 0x40, 0x3F}, // W
    {0x63, 0x14, 0x08, 0x14, 0x63}, // X
    {0x07, 0x08, 0x70, 0x08, 0x07}, // Y
    {0x61, 0x51, 0x49, 0x45, 0x43}, // Z
    {0x00, 0x7F, 0x41, 0x41, 0x00}, // [
    {0x55, 0x2A, 0x55, 0x2A, 0x55}, // 55
    {0x00, 0x41, 0x41, 0x7F, 0x00}, // ]
    {0x04, 0x02, 0x01, 0x02, 0x04}, // ^
    {0x40, 0x40, 0x40, 0x40, 0x40}, // _
    {0x00, 0x01, 0x02, 0x04, 0x00}, // '
    {0x20, 0x54, 0x54, 0x54, 0x78}, // a
    {0x7F, 0x48, 0x44, 0x44, 0x38}, // b
    {0x38, 0x44, 0x44, 0x44, 0x20}, // c
    {0x38, 0x44, 0x44, 0x48, 0x7F}, // d
    {0x38, 0x54, 0x54, 0x54, 0x18}, // e
    {0x08, 0x7E, 0x09, 0x01, 0x02}, // f
    {0x0C, 0x52, 0x52, 0x52, 0x3E}, // g
    {0x7F, 0x08, 0x04, 0x04, 0x78}, // h
    {0x00, 0x44, 0x7D, 0x40, 0x00}, // i
    {0x20, 0x40, 0x44, 0x3D, 0x00}, // j
    {0x7F, 0x10, 0x28, 0x44, 0x00}, // k
    {0x00, 0x41, 0x7F, 0x40, 0x00}, // l
    {0x7C, 0x04, 0x18, 0x04, 0x78}, // m
    {0x7C, 0x08, 0x04, 0x04, 0x78}, // n
    {0x38, 0x44, 0x44, 0x44, 0x38}, // o
    {0x7C, 0x14, 0x14, 0x14, 0x08}, // p
    {0x08, 0x14, 0x14, 0x18, 0x7C}, // q
    {0x7C, 0x08, 0x04, 0x04, 0x08}, // r
    {0x48, 0x54, 0x54, 0x54, 0x20}, // s
    {0x04, 0x3F, 0x44, 0x40, 0x20}, // t
    {0x3C, 0x40, 0x40, 0x20, 0x7C}, // u
    {0x1C, 0x20, 0x40, 0x20, 0x1C}, // v
    {0x3C, 0x40, 0x30, 0x40, 0x3C}, // w
    {0x44, 0x28, 0x10, 0x28, 0x44}, // x
    {0x0C, 0x50, 0x50, 0x50, 0x3C}, // y
    {0x44, 0x64, 0x54, 0x4C, 0x44}  // z
};

// -------------------------------------------------------------------------
uint8_t
lcd_str_width(const char* c) {
  uint8_t i;
  i = 0;
  while(*c) {
    ++i;
    ++c;
  }
  //  return i;
  return ((i << 1) + i) << 1; // return i*6
}

// -------------------------------------------------------------------------
void
lcd_send(uint8_t a, uint8_t cmd) {
  // set if data or command byte
  LCD_DC = 1;
  if(cmd == LCD_TCMD) {
    LCD_DC = 0;
  }
  NOP();
  LCD_CE = 0;
  // clock in data in A
  CLK_IN(a, BIT7);
  CLK_IN(a, BIT6);
  CLK_IN(a, BIT5);
  CLK_IN(a, BIT4);
  CLK_IN(a, BIT3);
  CLK_IN(a, BIT2);
  CLK_IN(a, BIT1);
  CLK_IN(a, BIT0);
  NOP();
  LCD_CE = 1;
}

// -------------------------------------------------------------------------
void
lcd_init(void) {
  LCD_TRIS();
  __delay_ms(20);
  // delay10ms(20);
  NOP();
  LCD_CLK = 0;
  NOP();
  LCD_DATA = 1;
  NOP();
  LCD_DC = 0;
  NOP();
  LCD_CE = 1;
  NOP();
  // reset LCD
  LCD_RESET = 0;
  __delay_ms(20);
  // delay10ms(20);
  LCD_RESET = 1;
#if 1
  lcd_send(0x21, LCD_TCMD); // extended commands
  lcd_send(0xC8, LCD_TCMD); // Vop (contrast)
  lcd_send(0x06, LCD_TCMD); // Temp coefficient
  lcd_send(0x13, LCD_TCMD); // LCD bias mode 1:48
  lcd_send(0x20, LCD_TCMD); // LCD standard, Horiz addressing
  lcd_send(0x0C, LCD_TCMD); // display control LCD normal mode
// lcd_send(0b00001101,LCD_TCMD);  //display control LCD invert mode
// lcd_send(0b00001001, LCD_TCMD);  //turn on all segments
#else
  lcd_send(0xA6, LCD_TCMD); // normal, 0xA7 negative
  lcd_send(0xA3, LCD_TCMD); // bias
  lcd_send(0xA1, LCD_TCMD); // addressing
  lcd_send(0xC0, LCD_TCMD); // direct, linear, normal
  lcd_send(0x22, LCD_TCMD); // V5 voltage
  lcd_send(0x81, LCD_TCMD); //(volume electric)
  lcd_send(0x2E, LCD_TCMD); // multiplier+stabilizer voltage
  lcd_send(0x2F, LCD_TCMD); // urmarire?
  lcd_send(0xE3, LCD_TCMD); // nop
  lcd_send(0x40, LCD_TCMD); // linear start address
  lcd_send(0xAF, LCD_TCMD); // lcd on, 0xAE lcd off
  lcd_send(0xA5, LCD_TCMD); // lcd all on, test?
#endif
}

// -------------------------------------------------------------------------
void
lcd_test(void) {
  uint16_t i;
  lcd_gotoxy(0, 0);
  for(i = 0; i < 504; ++i) {
    lcd_send(i, LCD_TDATA);
  }
}

// -------------------------------------------------------------------------
void
lcd_clear(void) {
  uint16_t i;
  lcd_gotoxy(0, 0);
  for(i = 0; i < 504; ++i) {
    lcd_send(0, LCD_TDATA);
  }
}

// -------------------------------------------------------------------------
void
lcd_gotoxy(uint8_t x, unsigned y) {
  lcd_send(x | 0b10000000, LCD_TCMD);
  lcd_send((y & 0b00000111) | 0b01000000, LCD_TCMD);
}

// -------------------------------------------------------------------------
void
lcd_putch(uint8_t c) {
  if(c > 'z' || c < 32) {
    return;
  }
  lcd_send(lcd_font[c - 32][0], LCD_TDATA);
  lcd_send(lcd_font[c - 32][1], LCD_TDATA);
  lcd_send(lcd_font[c - 32][2], LCD_TDATA);
  lcd_send(lcd_font[c - 32][3], LCD_TDATA);
  lcd_send(lcd_font[c - 32][4], LCD_TDATA);
  lcd_send(0, LCD_TDATA);
}

// -------------------------------------------------------------------------
#if 1
void
lcd_puts(const char* s) {
  while(*s) {
    lcd_putch(*s);
    ++s;
  }
  // while(*s) {lcd_putch(*s++);}
}

// -------------------------------------------------------------------------
void
lcd_center_puts(uint8_t y, const char* c) {
  lcd_gotoxy(41 - (lcd_str_width(c) / 2), y);
  lcd_puts(c);
}
#endif

// -------------------------------------------------------------------------
void
lcd_puts2(char* s) {
  while(*s) {
    lcd_putch(*s);
    ++s;
  }
  // while(*s) {lcd_putch(*s++);}
}

// -------------------------------------------------------------------------
void
lcd_clear_line(uint8_t y) {
  uint8_t k;
  lcd_gotoxy(0, y);
  for(k = 0; k < 83; ++k) {
    lcd_send(0, LCD_TDATA);
  }
}

// -------------------------------------------------------------------------
void
lcd_center_puts2(uint8_t y, char* c, uint8_t len) {
  lcd_gotoxy(42 - (len << 1) - len, y);
  while(len) {
    lcd_putch(*c);
    ++c;
    --len;
  }
}

const char bat_symbol[] = {0b00111000,
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
                           0b11111110};

// -------------------------------------------------------------------------
void
lcd_battery(uint8_t chg) {
  uint8_t i;
  chg = 12 - chg;
  lcd_gotoxy(71, 0);
  for(i = 0; i < 13; ++i) {
    if(i >= chg) {
      lcd_send(0b11111110, LCD_TDATA);
    } else {
      lcd_send(bat_symbol[i], LCD_TDATA);
    }
  }
}

// -------------------------------------------------------------------------
#if 0
void
lcd_bluetooth(void)
{
  lcd_gotoxy(0, 0);
  lcd_send(0b00101000, LCD_TDATA);
  lcd_send(0b11111110, LCD_TDATA);
  lcd_send(0b10010010, LCD_TDATA);
  lcd_send(0b01101100, LCD_TDATA);
}
#endif

// -------------------------------------------------------------------------
void
lcd_symbol(const char* sym) {
  uint8_t i, n;
  n = sym[0];
  for(i = 1; i <= n; ++i) {
    lcd_send(sym[i], LCD_TDATA);
  }
}

#endif // USE_NOKIA5110_LCD

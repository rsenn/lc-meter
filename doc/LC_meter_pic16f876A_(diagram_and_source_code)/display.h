#include "lcd3310.h"

static const char logo_image[504] = {
  0x00, 0x40, 0xC0, 0xC0, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0xF8, 0xF0, 0xE0,
  0x00, 0x00, 0x00, 0x00, 0xE0, 0xE0, 0xE0, 0xC0, 0x80, 0x10, 0x7C, 0xFC, 0xFE, 0xFC, 0xF8, 0xE0, 0xC0, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x07, 0x1F, 0x7F, 0xFC, 0xF8, 0xE0, 0x80, 0x00,
  0x00, 0x00, 0x00, 0xFC, 0xFE, 0xFC, 0xDC, 0x18, 0x38, 0x70, 0xE0, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x80, 0x80, 0x80, 0x00, 0x80, 0xC0, 0xC0, 0xC0, 0x80, 0x80, 0x00, 0x00, 0xF0,
  0xF8, 0xF8, 0x78, 0x70, 0xF0, 0xCF, 0x9F, 0x3F, 0x7F, 0xFF, 0xF6, 0xC0, 0x87, 0x7F, 0xFF, 0xFF, 0xE7, 0x9F, 0xFC,
  0xFB, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xDF, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x01, 0x03, 0x0F, 0x7F, 0xFE, 0xF8, 0xE0, 0x80, 0x00, 0x07, 0x3F, 0xFF, 0xFE, 0xFC, 0xE0, 0x01,
  0x03, 0x0F, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x3F, 0xFF, 0xFF, 0xFF, 0xE7, 0x1F, 0x7F, 0xFF,
  0xFF, 0xF3, 0xCF, 0x3F, 0xFF, 0xFE, 0xF8, 0xE3, 0x9F, 0x7F, 0xFF, 0xFC, 0xFF, 0xDF, 0x1F, 0x0F, 0x0E, 0xC3, 0xCF,
  0x3F, 0xFF, 0xFE, 0xF9, 0xC7, 0x1F, 0x7F, 0xFF, 0xFF, 0xF3, 0x83, 0x03, 0x21, 0xE7, 0xDF, 0xFF, 0xFC, 0xF0, 0xC0,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x0F, 0x3F,
  0xFE, 0xF8, 0xE0, 0x80, 0x01, 0x07, 0x1F, 0xFF, 0xFE, 0xF8, 0xE0, 0x80, 0x00, 0x04, 0x1C, 0xF8, 0xF0, 0x80, 0x00,
  0x00, 0x01, 0x03, 0x0F, 0x3F, 0xFF, 0xFE, 0xF9, 0xE7, 0x9F, 0x7F, 0x7F, 0x7C, 0x71, 0x07, 0x3F, 0x3F, 0x1E, 0x1D,
  0x01, 0x03, 0x07, 0x0F, 0x0E, 0x0E, 0x0C, 0x0F, 0x0F, 0x00, 0x01, 0x03, 0x07, 0x0F, 0x0E, 0x0F, 0x07, 0x03, 0x07,
  0x0E, 0x1E, 0x3D, 0x3F, 0x3F, 0x19, 0x07, 0x1F, 0x7F, 0x7E, 0x78, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x3F, 0xFE, 0xF8, 0xF0, 0x80, 0x01, 0x07, 0x0F,
  0x9F, 0xFF, 0x7C, 0xF8, 0xF0, 0xF7, 0xFF, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x03, 0x0F, 0x3F, 0xFE, 0xFE, 0x7F, 0x3F, 0x1F, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
static const char digits_8x16[160] = {
  0xfc, 0xfe, 0xfe, 0x06, 0x06, 0xfe, 0xfe, 0xfc, 0x7f, 0xff, 0xff, 0xc0, 0xc0, 0xff, 0xff, 0x7f, // 0
  0x00, 0x18, 0x1c, 0xfe, 0xfe, 0xfe, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xff, 0xff, 0xff, 0xc0, 0x00, // 1
  0x3c, 0x3e, 0x3e, 0x06, 0x86, 0xfe, 0xfe, 0x7c, 0xe0, 0xf0, 0xfc, 0xff, 0xcf, 0xc7, 0xc1, 0xc0, // 2
  0x1c, 0x1e, 0x9e, 0x86, 0x86, 0xfe, 0xfe, 0xfc, 0x78, 0xf8, 0xf9, 0xc1, 0xc1, 0xff, 0xff, 0x7e, // 3
  0x00, 0xf0, 0xfe, 0x7e, 0xfe, 0xfe, 0xfe, 0x00, 0x3f, 0x3f, 0x37, 0x30, 0xff, 0xff, 0xff, 0x30, // 4
  0xfe, 0xfe, 0xfe, 0xc6, 0xc6, 0xc6, 0xc6, 0x86, 0x71, 0xf1, 0xf1, 0xc0, 0xc0, 0xff, 0xff, 0x7f, // 5
  0xfc, 0xfe, 0xfe, 0xc6, 0xc6, 0xde, 0xde, 0x9c, 0x7f, 0xff, 0xff, 0xc0, 0xc0, 0xff, 0xff, 0x7f, // 6
  0x06, 0x06, 0x06, 0x86, 0xe6, 0xfe, 0x7e, 0x1e, 0x80, 0xf0, 0xfe, 0x3f, 0x07, 0x01, 0x00, 0x00, // 7
  0x7c, 0xfe, 0xfe, 0x86, 0x86, 0xfe, 0xfe, 0x7c, 0x7e, 0xff, 0xff, 0xc1, 0xc1, 0xff, 0xff, 0x7e, // 8
  0xfc, 0xfe, 0xfe, 0x86, 0x86, 0xfe, 0xfe, 0xfc, 0x78, 0xf9, 0xf9, 0xc1, 0xc1, 0xff, 0xff, 0x7f  // 9
};
static const char units[288] = { // 8units * (18*2)
  // H = 0
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  252,
  252,
  192,
  192,
  192,
  252,
  252,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  31,
  31,
  0,
  0,
  0,
  31,
  31,
  // mH = 1
  224,
  224,
  192,
  96,
  224,
  224,
  192,
  96,
  224,
  192,
  0,
  252,
  252,
  192,
  192,
  192,
  252,
  252,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  31,
  31,
  0,
  0,
  0,
  31,
  31,
  // uH = 2
  0,
  0,
  0,
  224,
  224,
  0,
  0,
  224,
  224,
  0,
  0,
  252,
  252,
  192,
  192,
  192,
  252,
  252,
  0,
  0,
  0,
  255,
  255,
  24,
  8,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  0,
  31,
  31,
  // nH = 3
  0,
  0,
  0,
  224,
  224,
  192,
  96,
  224,
  192,
  0,
  0,
  252,
  252,
  192,
  192,
  192,
  252,
  252,
  0,
  0,
  0,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  0,
  31,
  31,
  // mF = 4
  224,
  224,
  192,
  96,
  224,
  224,
  192,
  96,
  224,
  192,
  0,
  0,
  252,
  252,
  204,
  204,
  204,
  12,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  0,
  0,
  // uF = 5
  0,
  0,
  0,
  0,
  224,
  224,
  0,
  0,
  224,
  224,
  0,
  0,
  252,
  252,
  204,
  204,
  204,
  12,
  0,
  0,
  0,
  0,
  255,
  255,
  24,
  8,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  0,
  0,
  // nF = 6
  0,
  0,
  0,
  0,
  224,
  224,
  192,
  96,
  224,
  192,
  0,
  0,
  252,
  252,
  204,
  204,
  204,
  12,
  0,
  0,
  0,
  0,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  31,
  31,
  0,
  0,
  0,
  0,
  // pF = 7
  0,
  0,
  0,
  0,
  224,
  224,
  96,
  96,
  224,
  192,
  0,
  0,
  252,
  252,
  204,
  204,
  204,
  12,
  0,
  0,
  0,
  0,
  255,
  255,
  24,
  24,
  31,
  7,
  0,
  0,
  31,
  31,
  0,
  0,
  0,
  0
};

void display_digit(unsigned char line, unsigned char column, unsigned char digit);
void display_unit(unsigned char unit);
void display_reading(unsigned int measurement); // measurement divide by 100
void indicator(unsigned char indicate);
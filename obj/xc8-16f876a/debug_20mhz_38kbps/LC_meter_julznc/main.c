#include <htc.h>
#include <pic_chip_select.h>
#line 27 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(__nop)
extern void __nop(void);
#include <eeprom_routines.h>
#line 149 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
#pragma intrinsic(_delay)
extern __nonreentrant void _delay(unsigned long);
#line 184 "C:/Program Files (x86)\\Microchip\\xc8\\v1.34\\include\\pic.h"
extern unsigned char __resetbits;
extern __bit __powerdown;
extern __bit __timeout;
#include <xc.h>
#include <htc.h>
#line 6 "C:/Users\\roman\\Documents\\lc-meter\\src\\config-16f876a.h"
#pragma config FOSC=HS, WDTE=OFF, PWRTE=ON, LVP=OFF, CPD=OFF, WRT=OFF, CP=OFF
#line 31 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
unsigned char lcd_str_width(const unsigned char *c);
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
#line 45 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
void lcd_battery(unsigned char chg);
#line 49 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
void lcd_symbol(const char *sym);
	
#line 30 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\main.h"
double F1, F2, F3;

void initialize(void);
unsigned int measure_freq(void);
void calibrate(void);
void measure_capacitance(void);
void measure_inductance(void);
void delay10ms(unsigned int period_10ms);
#line 31 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
unsigned char lcd_str_width(const unsigned char *c);
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
#line 45 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
void lcd_battery(unsigned char chg);
#line 49 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
void lcd_symbol(const char *sym);
	
#line 31 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
unsigned char lcd_str_width(const unsigned char *c);
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
#line 45 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
void lcd_battery(unsigned char chg);
#line 49 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\lcd3310.h"
void lcd_symbol(const char *sym);
	
#line 3 "C:/Users\\roman\\Documents\\lc-meter\\src\\julznc\\display.h"
static const char logo_image[504] = 
{
 0x00, 0x40, 0xC0, 0xC0, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE0, 0xF8, 0xF0, 0xE0, 0x00, 0x00, 0x00, 0x00, 0xE0, 0xE0, 0xE0, 0xC0, 0x80, 0x10, 0x7C, 0xFC, 0xFE, 0xFC, 0xF8, 0xE0, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x07, 0x1F, 0x7F, 0xFC, 0xF8, 0xE0, 0x80, 0x00, 0x00, 0x00, 0x00, 0xFC, 0xFE, 0xFC, 0xDC, 0x18, 0x38, 0x70, 0xE0, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x80, 0x80, 0x80, 0x00, 0x80, 0xC0, 0xC0, 0xC0, 0x80, 0x80, 0x00, 0x00, 0xF0, 0xF8, 0xF8, 0x78, 0x70, 0xF0, 0xCF, 0x9F, 0x3F, 0x7F, 0xFF, 0xF6, 0xC0, 0x87, 0x7F, 0xFF, 0xFF, 0xE7, 0x9F, 0xFC, 0xFB, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xDF, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x0F, 0x7F, 0xFE, 0xF8, 0xE0, 0x80, 0x00, 0x07, 0x3F, 0xFF, 0xFE, 0xFC, 0xE0, 0x01, 0x03, 0x0F, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x3F, 0xFF, 0xFF, 0xFF, 0xE7, 0x1F, 0x7F, 0xFF, 0xFF, 0xF3, 0xCF, 0x3F, 0xFF, 0xFE, 0xF8, 0xE3, 0x9F, 0x7F, 0xFF, 0xFC, 0xFF, 0xDF, 0x1F, 0x0F, 0x0E, 0xC3, 0xCF, 0x3F, 0xFF, 0xFE, 0xF9, 0xC7, 0x1F, 0x7F, 0xFF, 0xFF, 0xF3, 0x83, 0x03, 0x21, 0xE7, 0xDF, 0xFF, 0xFC, 0xF0, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x0F, 0x3F, 0xFE, 0xF8, 0xE0, 0x80, 0x01, 0x07, 0x1F, 0xFF, 0xFE, 0xF8, 0xE0, 0x80, 0x00, 0x04, 0x1C, 0xF8, 0xF0, 0x80, 0x00, 0x00, 0x01, 0x03, 0x0F, 0x3F, 0xFF, 0xFE, 0xF9, 0xE7, 0x9F, 0x7F, 0x7F, 0x7C, 0x71, 0x07, 0x3F, 0x3F, 0x1E, 0x1D, 0x01, 0x03, 0x07, 0x0F, 0x0E, 0x0E, 0x0C, 0x0F, 0x0F, 0x00, 0x01, 0x03, 0x07, 0x0F, 0x0E, 0x0F, 0x07, 0x03, 0x07, 0x0E, 0x1E, 0x3D, 0x3F, 0x3F, 0x19, 0x07, 0x1F, 0x7F, 0x7E, 0x78, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00,
 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x3F, 0xFE, 0xF8, 0xF0, 0x80, 0x01, 0x07, 0x0F, 0x9F, 0xFF, 0x7C, 0xF8, 0xF0, 0xF7, 0xFF, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x0F, 0x3F, 0xFE, 0xFE, 0x7F, 0x3F, 0x1F, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 };
static const char digits_8x16[160]=
{
   0xfc, 0xfe, 0xfe, 0x06, 0x06, 0xfe, 0xfe, 0xfc, 0x7f, 0xff, 0xff, 0xc0, 0xc0, 0xff, 0xff, 0x7f, 
   0x00, 0x18, 0x1c, 0xfe, 0xfe, 0xfe, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xff, 0xff, 0xff, 0xc0, 0x00, 
   0x3c, 0x3e, 0x3e, 0x06, 0x86, 0xfe, 0xfe, 0x7c, 0xe0, 0xf0, 0xfc, 0xff, 0xcf, 0xc7, 0xc1, 0xc0, 
   0x1c, 0x1e, 0x9e, 0x86, 0x86, 0xfe, 0xfe, 0xfc, 0x78, 0xf8, 0xf9, 0xc1, 0xc1, 0xff, 0xff, 0x7e, 
   0x00, 0xf0, 0xfe, 0x7e, 0xfe, 0xfe, 0xfe, 0x00, 0x3f, 0x3f, 0x37, 0x30, 0xff, 0xff, 0xff, 0x30, 
   0xfe, 0xfe, 0xfe, 0xc6, 0xc6, 0xc6, 0xc6, 0x86, 0x71, 0xf1, 0xf1, 0xc0, 0xc0, 0xff, 0xff, 0x7f, 
   0xfc, 0xfe, 0xfe, 0xc6, 0xc6, 0xde, 0xde, 0x9c, 0x7f, 0xff, 0xff, 0xc0, 0xc0, 0xff, 0xff, 0x7f, 
   0x06, 0x06, 0x06, 0x86, 0xe6, 0xfe, 0x7e, 0x1e, 0x80, 0xf0, 0xfe, 0x3f, 0x07, 0x01, 0x00, 0x00, 
   0x7c, 0xfe, 0xfe, 0x86, 0x86, 0xfe, 0xfe, 0x7c, 0x7e, 0xff, 0xff, 0xc1, 0xc1, 0xff, 0xff, 0x7e, 
   0xfc, 0xfe, 0xfe, 0x86, 0x86, 0xfe, 0xfe, 0xfc, 0x78, 0xf9, 0xf9, 0xc1, 0xc1, 0xff, 0xff, 0x7f 
};
static const char units[288]= 
{
	
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 252, 192, 192, 192, 252, 252, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 0, 0, 0, 31, 31,
	
	224, 224, 192, 96, 224, 224, 192, 96, 224, 192, 0, 252, 252, 192, 192, 192, 252, 252, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 31, 31, 0, 0, 0, 31, 31,
	
	0, 0, 0, 224, 224, 0, 0, 224, 224, 0, 0, 252, 252, 192, 192, 192, 252, 252, 0, 0, 0, 255, 255, 24, 8, 31, 31, 0, 0, 31, 31, 0, 0, 0, 31, 31,
	
	0, 0, 0, 224, 224, 192, 96, 224, 192, 0, 0, 252, 252, 192, 192, 192, 252, 252, 0, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 0, 31, 31,
	
	224, 224, 192, 96, 224, 224, 192, 96, 224, 192, 0, 0, 252, 252, 204, 204, 204, 12, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 0, 0,
	
	0, 0, 0, 0, 224, 224, 0, 0, 224, 224, 0, 0, 252, 252, 204, 204, 204, 12, 0, 0, 0, 0, 255, 255, 24, 8, 31, 31, 0, 0, 31, 31, 0, 0, 0, 0,
	
	0, 0, 0, 0, 224, 224, 192, 96, 224, 192, 0, 0, 252, 252, 204, 204, 204, 12, 0, 0, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 31, 31, 0, 0, 0, 0,
	
	0, 0, 0, 0, 224, 224, 96, 96, 224, 192, 0, 0, 252, 252, 204, 204, 204, 12, 0, 0, 0, 0, 255, 255, 24, 24, 31, 7, 0, 0, 31, 31, 0, 0, 0, 0
};

void display_digit(unsigned char line, unsigned char column, unsigned char digit);
void display_unit(unsigned char unit);
void display_reading(unsigned int measurement);	
void indicator(unsigned char indicate);
#line 6 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/main.c"
void main(void)
{
	int i;
	initialize();
	lcd_gotoxy(0,0);
	
	for(i=0; i<504; i++)	lcd_send(logo_image[i], 1);
	lcd_gotoxy(40,5);
	lcd_puts("YUS'09");
	delay10ms(200);
	calibrate();
	lcd_clear();
	
while(1)
	{
		if(RB0)	measure_capacitance();
		else measure_inductance();
		indicator(1);
		delay10ms(30);
		indicator(0);
		delay10ms(20);
	}
}
void initialize(void)
{
	
	CMCON = 0b00000101;
	TRISA = 0b11001111;
	
	T0CS = 1;	
	T0SE = 1;	
	PSA = 0;	
	PS2 = 1;	
	PS1 = 1;
	PS0 = 1;
	
	lcd_init();
	lcd_clear();
	
	TRISB0 = 1;
	TRISC0 = 0;
	#line 49 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/main.c"
nRBPU = 1; 
}
unsigned int measure_freq(void) 
{
	unsigned int oldTMR0, prescaler_cntr;
	TMR0IF = 0; 
	TRISA4 = 0; 
	delay10ms(2); 
	TMR0 = 0x00; 
	delay10ms(10);
	TRISA4 = 1; 
	oldTMR0 = TMR0;
	prescaler_cntr=0;
	do{	
		T0SE = 1;
		__nop();	__nop();
		T0SE = 0;
		__nop();	__nop();
		prescaler_cntr++;	
	}while(oldTMR0==TMR0 && prescaler_cntr<=255);	
	
	return ((oldTMR0<<8) + (256-prescaler_cntr));
}
#line 76 "C:\\Users\\roman\\Documents\\lc-meter\\obj\\../src/julznc/main.c"
void calibrate(void)
{
	unsigned char i;
	lcd_clear();
	lcd_gotoxy(1,1);
	lcd_puts("Calibrating.");
	lcd_gotoxy(1,3);
	lcd_puts("please wait..");
	RC0 = 0;
	F1 = (double)measure_freq();	
	delay10ms(50);
	F1 = (double)measure_freq();
	RC0 = 1;
	F2 = (double)measure_freq();	
	delay10ms(50);
	F2 = (double)measure_freq();
	RC0 = 0;
	lcd_gotoxy(0,4);
	for(i=0; i<84; i++)
	{	
		lcd_send(0xfc, 1);
		delay10ms(2);
	}
}
void measure_capacitance()
{
	unsigned int var;
	double Cin;
	lcd_gotoxy(7,5);
	lcd_puts(" capacitance");
	var = measure_freq();
	F3 = (double)var; 
	if(F3>F1)	F3 = F1;	
	Cin = F2*F2*(F1*F1 - F3*F3)*1000/(F3*F3*(F1*F1-F2*F2));
	if(Cin>999)
	{
		if(Cin>(999E3))
		{
			if(Cin>(999E6))
			{
				Cin = Cin / (1E9);
				display_unit(4);	
			}
			else
			{
				Cin = Cin / (1E6);
				display_unit(5);	
			}
		}
		else
		{
			Cin = Cin/1E3;
			display_unit(6);	
		}
	}
	else	display_unit(7);	
	Cin = Cin*100; 
	var = (unsigned int)Cin;
	display_reading(var);
}
void measure_inductance()
{
	unsigned int var;
	double Lin, numerator, denominator;
	lcd_gotoxy(7,5);
	lcd_puts(" inductance ");
	var = measure_freq();
	F3 = (double)var; 
	if(F3>F1)	F3 = F1;	
	numerator = ((F1*F1)-(F3*F3)) * ((F1*F1)-(F2-F2)) * (100*100);
	denominator = 4*3.14159*3.14159*F1*F1*F2*F2*F3*F3*1000;
	Lin = (numerator/denominator) * 1E15;	
	if(Lin>999)
	{
		if(Lin>(999E3))
		{
			if(Lin>(999E6))
			{
				Lin = Lin / (1E9);
				display_unit(0);	
			}
			else
			{
				Lin = Lin / (1E6);
				display_unit(1);	
			}
		}
		else
		{
			Lin = Lin/1E3;
			display_unit(2);	
		}
	}
	else	display_unit(3);	
	Lin = Lin*100; 
	var = (unsigned int)Lin;
	display_reading(var);
}
void delay10ms(unsigned int period_10ms)
{
	do{ _delay((unsigned long)((10)*(20000000/4000.0))); }while(--period_10ms);
}

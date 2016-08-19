#include "LC-meter.h"
#include "lcd3310.h"
#include "lcd44780.h"
#include "display.h"
#include "interrupt.h"


volatile uint16 bres;
volatile  uint32 seconds;
volatile bit led_state = 0;
static uint16 tmr1_reload;


void main(void)
{
	int i;
	initialize();
	lcd_gotoxy(0,0);
	//show startup logo
	//for(i=0; i<504; i++)	lcd_send(logo_image[i], LCD_TDATA);
	lcd_puts("LC meter");
#if USE_NOKIA3310_LCD
	lcd_gotoxy(40,5);
#else
	lcd_gotoxy(10,0);
#endif

	lcd_puts("YUS'09");
	delay10ms(200);
	calibrate();
	lcd_clear();

	while(1)
	{
		if(LC_select)	measure_capacitance();
		else			measure_inductance();
		indicator(1);
		delay10ms(30);
		indicator(0);
		delay10ms(20);
	}
}

void
start_timer1(unsigned char prescale,  uint16 ticks)
{
  bres = 0;

  tmr1_reload = 65535 - ticks;
  //TMR1H = tmr1_reload >> 8;
  //TMR1L = tmr1_reload & 0xff;
  TMR1 = tmr1_reload;
  T1CONbits.T1CKPS = prescale;
//  T1SYNC = 0;
  TMR1CS = 0;
  T1OSCEN= 0;
  TMR1ON = 1;
  TMR1IE = 1;
  TMR1IF = 0;
}


void initialize(void)
{
	//setup comparator
	CMCON = 0b00000101;
	TRISA = 0b11001111;
	//setup timer0 for frequency counter
	T0CS = 1;	//Transition on T0CKI pin
	T0SE = 1;	//Increment on high-to-low transition on T0CKI pin
	PSA = 0;	//Prescaler is assigned to the Timer0 module
	PS2 = 1;	//PS2:PS0 -> Prescaler Rate = divide by 256
	PS1 = 1;
	PS0 = 1;

	INIT_LED();
    INIT_LED2();
    start_timer1(0, 0xff);

	//initialize 3310 lcd
	lcd_init();
	lcd_clear();
	//others
	lc_tris();
	relay_tris();
	nRBPU = 1;		// enable portB internal pullup

	PEIE = 1;
	GIE = 1;
}

unsigned int measure_freq(void)		//16-bit freq
{
	unsigned int oldTMR0, prescaler_cntr;
	TMR0IF = 0;		//clear timer0 interrupt flag
	TRISA4 = 0;		//Enable RA4 output to T0CKI
	delay10ms(2);			//stablize oscillator
	TMR0 = 0x00;			//reset timer0 counter (including prescaler)
	delay10ms(10);
	TRISA4 = 1;		//Disable RA4 output to T0CKI
	oldTMR0 = TMR0;
	prescaler_cntr=0;
	do{	//self-clocking
		T0SE = 1;
		NOP();	NOP();
		T0SE = 0;
		NOP();	NOP();
		prescaler_cntr++;	// count until TMR0 incremented
	}while(oldTMR0==TMR0 && prescaler_cntr<=255);	//test if timer0 has incremented
	//}while(oldTMR0==TMR0);	//test if timer0 has incremented
	return ((oldTMR0<<8) + (256-prescaler_cntr));
}

void calibrate(void)
{
	unsigned char i;
	lcd_clear();
	lcd_gotoxy(1,1);
	lcd_puts("Calibrating.");
	lcd_gotoxy(1,3);
	lcd_puts("please wait..");
	remove_ccal();
	F1 = (double)measure_freq();	//dummy reading to stabilize oscillator
	delay10ms(50);
	F1 = (double)measure_freq();
	add_ccal();
	F2 = (double)measure_freq();	//dummy reading to stabilize oscillator
	delay10ms(50);
	F2 = (double)measure_freq();
	remove_ccal();
	lcd_gotoxy(0,4);
	for(i=0; i<84; i++)
	{	//show progress bar
		lcd_puts(".");
//		lcd_send(0xfc, LCD_TDATA);
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
	if(F3>F1)	F3 = F1;	//max freq is F1;
	Cin = F2*F2*(F1*F1 - F3*F3)*Ccal/(F3*F3*(F1*F1-F2*F2));
	if(Cin>999)
	{
		if(Cin>(999E3))
		{
			if(Cin>(999E6))
			{
				Cin = Cin / (1E9);
				display_unit(4);	//"mF"
			}
			else
			{
				Cin = Cin / (1E6);
				display_unit(5);	//"uF"
			}
		}
		else
		{
			Cin = Cin/1E3;
			display_unit(6);	//"nF"
		}
	}
	else	display_unit(7);	//"pF"
	Cin = Cin*100;		//scale to 2 decimal place
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
	if(F3>F1)	F3 = F1;	//max freq is F1;
	numerator = ((F1*F1)-(F3*F3)) * ((F1*F1)-(F2-F2)) * (gate_period*gate_period);
	denominator = 4*pi*pi*F1*F1*F2*F2*F3*F3*Ccal;
	Lin = (numerator/denominator) * 1E15;	//scale to nH	{ pF/1E12 * nH/1E9 * (s/1E3)^2 }
	if(Lin>999)
	{
		if(Lin>(999E3))
		{
			if(Lin>(999E6))
			{
				Lin = Lin / (1E9);
				display_unit(0);	//"H"
			}
			else
			{
				Lin = Lin / (1E6);
				display_unit(1);	//"mH"
			}
		}
		else
		{
			Lin = Lin/1E3;
			display_unit(2);	//"uH"
		}
	}
	else	display_unit(3);	//"nH"
	Lin = Lin*100;		//scale to 2 decimal place
	var = (unsigned int)Lin;
	display_reading(var);
}
void delay10ms(unsigned int period_10ms)
{
	do{ __delay_ms(10); }while(--period_10ms);
}

INTERRUPT(void isr)
{
  if(TMR1IF) {
    TMR1 = tmr1_reload;

    bres++;

    if (bres >= 500) {
      bres -= 500;
  seconds++;
  led_state = !led_state;
		SET_LED(led_state);
		SET_LED2(led_state);
    }
    TMR1IF = 0;
  }
}
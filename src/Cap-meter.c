 /*
 Project: Capacitance meter
 Description : CapMeter based on RC time constant
 MCU: PIC16F28A
 Oscillator: HS, 4.0000 MHz external
 Written by: Rajendra Bhatt (www.embedded-lab.com)
 
*/
 #include "interrupt.h"
#include "Cap-meter.h"
#include "config-bits.h"
//#include "main.h"
#include "delay.h"

#if USE_HD44780_LCD
# include "lcd44780.h"
#endif

#if USE_NOKIA5110_LCD
# include "lcd5110.h"
#endif

#include "timer.h"

#ifdef USE_UART
# include "uart.h"
#endif

#if USE_SER
# include "ser.h"
#endif

#if USE_SOFTSER
# include "softser.h"
#endif

#include "print.h"
#include "format.h"
#include "buffer.h"

#define Va RA0
#define Switch RB0


 buffer_t buffer = BUFFER_STATIC(lcd_putch);


char message1[] = "Capacitance";
char message2[] = "Meter";
 
unsigned int T_Value, Num;
unsigned short i, j, TimerValue, OverRange = 0;
char Capacitance[] = "00.000 uF";
 
/* Interrupt routine */
INTERRUPT_HANDLER() {
  if(TMR2IF){
  TMR2 = TimerValue;
  Num ++;
  if(Num > 9999) OverRange = 1; // Range is 99.99 uF
  TMR2IF =0; // Clear TMR0 interrupt flag
  }
}
 
void Display_Cap(unsigned int n){
 Capacitance[0] = n/10000 + 48;
 Capacitance[1] = (n/1000)%10 + 48;
 Capacitance[3] = (n/100)%10 + 48;
 Capacitance[4] = (n/10)%10 + 48;
 Capacitance[5] = (T_Value*10)/153 + 48;
 lcd_clear();
 lcd_gotoxy(0,0);
 lcd_print("C = ");
 format_number(lcd_putch, Capacitance, 10, 0); 
}
 
void reset(){
 TRISA = 0b00000100;
 CMCON = 7;
 RA1 = 0;
 delay_ms(2000);
 TRISA = 0b00000110;
 CMCON = 5;
}
 
void main(){
 
  char cap_size;
  TRISB = 0b00000001;
  PORTB = 0;
  TRISA = 0b00000110;
  T0CS = 0;
  GIE = 1; //Enable global interrupt
  PEIE = 1; //Enable peripheral interrupt
 
  // Configure Timer2 module
  TMR2IE = 1;  // Enable Timer2 interrupt
  T2CON = 0;        // Prescaler 1:1, and Timer2 is off initially
  TMR2IF =0;   // Clear int bit
 
  // Configure Comparator module
  CMCON = 5;        // Independent comparator between RA1 (-) and RA2(+)
 
  lcd_init(TRUE);

  lcd_clear();
  //Lcd_Cmd(_LCD_CURSOR_OFF);
  lcd_gotoxy(0,0);
  lcd_print(message1);
  lcd_gotoxy(1,0);
  lcd_print(message2);
  delay_ms(2000);
  lcd_clear();
 
 lcd_home();
  lcd_print( "C = ");
  format_number(lcd_putch, Capacitance, 10, 0); 

    Va = 0;
  TimerValue = 108;  // 104 + 4 additional clock cycles delay on branching to ISR
  while(1){
   if(!Switch) {
   Num = 0;
   OverRange =0;
   lcd_clear();
   lcd_home();
   lcd_print("Testing.");
   lcd_gotoxy(0,1);
   lcd_print("...");
   TMR2 = TimerValue;       // Initialize Timer2
   Va = 1; //apply voltage
   TMR2ON = 1; // start timer
   while(C2OUT) {
    if(OverRange) break;
   }
   TMR2ON = 0; // stop timer
   T_Value = TMR2 - TimerValue;   // T_Value is used for improved resolution
   Va = 0;
  //---------------------------------
  if(!OverRange){
    Display_Cap(Num*10);
  }
  else{
    OverRange = 0;
    lcd_clear();
    lcd_home();
    lcd_print("Out of Range!");
   }
   reset();
  }
 }
}
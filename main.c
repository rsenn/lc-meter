#include "main.h"
#include "delay.h"
#include "lcd44780.h"
#include "display.h"

#ifdef SDCC
__code uint16_t __at(_CONFIG) __configword = CONFIG_WORD;
#endif

#ifdef __XC__
# pragma config WDTE = OFF, PWRTE = ON, CP = OFF, BOREN = ON, DEBUG = OFF, LVP = OFF, CPD = OFF, WRT = OFF, FOSC = HS
#endif

#ifdef HI_TECH_C
__CONFIG(CONFIG_WORD);
#endif

double F1, F2, F3;

// -------------------------------------------------------------------------
void
main(void) {
  int16 i;
    relay_tris();
/*
 
 for(i = 0; i < 10; i++) {
   RC5 = HIGH;
   __delay_ms(500);
   RC5 = LOW;
   __delay_ms(500);
 }*/
 
#if USE_NOKIA3310_LCD
  initialize();
  lcd_gotoxy(0, 0);
  //show startup logo
  for(i = 0; i < 504; i++) lcd_send(logo_image[i], LCD_TDATA);
  lcd_gotoxy(40, 5);
  lcd_puts("RLS'15");
#elif defined(USE_HD44780_LCD)
  initialize();
  lcd_begin(2, 1);
  lcd_set_cursor(0, 0);
  lcd_print("RLS'15");
#endif // defined(USE_NOKIA3310_LCD)
 // delay10ms(200);
 F1 = 65535;
 F2 = 1;

 
 // calibrate();
  //lcd_clear();

  while(1) {
    lcd_set_cursor(19,0);
    if(LC_select) {
      lcd_write('C');
      measure_capacitance();
    }  else {
      lcd_write('L');
     measure_inductance();
    } 
    indicator(1);
    delay10ms(30);
    indicator(0);
    delay10ms(20);
  }
}

// -------------------------------------------------------------------------
void
initialize(void) {
  //setup comparator
  CMCON = 0b00000101;
  TRISA = 0b11001111;
  //setup timer0 for frequency counter
  T0CS = 1;  //Transition on T0CKI pin
  T0SE = 1;  //Increment on high-to-low transition on T0CKI pin
  PSA = 0;  //Prescaler is assigned to the Timer0 module
  PS2 = 1;  //PS2:PS0 -> Prescaler Rate = divide by 256
  PS1 = 1;
  PS0 = 1;
  //initialize 3310 lcd
#if USE_NOKIA3310_LCD
  lcd_init();
  lcd_clear();
#elif defined(USE_HD44780_LCD)
  lcd_init(true);
#endif // defined(USE_NOKIA3310_LCD)
  //others
  lc_tris();
  NOT_RBPU = 1;  // enable portB internal pullup
}

uint16
measure_freq(void) {  //16-bit freq
  uint16 oldTMR0, prescaler_cntr;
  TMR0IF = 0;    //clear timer0 interrupt flag
  TRISA4 = 0;    //Enable RA4 output to T0CKI
  delay10ms(2);      //stablize oscillator
  TMR0 = 0x00;      //reset timer0 counter (including prescaler)
  delay10ms(10);
  TRISA4 = 1;    //Disable RA4 output to T0CKI
  oldTMR0 = TMR0;
  prescaler_cntr = 0;
  do {  //self-clocking
    T0SE = 1;
    NOP();
    NOP();
    T0SE = 0;
    NOP();
    NOP();
    prescaler_cntr++;  // count until TMR0 incremented
  } while(oldTMR0 == TMR0 && prescaler_cntr <= 255); //test if timer0 has incremented
  
  
  //}while(oldTMR0==TMR0);  //test if timer0 has incremented
  return ((oldTMR0 << 8) + (256 - prescaler_cntr));
}

// -------------------------------------------------------------------------
void
calibrate(void) {
  uint8 i;
#if USE_NOKIA3310_LCD
  lcd_clear();
  lcd_gotoxy(1, 1);
  lcd_puts("Calibrating.");
  lcd_gotoxy(1, 3);
  lcd_puts("please wait..");
#elif defined(USE_HD44780_LCD)
  lcd_clear();
  lcd_set_cursor(0, 0);
  lcd_print("Calibrating. please wait...");
#endif // defined(USE_NOKIA3310_LCD)
  remove_ccal();
  F1 = (double)measure_freq();  //dummy reading to stabilize oscillator
  delay10ms(50);
  F1 = (double)measure_freq();
  add_ccal();
  F2 = (double)measure_freq();  //dummy reading to stabilize oscillator
  delay10ms(50);
  F2 = (double)measure_freq();
  remove_ccal();
#if USE_NOKIA3310_LCD
  lcd_gotoxy(0, 4);
#elif defined(USE_HD44780_LCD)
  lcd_set_cursor(0, 1);
#endif // defined(USE_NOKIA3310_LCD)
  for(i = 0; i < 84; i++) {
    //show progress bar
#if USE_NOKIA3310_LCD
    lcd_send(0xfc, LCD_TDATA);
#elif defined(USE_HD44780_LCD)
    if(i % 5 == 0)
      lcd_write('=');
#endif // defined(USE_NOKIA3310_LCD)
    delay10ms(2);
  }
}

// -------------------------------------------------------------------------
void
measure_capacitance() {
  uint16 var;
  double Cin;
#if USE_NOKIA3310_LCD
  lcd_gotoxy(7, 5);
  lcd_puts(" capacitance");
#elif defined(USE_HD44780_LCD)
  lcd_set_cursor(0, 1);  lcd_print(" freq");
//  lcd_print(" capacitance");

#endif // defined(USE_NOKIA3310_LCD)
  var = measure_freq();
  lcd_print_number(var, 10, 5);
  F3 = (double)var;
  if(F3 > F1) F3 = F1; //max freq is F1;
  Cin = F2 * F2 * (F1 * F1 - F3 * F3) * Ccal / (F3 * F3 * (F1 * F1 - F2 * F2));
  if(Cin > 999) {
    if(Cin > (999000)) {
      if(Cin > (999000000)) {
        Cin = Cin / (1000000000);
        display_unit(4);  //"mF"
      } else {
        Cin = Cin / (1000000);
        display_unit(5);  //"uF"
      }
    } else {
      Cin = Cin / 1000;
      display_unit(6);  //"nF"
    }
  } else display_unit(7);  //"pF"
  Cin = Cin * 100;  //scale to 2 decimal place
  var = (uint16)Cin;
    lcd_set_cursor(0, 1);  lcd_print(" cap ");
    lcd_print_number((uint16)F3, 10, 5);
//  display_reading(var);
}

// -------------------------------------------------------------------------
void
measure_inductance() {
  uint16 var;
  double Lin, numerator, denominator;
#if USE_NOKIA3310_LCD
  lcd_gotoxy(7, 5);
  lcd_puts(" inductance ");
#elif defined(USE_HD44780_LCD)
  lcd_set_cursor(0, 1);
  lcd_print(" inductance ");
#endif // defined(USE_NOKIA3310_LCD)
  var = measure_freq();
  F3 = (double)var;
  if(F3 > F1) F3 = F1; //max freq is F1;
  numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (gate_period * gate_period);
  denominator = 4 * pi * pi * F1 * F1 * F2 * F2 * F3 * F3 * Ccal;
  Lin = (numerator / denominator) * 1000000000000000; //scale to nH { pF/ 1e012 * nH/  1000000000 * (s/  1000)^2 }
  if(Lin > 999) {
    if(Lin > (999000)) {
      if(Lin > (999000000)) {
        Lin = Lin / (1000000000);
        display_unit(0);  //"H"
      } else {
        Lin = Lin / (1000000);
        display_unit(1);  //"mH"
      }
    } else {
      Lin = Lin / 1000;
      display_unit(2);  //"uH"
    }
  } else display_unit(3);  //"nH"
  Lin = Lin * 100;  //scale to 2 decimal place
  var = (uint16)Lin;
  display_reading(var);
}

// -------------------------------------------------------------------------
void
delay10ms(uint16 period_10ms) {
  do {
    __delay_ms(10);
  } while(--period_10ms);
  
}


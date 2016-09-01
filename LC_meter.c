#include "main.h"


//Target PIC16F877 configuration word
#pragma DATA _CONFIG, _PWRTE_ON & _BODEN_ON & _WDT_OFF & _LVP_OFF & _CPD_OFF & _DEBUG_OFF & _HS_OSC & _CP_OFF










  //Handle timer0 interrupt
  if(intcon & (1 << T0IF)) {
    clear_bit(intcon, T0IF);   //clear timer 0 interrupt bit
  }
  //Handle timer1 interrupt
  if(pir1 & (1 << TMR1IF)) {
    clear_bit(pir1, TMR1IF);   //clear timer 1 interrupt bit
  }
  //Handle timer2 interrupt
  if(pir1 & (1 << TMR2IF)) {
    clear_bit(pir1, TMR2IF);   //clear timer 2 interrupt bit
  }
}



void main(void) {
  unsigned char rcon;
  
  //Configure port A
  trisa = 0x00;
  //Configure port B
  trisb = 0x00;
  //Configure port C
  trisc = 0x00;


  //Configure A/D pins
  adcon1 = 0x06;

  //Initialize port A
  porta = 0x00;
  //Initialize port B
  portb = 0x00;
  //Initialize port C
  portc = 0x00;

  //Set Timer0 mode
  clear_bit(option_reg, T0CS);   //configure timer0 as a timer
  //Set prescaler assignment
  clear_bit(option_reg, PSA);   //prescaler is assigned to timer0
  //Set prescaler rate
  clear_bit(option_reg, PS2);   //prescaler rate 1:2
  clear_bit(option_reg, PS1);
  clear_bit(option_reg, PS0);
  //Set timer0 source edge selection
  set_bit(option_reg, T0SE);   //increment on high-to-low transition on RA4/T0CKI pin
  //Set timer 1 prescaler rate
  clear_bit(t1con, T1CKPS1);   //prescaler rate 1:1
  clear_bit(t1con, T1CKPS0);
  //Set timer 1 mode
  clear_bit(t1con, TMR1ON);   //disable timer 1
  //Set timer 2 prescaler rate
  clear_bit(t2con, T2CKPS1);   //prescaler rate 1:1
  clear_bit(t2con, T2CKPS0);
  //Set timer 2 postscaler rate
  clear_bit(t2con, TOUTPS3);   //postscaler rate 1:1
  clear_bit(t2con, TOUTPS2);
  clear_bit(t2con, TOUTPS1);
  clear_bit(t2con, TOUTPS0);
  //Set timer 2 mode (enable or disable)
  clear_bit(t2con, TMR2ON);   //enable timer 2

//  rcon = (1 << IPEN);

  //Enable interrupts (Timer0)
  intcon = (1 << GIE) | (1 << TMR0IE);
  // Enable priority interrupts



  //Endless loop
  while(1) ;
}

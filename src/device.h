#ifndef DEVICE_H
#define DEVICE_H

#ifdef __SDCC
# ifndef SDCC
#  define SDCC
# endif
#endif

#if defined(__XC8)
#include <xc.h>

//#define MCHP_XC8 1
//#undef HI_TECH_C

#endif

#ifdef HI_TECH_C
# include <htc.h>
# ifdef __PIC10F206_H
#  define __10f206 1
# endif
# ifdef __PIC12F1840_H
#  define __12f1840 1
# endif
# ifdef __PIC16F628A_H
#  define __16f628a 1
# endif
# ifdef __PIC16F876A_H
#  define __16f876a 1
# endif
# ifdef __PIC18F252_H
#  define __18f252 1
# endif
# ifdef __PIC18F2550_H
#  define __18f2550 1
# endif
# ifdef __PIC18F25K22_H
#  define __18f25k22 1
# endif
# ifdef __PIC18F25K50_H
#  define __18f25k50 1
# endif


#else
# ifdef __10f206
#  include <pic10f206.h>
# endif
# ifdef __12f1840
#  include <pic12f1840.h>
# endif
# ifdef __16f628a
#  include <pic16f628a.h>
# endif
# ifdef __16f876a
#  include <pic16f876a.h>
# endif
# ifdef __18f252
#  include <pic18f252.h>
# endif
# ifdef __18f2550
#  include <pic18f2550.h>
# endif
# ifdef __18f25k22
#  include <pic18f25k22.h>
# endif
# ifdef __18f25k50
#  include <pic18f25k50.h>
# endif
#endif

#ifdef SDCC
# define CONFIG_WORD (_FOSC_HS & _PWRTE_ON & _WDT_OFF & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF)
# define double float
#endif

#if defined(__10f206) || defined(__12f1840)
#if defined(__10f206)
#define NO_PORTA 1
#endif
#define NO_PORTB 1
#define NO_PORTC 1
#define NO_SSP 1
#elif defined(__16f628a)
#define NO_PORTC 1
#define NO_SSP 1
#endif

#ifndef NO_PORTA
#define NO_PORTA 0
#endif
#ifndef NO_PORTB
#define NO_PORTB 0
#endif
#ifndef NO_PORTC
#define NO_PORTC 0
#endif

#if defined(HI_TECH_C) || defined(__XC__)
# if 0 //ndef nRBPU
volatile uint8_t           OPTION_REG          @ 0x081;

volatile bit nRBPU               @((unsigned)&OPTION_REG * 8) + 7;
//#define nRBPU OPTION_REGbits.nRBPU
# endif

#if !NO_PORTB
#define NOT_RBPU nRBPU
#endif

#endif

#if defined(__18f252) || defined(__18f2550) || defined(__18f25k22) || defined(__18f25k50)
#define PIC18 1
#endif

#if defined(__12f1840)
#define PIC12 1
#endif

#if !defined(__16f628a) && !defined(__18f25k22) && !defined(__18f25k50) && !defined(__12f1840)
#define HAVE_ADC 1

#define PCFG ADCON1bits.PCFG
#endif

#if defined(__16f628a) || defined(__16f876a) || defined(__18f2550) || defined(__18f25k50)
#define HAVE_COMPARATOR 1
#endif

#if !defined(__10f206)
#define HAVE_TIMER_0 1
#endif

#if HAVE_COMPARATOR && defined(__18f25k50)
#define CMCON CM1CON0
#define CMCONbits CM1CON0bits
#endif

#if defined(__18f25k22) // || defined(__18f25k50)
#define SPEN SPEN1

#define TXEN TXEN1
#define CREN CREN1
#define RX9D RX9D1
#define BRGH BRGH1
#define RX9 RX91
#define TX9 TX91
#define OERR OERR1
#define SYNC SYNC1

//#define SSPEN SSPEN1
#endif

#if defined(PIC18) || defined(PIC12)
#define TMR1CS  T1CONbits.TMR1CS
#endif

#ifdef PIC18
#define INTF INT0F
#define INTE INT0E
#define T0PS  T0CONbits.T0PS
//#define T1CS 
#define INTEDG INTEDG0
#ifndef CMCON
#define CMCON CMCONbits.CM
#endif
#define SSPCONbits SSPCON1bits

#define RA0 LATA0
#define RA1 LATA1
#define RA2 LATA2
#define RA3 LATA3
#define RA4 LATA4
#define RA5 LATA5
#define RB0 LATB0
#define RB1 LATB1
#define RB2 LATB2
#define RB3 LATB3
#define RB4 LATB4
#define RB5 LATB5
#define RB6 LATB6
#define RB7 LATB7
#define RC0 LATC0
#define RC1 LATC1
#define RC2 LATC2
#define RC3 LATC3
#define RC4 LATC4
#define RC5 LATC5
#define RC6 LATC6
#define RC7 LATC7

#else
#define T0PS  OPTION_REGbits.PS
#endif

#endif /* DEVICE_H */
 

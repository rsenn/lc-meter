#ifndef DEVICE_H
#define DEVICE_H

#if defined(__SDCC) || defined(SDCC)
#ifndef SDCC
#define SDCC 1
#endif
#ifdef __16f876a
#include <pic14/pic16f876a.h>
#endif

#elif defined(__XC8)
#include <xc.h>

//#define MCHP_XC8 1
//#undef HI_TECH_C

#elif defined(HI_TECH_C)
#include <htc.h>
#ifdef __PIC10F206_H
#define __10f206 1
#endif
#ifdef __PIC12F1840_H
#define __12f1840 1
#endif
#ifdef __PIC16F628A_H
#define __16f628a 1
#endif
#ifdef __PIC16F876A_H
#define __16f876a 1
#endif
#ifdef __PIC18F252_H
#define __18f252 1
#endif
#ifdef __PIC18F2550_H
#define __18f2550 1
#endif
#ifdef __PIC18F2520_H
#define __18f2520 1
#endif
#ifdef __PIC18F25K22_H
#define __18f25k22 1
#endif
#ifdef __PIC18F25K50_H
#define __18f25k50 1
#endif

#else
#ifdef __10f206
#include <pic10f206.h>
#endif
#ifdef __12f1840
#include <pic12f1840.h>
#endif
#ifdef __16f628a
#include <pic16f628a.h>
#endif
#ifdef __16f876a
#include <pic16f876a.h>
#endif
#ifdef __18f252
#include <pic18f252.h>
#endif
#ifdef __18f2550
#include <pic18f2550.h>
#endif
#ifdef __18f25k22
#include <pic18f25k22.h>
#endif
#ifdef __18f25k50
#include <pic18f25k50.h>
#endif
#endif

#if defined(__SDCC) || defined(SDCC)
#define CONFIG_WORD (_FOSC_HS & _PWRTE_ON & _WDT_OFF & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF)
#define double float
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
#define TMR0IE T0IE
#define TMR0IF T0IF
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
#if 0 // ndef nRBPU
volatile uint8_t           OPTION_REG          @ 0x081;

volatile bit nRBPU               @((unsigned)&OPTION_REG * 8) + 7;
//#define nRBPU OPTION_REGbits.nRBPU
#endif

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
#define HAVE_TIMER0 1
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
#define TMR1CS T1CONbits.TMR1CS
#endif

/*#ifdef __18f2550
#define T0PS0 T1CKPS0
#define T0PS1 T1CKPS1
#define T0PS2 T1CKPS2
#endif
*/
#ifdef PIC18
#define INTF INT0F
#define INTE INT0E
#define T0PS T0CONbits.T0PS
#define PS0 T0PS0
#define PS1 T0PS1
#define PS2 T0PS2
//#define T1CS
#define INTEDG INTEDG0
#ifndef CMCON
#define CMCON CMCONbits.CM
#endif
#define SSPCONbits SSPCON1bits
//
//#define RA0 LATA0
//#define RA1 LATA1
//#define RA2 LATA2
//#define RA3 LATA3
//#define RA4 LATA4
//#define RA5 LATA5
//#define RB0 LATB0
//#define RB1 LATB1
//#define RB2 LATB2
//#define RB3 LATB3
//#define RB4 LATB4
//#define RB5 LATB5
//#define RB6 LATB6
//#define RB7 LATB7
//#define RC0 LATC0
//#define RC1 LATC1
//#define RC2 LATC2
//#define RC3 LATC3
//#define RC4 LATC4
//#define RC5 LATC5
//#define RC6 LATC6
//#define RC7 LATC7

#else
#define T0PS OPTION_REGbits.PS
#endif

#if defined(__SDCC) || defined(SDCC)
#ifndef acos
#define acos acosf
#endif /* defined(acos) */
#ifndef asin
#define asin asinf
#endif /* defined(asin) */
#ifndef atan
#define atan atanf
#endif /* defined(atan) */
#ifndef atan2
#define atan2 atan2f
#endif /* defined(atan2) */
#ifndef ceil
#define ceil ceilf
#endif /* defined(ceil) */
#ifndef cos
#define cos cosf
#endif /* defined(cos) */
#ifndef cosh
#define cosh coshf
#endif /* defined(cosh) */
#ifndef exp
#define exp expf
#endif /* defined(exp) */
#ifndef fabs
#define fabs fabsf
#endif /* defined(fabs) */
#ifndef floor
#define floor floorf
#endif /* defined(floor) */
#ifndef frexp
#define frexp frexpf
#endif /* defined(frexp) */
#ifndef ldexp
#define ldexp ldexpf
#endif /* defined(ldexp) */
#ifndef log
#define log logf
#endif /* defined(log) */
#ifndef log10
#define log10 log10f
#endif /* defined(log10) */
#ifndef modf
#define modf modff
#endif /* defined(modf) */
#ifndef pow
#define pow powf
#endif /* defined(pow) */
#ifndef sin
#define sin sinf
#endif /* defined(sin) */
#ifndef sinh
#define sinh sinhf
#endif /* defined(sinh) */
#ifndef sqrt
#define sqrt sqrtf
#endif /* defined(sqrt) */
#ifndef tan
#define tan tanf
#endif /* defined(tan) */
#ifndef tanh
#define tanh tanhf
#endif /* defined(tanh) */

#include <float.h>

#ifndef DBL_DIG
#define DBL_DIG FLT_DIG
#endif /* defined(DBL_DIG) */
#ifndef DBL_EPSILON
#define DBL_EPSILON FLT_EPSILON
#endif /* defined(DBL_EPSILON) */
#ifndef DBL_MANT_DIG
#define DBL_MANT_DIG FLT_MANT_DIG
#endif /* defined(DBL_MANT_DIG) */
#ifndef DBL_MAX
#define DBL_MAX FLT_MAX
#endif /* defined(DBL_MAX) */
#ifndef DBL_MAX_10_EXP
#define DBL_MAX_10_EXP FLT_MAX_10_EXP
#endif /* defined(DBL_MAX_10_EXP) */
#ifndef DBL_MAX_EXP
#define DBL_MAX_EXP FLT_MAX_EXP
#endif /* defined(DBL_MAX_EXP) */
#ifndef DBL_MIN
#define DBL_MIN FLT_MIN
#endif /* defined(DBL_MIN) */
#ifndef DBL_MIN_10_EXP
#define DBL_MIN_10_EXP FLT_MIN_10_EXP
#endif /* defined(DBL_MIN_10_EXP) */
#ifndef DBL_MIN_EXP
#define DBL_MIN_EXP FLT_MIN_EXP
#endif /* defined(DBL_MIN_EXP) */
#ifndef DBL_RADIX
#define DBL_RADIX FLT_RADIX
#endif /* defined(DBL_RADIX) */
#ifndef DBL_ROUNDS
#define DBL_ROUNDS FLT_ROUNDS
#endif /* defined(DBL_ROUNDS) */
#endif

//#define T1CONbits T1CON_bits

#ifndef __XC
#if(_HTC_VER_MINOR_ > 0 && _HTC_VER_MINOR_ < 80)
#ifndef OPTION_REG
#define OPTION_REG OPTION
#endif
#endif
#endif

#if defined(__18f2550) || defined(__18f25k22) || defined(__18f25k50)
#define PIC18_USB 1
#endif

#endif /* DEVICE_H */

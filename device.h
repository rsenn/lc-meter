#ifndef DEVICE_H
#define DEVICE_H


#ifdef __SDCC
# ifndef SDCC
#  define SDCC 1
# endif
#endif

#if defined(__XC8)
   #include <xc.h>

   #define MCHP_XC8 1
   #undef HI_TECH_C

#else

#ifdef HI_TECH_C
# include <htc.h>
# ifdef __PIC16F628A_H
#  define __16f628a 1
# endif
# ifdef __PIC16F876A_H
#  define __16f876a 1
# endif
#else
# ifdef __16f628a
#  include <pic16f628a.h>
# endif
# ifdef __16f876a
#  include <pic16f876a.h>
# endif
#endif

#ifdef SDCC
# define CONFIG_WORD (_FOSC_HS & _PWRTE_ON & _WDT_OFF & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF)
  # define double float
#endif

#ifdef HI_TECH_C
  # define CONFIG_WORD (FOSC_HS & CP_ON &  CP_OFF & LVP_OFF & BOREN_OFF & PWRTE_OFF & WDTE_OFF)
  #endif

#endif

#if defined(HI_TECH_C) || defined(__XC8)
# include <pic.h>
# ifndef nRBPU
volatile unsigned char           OPTION_REG          @ 0x081;

volatile bit nRBPU               @((unsigned)&OPTION_REG * 8) + 7;
//#define nRBPU OPTION_REGbits.nRBPU
# endif
#define NOT_RBPU nRBPU
#endif


#endif /* DEVICE_H */

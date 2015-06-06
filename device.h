#ifndef DEVICE_H
#define DEVICE_H

#ifdef HI_TECH_C
# include <htc.h>
# ifdef __PIC16F628A_H
#  define __16f628a 1
# endif
# ifdef __PIC16F876A_H
#  define __16f876a 1
# endif
# define __code
#else
# ifdef __16f628a
#  include <pic16f628a.h>
# endif
# ifdef __16f876a
#  include <pic16f876a.h>
# endif
# define NOP() __asm__("nop")
#endif

#ifdef SDCC
# define CONFIG_WORD (_FOSC_HS & _PWRTE_ON & _WDT_OFF & _BODEN_OFF & _LVP_OFF & _CPD_OFF & _CP_OFF)
#endif

#ifdef HI_TECH_C
# define CONFIG_WORD (FOSC_HS & CP_OFF & LVP_OFF & BOREN_OFF & PWRTE_ON & WDTE_OFF)
#endif

#endif /* DEVICE_H */

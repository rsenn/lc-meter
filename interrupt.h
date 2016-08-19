#ifndef INTERRUPT_H
#define INTERRUPT_H 1

#include "device.h"

#if defined(HI_TECH_C) || defined(__XC8__)
# define INTERRUPT(fn) interrupt fn()
#else
# ifdef __SDCC
#  define INTERRUPT(fn) fn() __interrupt 0
# else
#  define INTERRUPT(fn) fn(); interrupt() { fn(); }; fn()
# endif
#endif // !defined(HI_TECH_C)

#ifdef __SDCC
# define INTERRUPT_DISABLE() do { GIE = 0; } while(0);
# define INTERRUPT_ENABLE() do { GIE = 1; } while(0);
#else
# ifdef __IAR_SYSTEMS_ICC__
#  define INTERRUPT_DISABLE() { __disable_interrupt();  }
#  define INTERRUPT_ENABLE()  { __enable_interrupt();  }
# else

#  ifdef HI_TECH_C
#   define INTERRUPT_DISABLE() #asm \
                                bcf GIE \
                                #endasm
#   define INTERRUPT_ENABLE() #asm \
                               bsf GIE \
                               #endasm
#  else
#   define INTERRUPT_DISABLE() (INTCON &= 0x7f);
#   define INTERRUPT_ENABLE() (INTCON |= 0x80);
#  endif
# endif
#endif


#endif // !defined(INTERRUPT_H)

#ifndef PICLIB_INTERRUPT_H
#define PICLIB_INTERRUPT_H 1

#if defined(HI_TECH_C) || defined(__XC)
# define INTERRUPT_HANDLER() interrupt isr()
#else
# if defined(__SDCC) || defined(SDCC)
#  define INTERRUPT_HANDLER() void isr() __interrupt 0
# else
#  define INTERRUPT_HANDLER() void isr(); interrupt() { void isr(); }; isr()
# endif
#endif // !defined(HI_TECH_C)

# if defined(__SDCC) || defined(SDCC)
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


#endif // !defined(PICLIB_INTERRUPT_H)
 


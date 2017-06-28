#ifndef PICLIB_SOFTPWM_H
#define PICLIB_SOFTPWM_H

#include "timer.h"

#define SOFTPWM_TIMER 1
#define SOFTPWM_RANGE 100

#if NO_PORTC
# if NO_PORTB
#  if NO_PORTA
#   define SOFTPWM_PORT GP
#   define SOFTPWM_TRIS TRISGP
#  else
#   define SOFTPWM_PORT PORTA
#   define SOFTPWM_TRIS TRISA
#  endif
# else
#  define SOFTPWM_PORT PORTB
#  define SOFTPWM_TRIS TRISB
# endif
#else
# define SOFTPWM_PORT PORTC
# define SOFTPWM_TRIS TRISC
#endif

#define SOFTPWM_PIN_COUNT 3
#define SOFTPWM_PIN_FIRST 0

extern volatile uint8_t softpwm_counter;
extern volatile uint8_t softpwm_values[SOFTPWM_PIN_COUNT];

#define SOFTPWM_TIMER_VALUE TMR1
#define SOFTPWM_INTERRUPT_FLAG TMR1IF
#define SOFTPWM_INTERRUPT_ENABLE TMR1IE

#define SOFTPWM_ISR() \
{ \
  if(SOFTPWM_INTERRUPT_FLAG) { \
    uint8_t softpwm_bit = 1 << SOFTPWM_PIN_FIRST; \
    softpwm_counter++; \
    if(softpwm_counter > SOFTPWM_RANGE) softpwm_counter = 0; \
    for(uint8_t i = 0; i < SOFTPWM_PIN_COUNT; i++) { \
      if(softpwm_counter > 0 && softpwm_counter <= softpwm_values[i]) \
         SOFTPWM_PORT |= softpwm_bit; \
      else \
        SOFTPWM_PORT &= ~softpwm_bit; \
      softpwm_bit <<= 1; \
    } \
    SOFTPWM_TIMER_VALUE = -128; \
    SOFTPWM_INTERRUPT_FLAG = 0; \
  } \
}

/**
 * Initialize SoftPWM module
 */
void softpwm_init(void);

/**
 * ISR for SoftPWM. Called from each interrupt
 *
 * @return 1 if there was SoftPWM receive interrupt, 0 otherwise
 */
void softpwm_isr(void);

/**
 * Enable SoftPWM (used for power managed mode)
 */
void softpwm_enable(void);

/**
 * Disable SoftPWM (used for power managed mode)
 */
void softpwm_disable(void);

/**
 * Set SoftPWM duty-cycle
 */
void softpwm_set(uint8_t ch, uint8_t duty);

#endif /* PICLIB_SOFTPWM_H */
 


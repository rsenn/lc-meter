#include <assert.h>
#include "typedef.h"
#include "timer.h"
#include "softpwm.h"

#if USE_SOFTPWM

#define SOFTPWM_EVAL(x) x
#define SOFTPWM_TIMER_SETUP timer1_init

uint8_t volatile softpwm_counter;
uint8_t volatile softpwm_values[SOFTPWM_PIN_COUNT];

/**
 * ISR for SOFTPWM receive
 *
 * @return received character or 0 if it's not SOFTPWM interrupt
 */
void
softpwm_isr(void)
SOFTPWM_ISR()

void
softpwm_enable(void) {
  //SOFTPWM_INTERRUPT_FLAG = 0;
  SOFTPWM_INTERRUPT_ENABLE = 1;
}

void
softpwm_disable(void) {
  SOFTPWM_INTERRUPT_ENABLE = 0;
}

void
softpwm_init(void) {
  uint8_t i;

  for(i = 0; i < SOFTPWM_PIN_COUNT; i++) {
      softpwm_values[i] = 0;

      SOFTPWM_TRIS &= ~(1 << (i + SOFTPWM_PIN_FIRST));
    }

  softpwm_counter = 0;

  SOFTPWM_TIMER_SETUP(PRESCALE_1_1);

  softpwm_enable();
}

void
softpwm_set(uint8_t ch, uint8_t duty) {
  //assert(ch < SOFTPWM_PIN_COUNT);
  softpwm_values[ch] = duty;
}

#endif // USE_SOFTPWM


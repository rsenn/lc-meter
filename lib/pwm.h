#ifndef PICLIB_PWM_H
#define PICLIB_PWM_H

#include "typedef.h"

void pwm_init(char ps);

#define PWM_start(ccp) { \
  PWM_setduty(ccp, 0); \
  /*CCP##ccp##CONbits.*/CCP##ccp##M3 = 1; \
  /*CCP##ccp##CONbits.*/CCP##ccp##M2 = 1; }

#define PWM_setduty(ccp, duty) { \
    /*CCP##ccp##CONbits.*/CCP##ccp##X = ((duty) >> 1) & 1; \
    /*CCP##ccp##CONbits.*/CCP##ccp##Y = (duty) & 1; \
    CCPR##ccp##L = (duty) >> 2; }

#define PWM_SETDUTY(ccp, duty) PWM_CCP##ccp##_SETDUTY(duty)

#endif /* PICLIB_PWM_H */
 


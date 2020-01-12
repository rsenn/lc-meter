#ifndef CONFIG_16F876A_H
#define CONFIG_16F876A_H 1

#ifdef __XC

#pragma config FOSC = HS, LVP = OFF, CPD = OFF, BOREN = OFF, WDTE = OFF
#ifdef DEBUG
#pragma config DEBUG = ON
#endif

#elif defined(HI_TECH_C)

#ifdef DEBUG
__CONFIG(FOSC_HS& WDTE_OFF& PWRTE_ON& LVP_OFF& CPD_OFF& DEBUG_ON&CP_OFF);
#else
__CONFIG(FOSC_HS& WDTE_OFF& PWRTE_ON& LVP_OFF& CPD_OFF& DEBUG_OFF& CP_OFF);
#endif

#endif

#endif // defined CONFIG_16F876A_H

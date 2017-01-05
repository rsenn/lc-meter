#ifndef CONFIG_16F876A_H
#define CONFIG_16F876A_H 1

#ifdef __XC

# pragma config FOSC=HS, WDTE=OFF, PWRTE=ON, LVP=OFF, CPD=OFF, WRT=OFF, CP=OFF

#elif defined(HI_TECH_C)

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & LVP_OFF & CPD_OFF & WRT_OFF & DEBUG_OFF & CP_OFF);

#endif

#endif // defined CONFIG_16F876A_H


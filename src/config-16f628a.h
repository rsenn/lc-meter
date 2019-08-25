#ifndef CONFIG_16F628A_H
#define CONFIG_16F628A_H 1

#ifdef __XC

#pragma config WDTE = OFF, PWRTE = ON, BOREN = ON, F, LVP = OFF, CPD = OFF, FOSC = HS

#elif defined(HI_TECH_C)

__CONFIG(FOSC_HS& LVP_OFF& BOREN_ON& PWRTE_ON& WDTE_OFF);

#endif

#endif // defined CONFIG_16F628A_H

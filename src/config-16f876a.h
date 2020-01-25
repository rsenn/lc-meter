#ifndef CONFIG_16F876A_H
#define CONFIG_16F876A_H 1

#if defined(__XC) || defined(MCHP_XC8) || defined(SDCC)

#ifdef _DEBUG
#pragma config FOSC = HS, LVP = OFF, CPD = OFF, BOREN = OFF, WDTE = OFF, WRT = OFF, DEBUG=ON
#else
#pragma config FOSC = HS, LVP = OFF, CPD = OFF, BOREN = OFF, WDTE = OFF,  WRT = OFF, DEBUG = OFF
#endif

#elif defined(HI_TECH_C)

#ifdef _DEBUG
__CONFIG(FOSC_HS& WDTE_OFF& PWRTE_ON& LVP_OFF& CPD_OFF& DEBUG_ON&CP_OFF);
#else
__CONFIG(FOSC_HS& WDTE_OFF& PWRTE_ON& LVP_OFF& CPD_OFF& DEBUG_OFF& CP_OFF);
#endif

#endif

#endif // defined CONFIG_16F876A_H

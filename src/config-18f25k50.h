#ifndef CONFIG_18F25K50_H
#define CONFIG_18F25K50_H 1

#ifdef __XC

#pragma config FOSC = INTOSCIO
#pragma config nPWRTEN = ON, BOREN = ON, BORV = 285
#pragma config WDTEN = OFF
#pragma config STVREN = OFF, LVP = ON
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF

#elif defined(HI_TECH_C)

__CONFIG(1, FOSC_HSHP);
__CONFIG(2, BOREN_ON& PWRTEN_ON& WDTEN_OFF);
__CONFIG(3, CCP2MX_PORTC1);
__CONFIG(4, LVP_OFF);
__CONFIG(5, CPD_OFF);

#endif

#endif // defined CONFIG_18F25K50_H

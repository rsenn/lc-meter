#ifndef CONFIG_18F25K22_H
#define CONFIG_18F25K22_H 1

#ifdef MCHP_XC8

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

#elif defined(__XC)

__CONFIG(1, FOSC_XT & FCMEN_ON);
__CONFIG(2, WDTEN_OFF);
__CONFIG(3, PBADEN_OFF);
__CONFIG(4, STVREN_ON); 
//__CONFIG(5, CPB_ON & CPD_OFF);
__CONFIG(6, WRTC_ON & WRTB_ON & WRTD_OFF);
__CONFIG(7, EBTR0_OFF & EBTR1_OFF & EBTR2_OFF & EBTR3_OFF);

#elif defined(HI_TECH_C)
#include <pic18fregs.h>

__CONFIG(__CONFIG1L, 0xFFFF);
__CONFIG(__CONFIG1H, _FOSC_HS_1H & _FCMEN_ON_1H & _IESO_OFF_1H);
__CONFIG(__CONFIG4L, _XINST_ON_4L & _STVREN_ON_4L & _DEBUG_ON_4L & _LVP_OFF_4L);

#endif

#endif // defined CONFIG_18F25K22_H

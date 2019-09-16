#ifndef CONFIG_18F2550_H
#define CONFIG_18F2550_H 1

#if defined(__XC)

#pragma config FOSC = HSPLL_HS
#pragma config PWRT = ON, BOR = ON
#pragma config WDT = OFF
#pragma config CCP2MX = ON, STVREN = OFF, LVP = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF
#pragma config XINST = ON
//
#elif defined(HI_TECH_C)
//
//
//// PIC18F2550 Configuration Bit Settings
//
//// 'C' source line config statements
//
//

#ifndef OSC_HSPLL
#define OSC_HSPLL 0xFEFF
#endif
#else
#include <pic18fregs.h>

__CONFIG(__CONFIG1H, _FOSC_HS_1H & _FCMEN_ON_1H & _IESO_OFF_1H);
__CONFIG(__CONFIG4L, _XINST_ON_4L & _STVREN_ON_4L & _DEBUG_ON_4L & _LVP_OFF_4L);
#endif

#endif // defined CONFIG_18F2550_H

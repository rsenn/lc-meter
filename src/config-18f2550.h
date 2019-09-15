#ifndef CONFIG_18F2550_H
#define CONFIG_18F2550_H 1

#if defined(__XC)

//#pragma config FOSC = HSPLL_HS
//#pragma config PWRT = ON, BOR = ON, BORV = 27
//#pragma config WDT = OFF
//#pragma config CCP2MX = ON, STVREN = OFF, LVP = OFF
//#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
//#pragma config CPB = OFF, CPD = OFF
//#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
//#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
//#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
//#pragma config EBTRB = OFF
//
#elif defined(HI_TECH_C)
//
//
//// PIC18F2550 Configuration Bit Settings
//
//// 'C' source line config statements
//
//#include <htc.h>
//
//

#ifndef OSC_HSPLL
#define OSC_HSPLL 0xFEFF
#endif

#endif

#endif // defined CONFIG_18F2550_H

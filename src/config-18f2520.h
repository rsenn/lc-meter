#ifndef CONFIG_18F2520_H
#define CONFIG_18F2520_H 1

#ifdef __XC

#pragma config FOSC = HSPLL_HS
#pragma config PWRT = ON, BOR = ON, BORV = 27
#pragma config WDT = OFF
#pragma config CCP2MX = ON, STVREN = OFF, LVP = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF

#elif defined(HI_TECH_C)

// PIC18F2520 Configuration Bit Settings

// 'C' source line config statements

#include <htc.h>

//#pragma config CONFIG1H = 0x2
__CONFIG(1, OSC_HS & FCMEN_OFF & IESO_OFF);
//#pragma config CONFIG2L = 0x1A
__CONFIG(2, PWRT_ON & BOREN_ON & BORV_3);
//#pragma config CONFIG2H = 0x1F
__CONFIG(3, WDT_ON & WDTPS_32768);
//#pragma config CONFIG3H = 0x81
__CONFIG(4, CCP2MX_PORTC & PBADEN_OFF & LPT1OSC_OFF & MCLRE_ON);
//#pragma config CONFIG4L = 0xC1
__CONFIG(5, STVREN_ON & LVP_OFF & XINST_ON);
//#pragma config CONFIG5L = 0xF
__CONFIG(6, CP0_OFF & CP1_OFF & CP2_OFF & CP3_OFF);
//#pragma config CONFIG5H = 0xC0
__CONFIG(7, CPB_OFF & CPD_OFF);
//#pragma config CONFIG6L = 0xF
__CONFIG(8, WRT0_OFF & WRT1_OFF & WRT2_OFF & WRT3_OFF);
//#pragma config CONFIG6H = 0xE0
__CONFIG(9, WRTC_OFF & WRTB_OFF & WRTD_OFF);
//#pragma config CONFIG7L = 0xF
__CONFIG(10, EBTR0_OFF & EBTR1_OFF & EBTR2_OFF & EBTR3_OFF);
//#pragma config CONFIG7H = 0x40
__CONFIG(11, EBTRB_OFF);



#endif

#endif // defined CONFIG_18F2520_H

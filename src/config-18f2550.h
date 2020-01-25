#ifndef CONFIG_18F2550_H
#define CONFIG_18F2550_H 1

#if defined(__XC) || defined(MCHP_XC8) || defined(SDCC)

#pragma config FOSC = HS
#pragma config PWRT = ON, BOR = ON, BORV = 3
#pragma config WDT = OFF
#pragma config CCP2MX = ON, STVREN = OFF, LVP = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF
#pragma config XINST = OFF

#ifdef _DEBUG
#pragma config DEBUG = ON
#endif
//
#elif defined(__XC)

__CONFIG(1, FOSC_HS & FCMEN_ON);
__CONFIG(2, PWRT_ON & BOR_ON & BORV_3 & VREGEN_ON &WDT_OFF);
__CONFIG(3, PBADEN_OFF & MCLRE_ON & CCP2MX_ON);
__CONFIG(4, STVREN_ON & LVP_OFF &   XINST_OFF & DEBUG_ON);
//__CONFIG(5, CPB_ON & CPD_OFF);
__CONFIG(6, WRTC_OFF & WRTB_OFF & WRTD_OFF);
__CONFIG(7, EBTR0_OFF & EBTR1_OFF & EBTR2_OFF & EBTR3_OFF);

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

#elif defined(HI_TECH_C)
//#include <pic18fregs.h>

__CONFIG(1, FOSC_HS & FCMEN_ON & IESO_OFF);
__CONFIG(4, XINST_OFF  & STVREN_ON & DEBUG_ON & LVP_OFF);
#elif defined(SDCC)
#define OERR RCSTAbits.OERR


//__CONFIG(__CONFIG1L, 0xFFFF);
__CONFIG(__CONFIG1H, FOSC_HS & FCMEN_ON & IESO_OFF);
__CONFIG(__CONFIG4L, XINST_OFF  & STVREN_ON & DEBUG_ON & LVP_OFF);
#endif

#endif // defined CONFIG_18F2550_H

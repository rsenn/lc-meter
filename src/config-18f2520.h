#ifndef CONFIG_18F2520_H
#define CONFIG_18F2520_H 1

#if defined(__XC) || defined(MCHP_XC8) || defined(SDCC)

#pragma config OSC = HSPLL
#pragma config PWRT = ON, BOREN = ON, BORV = 3
#pragma config WDT = OFF
#pragma config CCP2MX = PORTC, STVREN = OFF, LVP = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF, CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF

#ifdef _DEBUG
#pragma config DEBUG = ON
#endif

#elif defined(__XC)

__CONFIG(1, OSC_HS& FCMEN_ON);
__CONFIG(2, PWRT_ON& BOREN_ON& BORV_3& WDT_OFF);
__CONFIG(3, PBADEN_OFF& MCLRE_ON);
__CONFIG(4, STVREN_ON& LVP_OFF& XINST_OFF& DEBUG_ON);
//__CONFIG(5, CPB_ON & CPD_OFF);
__CONFIG(6, WRTC_ON& WRTB_ON& WRTD_OFF);
__CONFIG(7, EBTR0_OFF& EBTR1_OFF& EBTR2_OFF& EBTR3_OFF);

//
#elif defined(HI_TECH_C)

// PIC18F2520 Configuration Bit Settings

// 'C' source line config statements

#endif

#endif // defined CONFIG_18F2520_H

#ifndef CONFIG_18F252_H
#define CONFIG_18F252_H 1

#ifdef __XC

#pragma config OSC = HSPLL, OSCS = OFF
#pragma config PWRT = ON, BOR = ON, BORV = 27
#pragma config WDT = OFF
#pragma config CCP2MUX = ON
#pragma config STVR = OFF
#pragma config LVP = OFF
#pragma config CPD = OFF
/*#pragma config CPB = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF
*/

#elif defined(HI_TECH_C)

__CONFIG(1, OSC_HSPLL& OSCS_OFF);
__CONFIG(2, BOR_ON& BORV_27& PWRT_ON& WDT_OFF);
__CONFIG(3, CCP2MUX_ON);
__CONFIG(4, LVP_OFF);
__CONFIG(5, CPD_OFF);

#endif

#endif // defined CONFIG_18F252_H

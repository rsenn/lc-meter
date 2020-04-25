#ifndef CONFIG_12F1840_H
#define CONFIG_12F1840_H 1

#if defined(__XC) || defined(MCHP_XC8) || defined(SDCC)

// Word CONFIG1 @ 0x8007

#pragma config FOSC = INTOSC  // Oscillator Selection [ ECH | ECL | ECM | EXTRC | HS | INTOSC | LP | OF | ON | XT ]
#pragma config WDTE = OFF     // Watchdog Timer Enable [ NSLEEP | OFF | ON | SWDTEN ]
#pragma config PWRTE = ON     // Power-up Timer Enable [ OFF | ON   ]
#pragma config MCLRE = OFF    // MCLR Pin Function Select [ OFF | ON   ]
#pragma config CP = OFF       // Flash Program Memory Code Protection [ OFF | ON   ]
#pragma config CPD = OFF      // Data Memory Code Protection [ OFF | ON   ]
#pragma config BOREN = ON     // Brown-out Reset Enable [ NSLEEP | OFF | ON | SBODEN ]
#pragma config CLKOUTEN = OFF // Clock Out Enable [ OFF | ON   ]
#pragma config IESO = OFF     // Internal/External Switchover [ OFF | ON   ]

// Word CONFIG2 @ 0x8008

#pragma config FCMEN = OFF  // Fail-Safe Clock Monitor Enable [ OFF | ON   ]
#pragma config WRT = OFF    // Flash Memory Self-Write Protection [ ALL | BOOT | HALF | OFF ]
#pragma config PLLEN = OFF  // PLL Enable [ OFF | ON   ]
#pragma config STVREN = OFF // Stack Overflow/Underflow Reset Enable [ OFF | ON   ]
#pragma config BORV = LO    // Brown-out Reset Voltage Selection [ HI | LO    ]

#ifdef _DEBUG
#pragma config DEBUG = ON
#endif

#elif defined(HI_TECH_C)

__CONFIG(1, FOSC_INTOSC& WDTE_OFF& PWRTE_ON& MCLRE_OFF& BOREN_ON& CP_OFF& CPD_OFF& CLKOUTEN_OFF);
__CONFIG(2, BORV_LO& WRT_OFF);

#endif

#endif // defined CONFIG_12F1840_H

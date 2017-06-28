#ifndef CONFIG_BITS_H
#define CONFIG_BITS_H 1

#if(_HTC_VER_MINOR_ > 0 && _HTC_VER_MINOR_ < 80)
#define FOSC_HS HS
#define WDTE_OFF WDTDIS
#define PWRTE_ON PWRTEN
#define BOREN_ON BOREN

#define CP_ON CP
#define CP_OFF 0x3fff

#define DEBUG_OFF DEBUGDIS
#define DEBUG_ON DEBUGEN
#define WRT_OFF WRTDIS
#define WRT_ON WRTEN
#define CPD_OFF 0x3fff
#define CPD_ON CPD
#define LVP_OFF LVPDIS
#define LVP_ON LVPEN
#endif

#ifdef __10f206
# include "config-10f206.h"
#endif // defined __10f206

#ifdef __12f1840
# include "config-12f1840.h"
#endif // defined __12f1840

#ifdef __16f876a
# include "config-16f876a.h"
#endif // defined __16f876a

#ifdef __18f252
# include "config-18f252.h"
#endif // defined __18f252

#ifdef __18f2550
# include "config-18f2550.h"
#endif // defined __18f2550

#ifdef __18f25k22
# include "config-18f25k22.h"
#endif // defined __18f25k22

#ifdef __18f25k50
# include "config-18f25k50.h"
#endif // defined __18f25k50

#endif // defined CONFIG_BITS_H



#ifndef CONFIG_BITS_H
#define CONFIG_BITS_H 1

#if(_HTC_VER_MINOR_ > 0 && _HTC_VER_MINOR_ < 80)
//#ifndef FOSC_HS
//#define FOSC_HS HS
//#endif

#ifndef WDTE_OFF
#define WDTE_OFF WDTDIS
#endif

#ifndef PWRTE_ON
#define PWRTE_ON PWRTEN
#endif

#ifndef BOREN_ON
#define BOREN_ON BOREN
#endif

#ifndef CP_ON
#define CP_ON CP
#endif

#ifndef CP_OFF
#define CP_OFF 0x3fff
#endif

#ifndef DEBUG_OFF
#define DEBUG_OFF DEBUGDIS
#endif

#ifndef DEBUG_ON
#define DEBUG_ON DEBUGEN
#endif

#ifndef WRT_OFF
#define WRT_OFF WRTDIS
#endif

#ifndef WRT_ON
#define WRT_ON WRTEN
#endif

#ifndef CPD_OFF
#define CPD_OFF 0x3fff
#endif

#ifndef CPD_ON
#define CPD_ON CPD
#endif

#ifndef LVP_OFF
#define LVP_OFF LVPDIS
#endif

#ifndef LVP_ON
#define LVP_ON LVPEN
#endif

#endif

#ifdef __10f206
#include "config-10f206.h"
#endif // defined __10f206

#ifdef __12f1840
#include "config-12f1840.h"
#endif // defined __12f1840

#ifdef __16f876a
#include "config-16f876a.h"
#endif // defined __16f876a

#ifdef __18f252
#include "config-18f252.h"
#endif // defined __18f252

#ifdef __18f2450
#include "config-18f2450.h"
#endif // defined __18f2450

#ifdef __18f2455
#include "config-18f2455.h"
#endif // defined __18f2455

#ifdef __18f2520
#include "config-18f2520.h"
#endif // defined __18f2520

#ifdef __18f2550
#include "config-18f2550.h"
#endif // defined __18f2550

#ifdef __18f25k22
#include "config-18f25k22.h"
#endif // defined __18f25k22

#ifdef __18f25k50
#include "config-18f25k50.h"
#endif // defined __18f25k50

#endif // defined CONFIG_BITS_H

#ifndef TYPES_H
#define TYPES_H 1

#include "device.h"

#if defined(SDCC) || defined(__MIKROC_PRO_FOR_PIC__)
#include <stdbool.h>
#include <stdint.h>
#endif

#if 0 // defined(_BOOSTC)
#include <float.h>
#endif

#if defined(MCC18) || defined(HI_TECH_C) || defined(MCHP_XC8) || defined(__IAR_SYSTEMS_ICC__)
typedef signed char int8;
typedef signed short int16;
typedef signed long int32;

typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned long uint32;
#elif defined(__PCH__)     || defined(SDCC)        || defined(__MIKROC_PRO_FOR_PIC__)
typedef uint8_t uint8;
typedef uint16_t uint16;
typedef uint32_t uint32;
typedef int8_t int8;
typedef int16_t int16;
typedef int32_t int32;
#elif defined(_BOOSTC)
# define int8 signed char
# define int16 signed short
# define int32 signed long

# define uint8 unsigned char
# define uint16 unsigned short
# define uint32 unsigned long
#endif

#ifdef SDCC

#elif defined(MCC18) || defined(HI_TECH_C) || defined(MCHP_XC8)
//typedef enum { FALSE = 0, TRUE = 1 } bool;
typedef char bool;
#elif defined(__PCH__)
typedef int1 bool;
#elif defined(__SDCC)
#define TRUE 1
#define FALSE 0
typedef char bool;
#endif

#if defined(HI_TECH_C) || defined(SDCC) || defined(__IAR_SYSTEMS_ICC__) || defined(__PCH__)
# undef rom
# define rom
/*# ifdef __PCH__
#  undef const
#  define const
# endif*/
#endif

//#endif // !defined(__PCH__)

#endif // !defined(TYPES_H)
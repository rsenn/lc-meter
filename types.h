#ifndef TYPES_H
#define TYPES_H 1

#ifdef SDCC
#include <stdbool.h>
#include <stdint.h>
#define double float
#endif


#if defined(MCC18) || defined(HI_TECH_C) || defined(SDCC) || defined(__IAR_SYSTEMS_ICC__)
typedef signed char int8;
typedef signed short int16;
typedef signed long int32;

typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned long uint32;
#elif defined(__PCH__)
typedef unsigned int8 uint8;
typedef unsigned int16 uint16;
typedef unsigned int32 uint32;
#else
# define int8 signed char
# define int16 signed short
# define int32 signed long

# define uint8 uint8
# define uint16 unsigned short
# define uint32 unsigned long
#endif

#if defined(MCC18) || defined(HI_TECH_C) || defined(SDCC)
//typedef enum { FALSE = 0, TRUE = 1 } bool;
typedef char bool;
#elif defined(__PCH__)
typedef int1 bool;
#else
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

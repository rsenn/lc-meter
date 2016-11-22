#ifndef TYPES_H
# define TYPES_H 1

# include "device.h"

# if defined(SDCC) || defined(HI_TECH_C) || defined(__XC) || defined(__XC8)
#  include <stdbool.h>
#  include <stdint.h>

#  ifdef __XC__
#   define uint8_t uint8_t
#  endif

# elif defined(MCC18) || defined(__IAR_SYSTEMS_ICC__)
typedef signed char int8_t;
typedef signed short int16_t;
typedef signed long int32_t;

typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned long uint32_t;
# elif defined(__PCH__)
typedef unsigned int8_t uint8_t;
typedef unsigned int16_t uint16_t;
typedef unsigned int32_t uint32_t;
# else
#  define int8_t signed char
#  define int16_t signed short
#  define int32_t signed long

#  define uint8_t unsigned char
#  define uint16_t unsigned short
#  define uint32_t unsigned long
# endif

# ifdef SDCC
#  undef BOOL
typedef char BOOL;
typedef BOOL bit;
//#define BOOL __bit
# elif defined(MCC18) || defined(HI_TECH_C) || defined(MCHP_XC8)
//typedef enum { FALSE = 0, TRUE = 1 } BOOL;
typedef char BOOL;
# elif defined(__PCH__)
typedef int1 BOOL;
# else
#  define TRUE 1
#  define FALSE 0
typedef char BOOL;
# endif

# if defined(HI_TECH_C) || defined(SDCC) || defined(__IAR_SYSTEMS_ICC__) || defined(__PCH__)
#  undef rom
#  define rom
/*# ifdef __PCH__
#  undef const
#  define const
# endif*/
# endif

//#endif // !defined(__PCH__)

#endif // !defined(TYPES_H)

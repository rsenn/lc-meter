#ifndef PICLIB_CONST_H
#define PICLIB_CONST_H

#define DEG_TO_RAD 0.0174532925199432957692369076848l // PI/180
#define RAD_TO_DEG 57.295779513082320876798154814105l // 180/PI
#define rad(x) (x * DEG_TO_RAD)
#define deg(x) (x * RAD_TO_DEG)

// already defined in common_types.h
#if 1 //! defined(__XC__) && !defined(SDCC)
#ifndef FALSE
#define FALSE 0
#endif
#ifndef TRUE
#define TRUE !FALSE
#endif
#endif

#ifndef NULL
#define NULL (void*)0
#endif

#define INPUT 1
#define OUTPUT 0

#define HIGH 1
#define LOW 0

/*#define ON     1
#define OFF    0
*/
/*#define BYTE   1
#define BIN    2
#define OCT    8
#define DEC   10
#define HEX   16
#define FLOAT 32
*/
#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))

#endif

#ifndef PICLIB_CONST_H
#define PICLIB_CONST_H

#define DEG_TO_RAD 0.0174532925199432957692369076848l // PI/180
#define RAD_TO_DEG 57.295779513082320876798154814105l // 180/PI
#define rad(x) (x * DEG_TO_RAD)
#define deg(x) (x * RAD_TO_DEG)

#ifndef NULL
#define NULL (void*)0
#endif

#define INPUT 1
#define OUTPUT 0

#define HIGH 1
#define LOW 0

#define ARRAY_SIZE(a) (sizeof(a) / sizeof(a[0]))

#endif


#ifdef __16f628a
# define RS_PIN  RB5
# define RS_TRIS TRISB5
# undef RW_PIN
# undef RW_TRIS
# define EN_PIN  RB4
# define EN_TRIS TRISB4

#define DATA0_PIN  RA2
#define DATA0_TRIS TRISA2
#define DATA1_PIN  RA3
#define DATA1_TRIS TRISA3
#define DATA2_PIN  RB3
#define DATA2_TRIS TRISB3
#define DATA3_PIN  RB6
#define DATA3_TRIS TRISB6
#else
# define RS_PIN  RB2
# define RS_TRIS TRISB2
# undef RW_PIN
# undef RW_TRIS
# define EN_PIN  RB3    // activated by a HIGH pulse.
# define EN_TRIS TRISB3    // activated by a HIGH pulse.

#define DATA0_PIN  RB4
#define DATA0_TRIS TRISB4
#define DATA1_PIN  RB5
#define DATA1_TRIS TRISB5
#define DATA2_PIN  RB6
#define DATA2_TRIS TRISB6
#define DATA3_PIN  RB7
#define DATA3_TRIS TRISB7
#endif

#ifndef DATABUS_MUX
#define DATABUS_MUX 0
#endif

#if DATABUS_MUX
#define DATABUS_INIT INPUT
#define DATABUS_MUXDELAY 10
#else
#define DATABUS_INIT OUTPUT
#endif



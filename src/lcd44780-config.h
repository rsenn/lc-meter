
#ifdef __16f628a
#define RS_PIN OUTB0
#define RS_TRIS TRISB0
#undef RW_PIN
#undef RW_TRIS
#define EN_PIN OUTB1
#define EN_TRIS TRISB1

#define DATA0_PIN OUTB4
#define DATA0_TRIS TRISB4
#define DATA1_PIN OUTB5
#define DATA1_TRIS TRISB5
#define DATA2_PIN OUTB6
#define DATA2_TRIS TRISB6
#define DATA3_PIN OUTB7
#define DATA3_TRIS TRISB7
#else
#ifndef RS_PIN
#define RS_PIN OUTB2
#endif
#define RS_TRIS TRISB2
#undef RW_PIN
#undef RW_TRIS
#define EN_PIN OUTB3     // activated by a HIGH pulse.
#define EN_TRIS TRISB3 // activated by a HIGH pulse.

#define DATA0_PIN OUTB4
#define DATA0_TRIS TRISB4
#define DATA1_PIN OUTB5
#define DATA1_TRIS TRISB5
#define DATA2_PIN OUTB6
#define DATA2_TRIS TRISB6
#define DATA3_PIN OUTB7
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


#ifdef __16f628a
#define RS_PIN OUTB0
#define RS_TRIS TRISB0
#undef RW_PIN
#undef RW_TRIS
#define EN_PIN OUTB1
#define EN_TRIS TRISB1

#define DATA0_PIN OUTB4
#define DATA1_PIN OUTB5
#define DATA2_PIN OUTB6
#define DATA3_PIN OUTB7
#else
#define RS_HIGH() LATB |= 0b0100
#define RS_LOW() LATB &= ~0b0100
#define RS_TRIS() TRISB &= ~0b0100
#define RW_HIGH() 
#define RW_LOW() 
#define RW_TRIS() 
#define EN_HIGH() LATB |= 0b1000
#define EN_LOW() LATB &= ~0b1000
#define EN_TRIS() TRISB &= ~0b1000
#define DATA_TRIS() LATB &= ~0b11110000

#define DATA0_PIN OUTB4
#define DATA1_PIN OUTB5
#define DATA2_PIN OUTB6
#define DATA3_PIN OUTB7
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

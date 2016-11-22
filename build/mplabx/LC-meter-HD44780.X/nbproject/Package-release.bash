
# 1 "../../../lib/timer.c"

# 26 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\htc.h"
extern const char __xc8_OPTIM_SPEED;


# 13 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\xc8debug.h"
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);

# 49 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
extern volatile unsigned char INDF @ 0x000;

asm("INDF equ 00h");



extern volatile unsigned char TMR0 @ 0x001;

asm("TMR0 equ 01h");



extern volatile unsigned char PCL @ 0x002;

asm("PCL equ 02h");



extern volatile unsigned char STATUS @ 0x003;

asm("STATUS equ 03h");


typedef union {
struct {
unsigned C :1;
unsigned DC :1;
unsigned Z :1;
unsigned nPD :1;
unsigned nTO :1;
unsigned RP :2;
unsigned IRP :1;
};
struct {
unsigned :5;
unsigned RP0 :1;
unsigned RP1 :1;
};
struct {
unsigned CARRY :1;
};
struct {
unsigned :2;
unsigned ZERO :1;
};
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits @ 0x003;

# 154
extern volatile unsigned char FSR @ 0x004;

asm("FSR equ 04h");



extern volatile unsigned char PORTA @ 0x005;

asm("PORTA equ 05h");


typedef union {
struct {
unsigned RA0 :1;
unsigned RA1 :1;
unsigned RA2 :1;
unsigned RA3 :1;
unsigned RA4 :1;
unsigned RA5 :1;
};
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits @ 0x005;

# 209
extern v
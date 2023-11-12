;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"lib/timer.c"
	list	p=16f876a
	radix dec
	include "p16f876a.inc"
;--------------------------------------------------------
; config word(s)
;--------------------------------------------------------
	__config 0x3f32
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_PIE1
	extern	_OPTION_REG
	extern	_T2CON
	extern	_TMR2
	extern	_PIR1
	extern	_TMR0
	extern	_OPTION_REGbits
	extern	_INTCONbits

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_timer0_init
	global	_timer0_read_ps
	global	_timer2_init

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_timer_0	udata
r0x100A	res	1
r0x100B	res	1
r0x100C	res	1
r0x100D	res	1
r0x100E	res	1
r0x100F	res	1
r0x1004	res	1
r0x1005	res	1
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
r0x1009	res	1
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized absolute data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_timer	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;4 compiler assigned registers:
;   r0x1000
;   r0x1001
;   r0x1002
;   r0x1003
;; Starting pCode block
S_timer__timer2_init	code
_timer2_init:
; 2 exit points
;	.line	176; "lib/timer.c"	timer2_init(uint8_t ps_mode) {
	BANKSEL	r0x1000
	MOVWF	r0x1000
;	.line	177; "lib/timer.c"	uint8_t ps = ps_mode & PRESCALE_MASK;
	MOVLW	0x0f
	ANDWF	r0x1000,W
	MOVWF	r0x1001
;	.line	181; "lib/timer.c"	T2CON &= ~0b01111111;
	MOVLW	0x80
	BANKSEL	_T2CON
	ANDWF	_T2CON,F
;	.line	183; "lib/timer.c"	T2CON |= (postscaler & 0b1111) << 3;
	BANKSEL	r0x1002
	CLRF	r0x1002
	MOVLW	0x0f
	ANDWF	r0x1002,F
	BCF	STATUS,0
	RLF	r0x1002,W
	MOVWF	r0x1003
	BCF	STATUS,0
	RLF	r0x1003,F
	BCF	STATUS,0
	RLF	r0x1003,F
	MOVF	r0x1003,W
	BANKSEL	_T2CON
	IORWF	_T2CON,F
;	.line	184; "lib/timer.c"	T2CON |= (ps & 0b11); // Set timer 2 prescaler to 1:1.
	MOVLW	0x03
	BANKSEL	r0x1001
	ANDWF	r0x1001,F
	MOVF	r0x1001,W
	BANKSEL	_T2CON
	IORWF	_T2CON,F
;	.line	186; "lib/timer.c"	TIMER2_VALUE = 0;
	CLRF	_TMR2
;	.line	188; "lib/timer.c"	T2CON |= 0b100; // TMR2ON = 1; // Enable timer 2.
	BSF	_T2CON,2
;	.line	191; "lib/timer.c"	PIR1 &= ~0b10;
	BCF	_PIR1,1
;	.line	192; "lib/timer.c"	PIE1 = (!!(ps_mode & TIMER2_FLAGS_INTR)) << 1;
	BANKSEL	r0x1000
	MOVF	r0x1000,W
	ANDLW	0x80
	BTFSS	STATUS,2
	MOVLW	0x01
	MOVWF	r0x1001
	MOVF	r0x1001,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
	MOVWF	r0x1000
	MOVF	r0x1000,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
	MOVWF	r0x1001
	MOVWF	r0x1000
	BCF	STATUS,0
	RLF	r0x1000,W
	BANKSEL	_PIE1
	MOVWF	_PIE1
;	.line	193; "lib/timer.c"	}
	RETURN	
; exit point of _timer2_init

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;7 compiler assigned registers:
;   r0x1004
;   r0x1005
;   r0x1006
;   r0x1007
;   r0x1008
;   r0x1009
;   STK00
;; Starting pCode block
S_timer__timer0_read_ps	code
_timer0_read_ps:
; 2 exit points
;	.line	110; "lib/timer.c"	uint8_t prev = TMR0;
	BANKSEL	_TMR0
	MOVF	_TMR0,W
	BANKSEL	r0x1004
	MOVWF	r0x1004
;	.line	114; "lib/timer.c"	/*T0CON |= 0x20; */ T0CS = 1;
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,5
;	.line	116; "lib/timer.c"	do {
	BANKSEL	r0x1005
	CLRF	r0x1005
	CLRF	r0x1006
_00122_DS_:
;	.line	118; "lib/timer.c"	T0SE = 1;
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,4
	nop	
	nop	
;	.line	123; "lib/timer.c"	T0SE = 0;
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,4
	nop	
	nop	
;	.line	128; "lib/timer.c"	++count;
	BANKSEL	r0x1005
	INCF	r0x1005,F
	BTFSC	STATUS,2
	INCF	r0x1006,F
;	.line	131; "lib/timer.c"	} while(prev == TMR0 && count <= 255);
	BANKSEL	_TMR0
	MOVF	_TMR0,W
	BANKSEL	r0x1004
	XORWF	r0x1004,W
	BTFSS	STATUS,2
	GOTO	_00124_DS_
	MOVF	r0x1005,W
	MOVWF	r0x1007
	MOVF	r0x1006,W
	MOVWF	r0x1008
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x100=256), size=2
	MOVLW	0x01
	SUBWF	r0x1008,W
	BTFSS	STATUS,2
	GOTO	_00136_DS_
	MOVLW	0x00
	SUBWF	r0x1007,W
_00136_DS_:
	BTFSS	STATUS,0
	GOTO	_00122_DS_
;;genSkipc:3307: created from rifx:0x7ffe4cfd5230
_00124_DS_:
;	.line	133; "lib/timer.c"	count = ((prev << 8) + (256 - count));
	BANKSEL	r0x1004
	MOVF	r0x1004,W
	MOVWF	r0x1009
	MOVWF	r0x1007
	CLRF	r0x1008
;;99	MOVF	r0x1007,W
	CLRF	r0x1004
	MOVF	r0x1005,W
	SUBLW	0x00
	MOVWF	r0x1005
	MOVF	r0x1006,W
	BTFSS	STATUS,0
	INCF	r0x1006,W
	SUBLW	0x01
	MOVWF	r0x1006
	MOVF	r0x1004,W
	MOVWF	r0x1007
	MOVF	r0x1009,W
	MOVWF	r0x1008
	MOVF	r0x1005,W
	ADDWF	r0x1007,W
	MOVWF	r0x1004
;;100	MOVF	r0x1008,W
	MOVF	r0x1006,W
	BTFSC	STATUS,0
	INCFSZ	r0x1006,W
	ADDWF	r0x1009,F
;	.line	134; "lib/timer.c"	return count;
	MOVF	r0x1004,W
	MOVWF	STK00
	MOVF	r0x1009,W
;	.line	135; "lib/timer.c"	}
	RETURN	
; exit point of _timer0_read_ps

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;6 compiler assigned registers:
;   r0x100A
;   r0x100B
;   r0x100C
;   r0x100D
;   r0x100E
;   r0x100F
;; Starting pCode block
S_timer__timer0_init	code
_timer0_init:
; 2 exit points
;	.line	26; "lib/timer.c"	timer0_init(uint8_t ps_mode) {
	BANKSEL	r0x100A
	MOVWF	r0x100A
;	.line	27; "lib/timer.c"	uint8_t prescaler = ps_mode & PRESCALE_MASK;
	MOVLW	0x0f
	ANDWF	r0x100A,W
	MOVWF	r0x100B
;	.line	30; "lib/timer.c"	TIMER0_VALUE = 0;
	BANKSEL	_TMR0
	CLRF	_TMR0
;	.line	40; "lib/timer.c"	OPTION_REG &= 0b11000000;
	MOVLW	0xc0
	BANKSEL	_OPTION_REG
	ANDWF	_OPTION_REG,F
;	.line	59; "lib/timer.c"	T0CS = (ps_mode & TIMER0_FLAGS_EXTCLK) ? 1 : 0;
	BANKSEL	r0x100A
	BTFSS	r0x100A,5
	GOTO	_00109_DS_
	MOVLW	0x01
	MOVWF	r0x100C
	CLRF	r0x100D
	GOTO	_00110_DS_
_00109_DS_:
	BANKSEL	r0x100C
	CLRF	r0x100C
	CLRF	r0x100D
_00110_DS_:
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	MOVWF	r0x100E
	RRF	r0x100E,W
	BTFSC	STATUS,0
	GOTO	_00001_DS_
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,5
_00001_DS_:
	BTFSS	STATUS,0
	GOTO	_00002_DS_
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,5
_00002_DS_:
;	.line	60; "lib/timer.c"	T0SE = (ps_mode & EDGE_HIGH_LOW) ? 1 : 0;
	BANKSEL	r0x100A
	BTFSS	r0x100A,4
	GOTO	_00111_DS_
	MOVLW	0x01
	MOVWF	r0x100C
	CLRF	r0x100D
	GOTO	_00112_DS_
_00111_DS_:
	BANKSEL	r0x100C
	CLRF	r0x100C
	CLRF	r0x100D
_00112_DS_:
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	MOVWF	r0x100E
	RRF	r0x100E,W
	BTFSC	STATUS,0
	GOTO	_00003_DS_
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,4
_00003_DS_:
	BTFSS	STATUS,0
	GOTO	_00004_DS_
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,4
_00004_DS_:
;	.line	62; "lib/timer.c"	if(prescaler > 0) {
	BANKSEL	r0x100B
	MOVF	r0x100B,W
	BTFSC	STATUS,2
	GOTO	_00106_DS_
;	.line	63; "lib/timer.c"	/*OPTION_REGbits.*/ PSA = prescaler > 0;
	MOVF	r0x100B,W
	BTFSC	STATUS,2
	GOTO	_00113_DS_
	MOVLW	0x01
	MOVWF	r0x100C
	CLRF	r0x100D
	GOTO	_00114_DS_
_00113_DS_:
	BANKSEL	r0x100C
	CLRF	r0x100C
	CLRF	r0x100D
_00114_DS_:
	BANKSEL	r0x100C
	MOVF	r0x100C,W
	MOVWF	r0x100E
	RRF	r0x100E,W
	BTFSC	STATUS,0
	GOTO	_00005_DS_
	BANKSEL	_OPTION_REGbits
	BCF	_OPTION_REGbits,3
_00005_DS_:
	BTFSS	STATUS,0
	GOTO	_00006_DS_
	BANKSEL	_OPTION_REGbits
	BSF	_OPTION_REGbits,3
_00006_DS_:
;	.line	64; "lib/timer.c"	/*OPTION_REGbits.*/ OPTION_REGbits.PS = prescaler - 1;
	BANKSEL	r0x100B
	DECF	r0x100B,F
	MOVF	r0x100B,W
	ANDLW	0x07
	MOVWF	r0x100F
	BANKSEL	_OPTION_REGbits
	MOVF	(_OPTION_REGbits + 0),W
	ANDLW	0xf8
	BANKSEL	r0x100F
	IORWF	r0x100F,W
	BANKSEL	_OPTION_REGbits
	MOVWF	(_OPTION_REGbits + 0)
_00106_DS_:
;	.line	99; "lib/timer.c"	T0IE = (ps_mode & TIMER0_FLAGS_INTR) ? 1 : 0;
	BANKSEL	r0x100A
	BTFSS	r0x100A,7
	GOTO	_00115_DS_
	MOVLW	0x01
	MOVWF	r0x100A
	CLRF	r0x100B
	GOTO	_00116_DS_
_00115_DS_:
	BANKSEL	r0x100A
	CLRF	r0x100A
	CLRF	r0x100B
_00116_DS_:
	BANKSEL	r0x100A
	MOVF	r0x100A,W
	MOVWF	r0x100C
	RRF	r0x100C,W
	BTFSC	STATUS,0
	GOTO	_00007_DS_
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,5
_00007_DS_:
	BTFSS	STATUS,0
	GOTO	_00008_DS_
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,5
_00008_DS_:
;	.line	101; "lib/timer.c"	}
	RETURN	
; exit point of _timer0_init


;	code size estimation:
;	  187+   45 =   232 instructions (  554 byte)

	end

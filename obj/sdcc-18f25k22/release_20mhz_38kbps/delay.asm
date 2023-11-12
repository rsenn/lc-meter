;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f25k22
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_delay_us
	global	_delay_ms

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_dvar

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_delay__delay_ms	code
_delay_ms:
;	.line	11; lib/delay.c	delay_ms(unsigned int x) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
;	.line	12; lib/delay.c	unsigned char i = 255;
	MOVLW	0xff
	MOVWF	r0x02
_00130_DS_:
;	.line	13; lib/delay.c	for(x; x > 0; x--) {
	MOVF	r0x00, W
	IORWF	r0x01, W
	BZ	_00132_DS_
;	.line	14; lib/delay.c	while(i > 0) i--;
	MOVFF	r0x02, r0x03
_00113_DS_:
	MOVF	r0x03, W
	BZ	_00115_DS_
	DECF	r0x03, F
	BRA	_00113_DS_
_00115_DS_:
;	.line	16; lib/delay.c	while(i > 0) i--;
	MOVLW	0xff
	MOVWF	r0x03
_00116_DS_:
	MOVF	r0x03, W
	BZ	_00118_DS_
	DECF	r0x03, F
	BRA	_00116_DS_
_00118_DS_:
;	.line	18; lib/delay.c	while(i > 0) i--;
	MOVLW	0xff
	MOVWF	r0x03
_00119_DS_:
	MOVF	r0x03, W
	BZ	_00121_DS_
	DECF	r0x03, F
	BRA	_00119_DS_
_00121_DS_:
;	.line	20; lib/delay.c	while(i > 0) i--;
	MOVLW	0xff
	MOVWF	r0x03
_00122_DS_:
	MOVF	r0x03, W
	BZ	_00124_DS_
	DECF	r0x03, F
	BRA	_00122_DS_
_00124_DS_:
;	.line	22; lib/delay.c	while(i > 0) i--;
	MOVLW	0x32
	MOVWF	r0x03
_00125_DS_:
	MOVF	r0x03, W
	BZ	_00152_DS_
	DECF	r0x03, F
	BRA	_00125_DS_
_00152_DS_:
	MOVFF	r0x03, r0x02
;	.line	13; lib/delay.c	for(x; x > 0; x--) {
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
	BRA	_00130_DS_
_00132_DS_:
;	.line	24; lib/delay.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_delay__delay_us	code
_delay_us:
;	.line	5; lib/delay.c	delay_us(unsigned char x) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
_00105_DS_:
;	.line	6; lib/delay.c	while(x > 0) x--;
	MOVF	r0x00, W
	BZ	_00107_DS_
	DECF	r0x00, F
	BRA	_00105_DS_
_00107_DS_:
	nop	
;	.line	8; lib/delay.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  178 (0x00b2) bytes ( 0.14%)
;           	   89 (0x0059) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    4 (0x0004) bytes


	end

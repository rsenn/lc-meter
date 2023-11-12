;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f2520
	radix	dec


;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_buffer_init
	global	_buffer_flush
	global	_buffer_putc
	global	_buffer_putch
	global	_buffer_put
	global	_buffer_puts
	global	_buffer

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1

udata_buffer_0	udata
_buffer	res	17

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_buffer__buffer_puts	code
_buffer_puts:
;	.line	61; lib/buffer.c	buffer_puts(const char* x) {
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
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
_00160_DS_:
;	.line	62; lib/buffer.c	while(*x) {
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
	MOVF	r0x03, W
	BZ	_00162_DS_
;	.line	63; lib/buffer.c	buffer_putch(*x);
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_buffer_putch
	MOVF	POSTINC1, F
;	.line	64; lib/buffer.c	++x;
	INCF	r0x00, F
	BNC	_00160_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
_00174_DS_:
	BRA	_00160_DS_
_00162_DS_:
;	.line	66; lib/buffer.c	return 0;
	CLRF	WREG
;	.line	67; lib/buffer.c	}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_buffer__buffer_put	code
_buffer_put:
;	.line	44; lib/buffer.c	buffer_put(const char* buf, len_t len) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	BANKSEL	(_buffer + 16)
;	.line	46; lib/buffer.c	if(len > BUFFER_SIZE - buffer.n) // doesn't fit
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x04
	CLRF	r0x05
	MOVF	r0x04, W
	SUBLW	0x10
	MOVWF	r0x04
	MOVLW	0x00
	SUBFWB	r0x05, F
	MOVFF	r0x03, r0x06
	CLRF	r0x07
	MOVF	r0x05, W
	ADDLW	0x80
	MOVWF	PRODL
	MOVF	r0x07, W
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00154_DS_
	MOVF	r0x06, W
	SUBWF	r0x04, W
_00154_DS_:
	BC	_00143_DS_
;	.line	47; lib/buffer.c	return -1;
	SETF	WREG
	BRA	_00139_DS_
_00143_DS_:
;	.line	48; lib/buffer.c	for(i = 0; i < len; i++) buffer.x[buffer.n + i] = buf[i];
	CLRF	r0x04
_00137_DS_:
	MOVF	r0x03, W
	SUBWF	r0x04, W
	BC	_00135_DS_
	BANKSEL	(_buffer + 16)
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x05
	MOVF	r0x04, W
	MOVWF	r0x06
	MOVF	r0x06, W
	ADDWF	r0x05, F
	CLRF	r0x06
	BTFSC	r0x05, 7
	SETF	r0x06
	MOVLW	LOW(_buffer)
	ADDWF	r0x05, F
	MOVLW	HIGH(_buffer)
	ADDWFC	r0x06, F
	MOVF	r0x04, W
	ADDWF	r0x00, W
	MOVWF	r0x07
	CLRF	WREG
	ADDWFC	r0x01, W
	MOVWF	r0x08
	CLRF	WREG
	ADDWFC	r0x02, W
	MOVWF	r0x09
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, PRODL
	MOVF	r0x09, W
	CALL	__gptrget1
	MOVWF	r0x07
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x07, INDF0
	INCF	r0x04, F
	BRA	_00137_DS_
_00135_DS_:
	BANKSEL	(_buffer + 16)
;	.line	49; lib/buffer.c	buffer.n += len;
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x00
	MOVF	r0x00, W
	ADDWF	r0x03, F
	MOVF	r0x03, W
	ANDLW	0x0f
	SWAPF	WREG, W
	MOVWF	PRODH
	BANKSEL	(_buffer + 16)
	MOVF	(_buffer + 16), W, B
	ANDLW	0x0f
	IORWF	PRODH, W
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
;	.line	50; lib/buffer.c	return 0;
	CLRF	WREG
_00139_DS_:
;	.line	51; lib/buffer.c	}
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_buffer__buffer_putch	code
_buffer_putch:
;	.line	39; lib/buffer.c	buffer_putch(char ch) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
;	.line	40; lib/buffer.c	buffer_putc(ch);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_buffer_putc
	MOVF	POSTINC1, F
;	.line	41; lib/buffer.c	}
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_buffer__buffer_putc	code
_buffer_putc:
;	.line	30; lib/buffer.c	buffer_putc(char ch) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	BANKSEL	(_buffer + 16)
;	.line	31; lib/buffer.c	if(BUFFER_SIZE - buffer.n <= 0)
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x01
	CLRF	r0x02
	MOVF	r0x01, W
	SUBLW	0x10
	MOVWF	r0x01
	MOVLW	0x00
	SUBFWB	r0x02, F
	MOVF	r0x02, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00123_DS_
	MOVLW	0x01
	SUBWF	r0x01, W
_00123_DS_:
	BC	_00116_DS_
;	.line	32; lib/buffer.c	return 0;
	CLRF	WREG
	BRA	_00117_DS_
_00116_DS_:
	BANKSEL	(_buffer + 16)
;	.line	33; lib/buffer.c	buffer.x[buffer.n] = ch;
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	LOW(_buffer)
	ADDWF	r0x01, F
	MOVLW	HIGH(_buffer)
	ADDWFC	r0x02, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x00, INDF0
	BANKSEL	(_buffer + 16)
;	.line	34; lib/buffer.c	buffer.n++;
	MOVF	(_buffer + 16), W, B
	SWAPF	WREG, W
	ANDLW	0x0f
	MOVWF	r0x00
	INCF	r0x00, F
	MOVF	r0x00, W
	ANDLW	0x0f
	SWAPF	WREG, W
	MOVWF	PRODH
	BANKSEL	(_buffer + 16)
	MOVF	(_buffer + 16), W, B
	ANDLW	0x0f
	IORWF	PRODH, W
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
;	.line	35; lib/buffer.c	return 1;
	MOVLW	0x01
_00117_DS_:
;	.line	36; lib/buffer.c	}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_buffer__buffer_flush	code
_buffer_flush:
;	.line	21; lib/buffer.c	buffer_flush() {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	BANKSEL	(_buffer + 16)
;	.line	25; lib/buffer.c	BUFFER_CLEAR();
	MOVF	(_buffer + 16), W, B
	ANDLW	0xf0
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
	BANKSEL	(_buffer + 16)
	MOVF	(_buffer + 16), W, B
	ANDLW	0x0f
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
;	.line	26; lib/buffer.c	return 0;
	CLRF	WREG
;	.line	27; lib/buffer.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_buffer__buffer_init	code
_buffer_init:
;	.line	10; lib/buffer.c	buffer_init(void) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	BANKSEL	(_buffer + 16)
;	.line	11; lib/buffer.c	buffer.p = 0;
	MOVF	(_buffer + 16), W, B
	ANDLW	0xf0
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
	BANKSEL	(_buffer + 16)
;	.line	12; lib/buffer.c	buffer.n = 0;
	MOVF	(_buffer + 16), W, B
	ANDLW	0x0f
	BANKSEL	(_buffer + 16)
	MOVWF	(_buffer + 16), B
;	.line	13; lib/buffer.c	}
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  660 (0x0294) bytes ( 0.50%)
;           	  330 (0x014a) words
; udata size:	   17 (0x0011) bytes ( 1.33%)
; access size:	   10 (0x000a) bytes


	end

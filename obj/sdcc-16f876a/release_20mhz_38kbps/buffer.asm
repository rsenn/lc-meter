;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"lib/buffer.c"
	list	p=16f876a
	radix dec
	include "p16f876a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	__gptrget1

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
	global	_buffer
	global	_buffer_init
	global	_buffer_flush
	global	_buffer_putc
	global	_buffer_putch
	global	_buffer_put
	global	_buffer_puts

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_buffer_0	udata
_buffer	res	17

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_buffer_0	udata
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x1014	res	1
r0x1016	res	1
r0x101E	res	1
r0x101D	res	1
r0x101C	res	1
r0x101F	res	1
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
r0x1023	res	1
r0x1024	res	1
r0x1026	res	1
r0x1027	res	1
r0x101A	res	1
r0x1019	res	1
r0x1018	res	1
r0x101B	res	1
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
code_buffer	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _buffer_putch
;   __gptrget1
;   _buffer_putch
;6 compiler assigned registers:
;   r0x1018
;   STK00
;   r0x1019
;   STK01
;   r0x101A
;   r0x101B
;; Starting pCode block
S_buffer__buffer_puts	code
_buffer_puts:
; 2 exit points
;	.line	61; "lib/buffer.c"	buffer_puts(const char* x) {
	BANKSEL	r0x1018
	MOVWF	r0x1018
	MOVF	STK00,W
	MOVWF	r0x1019
	MOVF	STK01,W
	MOVWF	r0x101A
_00159_DS_:
;	.line	62; "lib/buffer.c"	while(*x) {
	BANKSEL	r0x101A
	MOVF	r0x101A,W
	MOVWF	STK01
	MOVF	r0x1019,W
	MOVWF	STK00
	MOVF	r0x1018,W
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x101B
	MOVWF	r0x101B
	MOVF	r0x101B,W
	BTFSC	STATUS,2
	GOTO	_00161_DS_
;	.line	63; "lib/buffer.c"	buffer_putch(*x);
	MOVF	r0x101B,W
	PAGESEL	_buffer_putch
	CALL	_buffer_putch
	PAGESEL	$
;	.line	64; "lib/buffer.c"	++x;
	BANKSEL	r0x101A
	INCF	r0x101A,F
	BTFSC	STATUS,2
	INCF	r0x1019,F
	BTFSC	STATUS,2
	INCF	r0x1018,F
	GOTO	_00159_DS_
_00161_DS_:
;	.line	66; "lib/buffer.c"	return 0;
	MOVLW	0x00
;	.line	67; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_puts

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;15 compiler assigned registers:
;   r0x101C
;   STK00
;   r0x101D
;   STK01
;   r0x101E
;   STK02
;   r0x101F
;   r0x1020
;   r0x1021
;   r0x1022
;   r0x1023
;   r0x1024
;   r0x1025
;   r0x1026
;   r0x1027
;; Starting pCode block
S_buffer__buffer_put	code
_buffer_put:
; 2 exit points
;	.line	44; "lib/buffer.c"	buffer_put(const char* buf, len_t len) {
	BANKSEL	r0x101C
	MOVWF	r0x101C
	MOVF	STK00,W
	MOVWF	r0x101D
	MOVF	STK01,W
	MOVWF	r0x101E
	MOVF	STK02,W
	MOVWF	r0x101F
;	.line	46; "lib/buffer.c"	if(len > BUFFER_SIZE - buffer.n) // doesn't fit
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	BANKSEL	r0x1020
	MOVWF	r0x1020
	SWAPF	r0x1020,F
	MOVLW	0x0f
	ANDWF	r0x1020,F
;;105	MOVF	r0x1020,W
	CLRF	r0x1022
;;104	MOVF	r0x1021,W
	MOVF	r0x1020,W
	MOVWF	r0x1021
	SUBLW	0x10
	MOVWF	r0x1020
	MOVLW	0x00
	BTFSS	STATUS,0
	INCF	r0x1022,W
	SUBLW	0x00
	MOVWF	r0x1023
	MOVF	r0x101F,W
	MOVWF	r0x1021
	CLRF	r0x1022
	MOVF	r0x1023,W
	ADDLW	0x80
	MOVWF	r0x1024
	MOVLW	0x00
	ADDLW	0x80
	SUBWF	r0x1024,W
	BTFSS	STATUS,2
	GOTO	_00151_DS_
	MOVF	r0x1021,W
	SUBWF	r0x1020,W
_00151_DS_:
	BTFSC	STATUS,0
	GOTO	_00140_DS_
;;genSkipc:3307: created from rifx:0x7ffcfebcb9d0
;	.line	47; "lib/buffer.c"	return -1;
	MOVLW	0xff
	GOTO	_00136_DS_
_00140_DS_:
;	.line	48; "lib/buffer.c"	for(i = 0; i < len; i++) buffer.x[buffer.n + i] = buf[i];
	BANKSEL	r0x1020
	CLRF	r0x1020
_00134_DS_:
	BANKSEL	r0x101F
	MOVF	r0x101F,W
	SUBWF	r0x1020,W
	BTFSC	STATUS,0
	GOTO	_00132_DS_
;;genSkipc:3307: created from rifx:0x7ffcfebcb9d0
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	BANKSEL	r0x1021
	MOVWF	r0x1021
	SWAPF	r0x1021,F
	MOVLW	0x0f
	ANDWF	r0x1021,F
	MOVF	r0x1021,W
	MOVWF	r0x1022
	MOVF	r0x1020,W
	MOVWF	r0x1021
	ADDWF	r0x1022,F
	MOVF	r0x1022,W
	ADDLW	(_buffer + 0)
	MOVWF	r0x1022
	BTFSS	r0x1022,7
	GOTO	_00153_DS_
	MOVLW	high (_buffer + 0)
	BTFSS	STATUS,0
	ADDLW	0xff
	MOVWF	r0x1021
	GOTO	_00154_DS_
_00153_DS_:
	MOVLW	high (_buffer + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	BANKSEL	r0x1021
	MOVWF	r0x1021
_00154_DS_:
	BANKSEL	r0x1020
	MOVF	r0x1020,W
	ADDWF	r0x101E,W
	MOVWF	r0x1023
	MOVF	r0x101D,W
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1024
;;101	MOVF	r0x101C,W
;;99	MOVWF	r0x1025
	MOVF	r0x1023,W
	MOVWF	STK01
	MOVF	r0x1024,W
	MOVWF	STK00
;;100	MOVF	r0x1025,W
	MOVF	r0x101C,W
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x1026
	MOVWF	r0x1026
	MOVF	r0x1022,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1021
	BTFSC	r0x1021,0
	BSF	STATUS,7
	MOVF	r0x1026,W
	BANKSEL	INDF
	MOVWF	INDF
	BANKSEL	r0x1020
	INCF	r0x1020,F
	GOTO	_00134_DS_
_00132_DS_:
;	.line	49; "lib/buffer.c"	buffer.n += len;
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	BANKSEL	r0x101E
	MOVWF	r0x101E
	SWAPF	r0x101E,F
	MOVLW	0x0f
	ANDWF	r0x101E,F
	MOVF	r0x101F,W
	ADDWF	r0x101E,W
	MOVWF	r0x101F
	ANDLW	0x0f
	MOVWF	r0x1027
	SWAPF	r0x1027,F
	MOVLW	0xf0
	ANDWF	r0x1027,F
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0x0f
	BANKSEL	r0x1027
	IORWF	r0x1027,W
	BANKSEL	_buffer
	MOVWF	(_buffer + 16)
;	.line	50; "lib/buffer.c"	return 0;
	MOVLW	0x00
_00136_DS_:
;	.line	51; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_put

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _buffer_putc
;   _buffer_putc
;1 compiler assigned register :
;   r0x1017
;; Starting pCode block
S_buffer__buffer_putch	code
_buffer_putch:
; 2 exit points
;;1	MOVWF	r0x1017
;	.line	40; "lib/buffer.c"	buffer_putc(ch);
	PAGESEL	_buffer_putc
	CALL	_buffer_putc
	PAGESEL	$
;	.line	41; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_putch

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;6 compiler assigned registers:
;   r0x1011
;   r0x1012
;   r0x1013
;   r0x1014
;   r0x1015
;   r0x1016
;; Starting pCode block
S_buffer__buffer_putc	code
_buffer_putc:
; 2 exit points
;	.line	30; "lib/buffer.c"	buffer_putc(char ch) {
	BANKSEL	r0x1011
	MOVWF	r0x1011
;	.line	31; "lib/buffer.c"	if(BUFFER_SIZE - buffer.n <= 0)
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	BANKSEL	r0x1012
	MOVWF	r0x1012
	SWAPF	r0x1012,F
	MOVLW	0x0f
	ANDWF	r0x1012,F
;;103	MOVF	r0x1012,W
	CLRF	r0x1014
;;102	MOVF	r0x1013,W
	MOVF	r0x1012,W
	MOVWF	r0x1013
	SUBLW	0x10
	MOVWF	r0x1012
	MOVLW	0x00
	BTFSS	STATUS,0
	INCF	r0x1014,W
	SUBLW	0x00
;;1	MOVWF	r0x1015
	ADDLW	0x80
	ADDLW	0x80
	BTFSS	STATUS,2
	GOTO	_00121_DS_
	MOVLW	0x01
	SUBWF	r0x1012,W
_00121_DS_:
	BTFSC	STATUS,0
	GOTO	_00114_DS_
;;genSkipc:3307: created from rifx:0x7ffcfebcb9d0
;	.line	32; "lib/buffer.c"	return 0;
	MOVLW	0x00
	GOTO	_00115_DS_
_00114_DS_:
;	.line	33; "lib/buffer.c"	buffer.x[buffer.n] = ch;
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	BANKSEL	r0x1012
	MOVWF	r0x1012
	SWAPF	r0x1012,F
	MOVLW	0x0f
	ANDWF	r0x1012,F
	MOVF	r0x1012,W
	MOVWF	r0x1013
	MOVWF	r0x1012
	ADDLW	(_buffer + 0)
	MOVWF	r0x1013
	MOVLW	high (_buffer + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1014
	MOVF	r0x1013,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1014
	BTFSC	r0x1014,0
	BSF	STATUS,7
	MOVF	r0x1011,W
	BANKSEL	INDF
	MOVWF	INDF
;	.line	34; "lib/buffer.c"	buffer.n++;
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	BANKSEL	r0x1011
	MOVWF	r0x1011
	SWAPF	r0x1011,F
	MOVLW	0x0f
	ANDWF	r0x1011,F
	INCF	r0x1011,F
	MOVF	r0x1011,W
	ANDLW	0x0f
	MOVWF	r0x1016
	SWAPF	r0x1016,F
	MOVLW	0xf0
	ANDWF	r0x1016,F
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0x0f
	BANKSEL	r0x1016
	IORWF	r0x1016,W
	BANKSEL	_buffer
	MOVWF	(_buffer + 16)
;	.line	35; "lib/buffer.c"	return 1;
	MOVLW	0x01
_00115_DS_:
;	.line	36; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_putc

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
S_buffer__buffer_flush	code
_buffer_flush:
; 2 exit points
;	.line	25; "lib/buffer.c"	BUFFER_CLEAR();
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
	MOVWF	(_buffer + 16)
	ANDLW	0x0f
	MOVWF	(_buffer + 16)
;	.line	26; "lib/buffer.c"	return 0;
	MOVLW	0x00
;	.line	27; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_flush

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
S_buffer__buffer_init	code
_buffer_init:
; 2 exit points
;	.line	11; "lib/buffer.c"	buffer.p = 0;
	BANKSEL	_buffer
	MOVF	(_buffer + 16),W
	ANDLW	0xf0
;	.line	12; "lib/buffer.c"	buffer.n = 0;
	MOVWF	(_buffer + 16)
	ANDLW	0x0f
	MOVWF	(_buffer + 16)
;	.line	13; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_init


;	code size estimation:
;	  220+   46 =   266 instructions (  624 byte)

	end

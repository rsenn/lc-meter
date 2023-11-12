;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"lib/ser.c"
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
	extern	_SPBRG
	extern	_TRISC
	extern	_TXSTAbits
	extern	_PIE1bits
	extern	_RCSTAbits
	extern	_INTCONbits
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
	global	_ser_tmp
	global	_ser_txoptr
	global	_ser_txiptr
	global	_ser_txfifo
	global	_ser_rxoptr
	global	_ser_rxiptr
	global	_ser_rxfifo
	global	_ser_brg
	global	_ser_isrx
	global	_ser_rxsize
	global	_ser_rxat
	global	_ser_getch
	global	_ser_putch
	global	_ser_puts
	global	_ser_put
	global	_ser_puts2
	global	_ser_puthex
	global	_ser_init

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_ser_0	udata
_ser_rxfifo	res	16

UD_ser_1	udata
_ser_rxiptr	res	1

UD_ser_2	udata
_ser_rxoptr	res	1

UD_ser_3	udata
_ser_txfifo	res	16

UD_ser_4	udata
_ser_txiptr	res	1

UD_ser_5	udata
_ser_txoptr	res	1

UD_ser_6	udata
_ser_tmp	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_ser_0	udata
r0x103D	res	1
r0x1045	res	1
r0x1042	res	1
r0x1043	res	1
r0x103F	res	1
r0x1040	res	1
r0x1041	res	1
r0x1025	res	1
r0x1026	res	1
r0x1027	res	1
r0x1028	res	1
r0x1029	res	1
r0x103B	res	1
r0x103A	res	1
r0x1039	res	1
r0x103C	res	1
r0x1034	res	1
r0x1033	res	1
r0x1032	res	1
r0x1036	res	1
r0x1035	res	1
r0x1037	res	1
r0x1038	res	1
r0x1030	res	1
r0x102F	res	1
r0x102E	res	1
r0x1031	res	1
r0x102A	res	1
r0x102B	res	1
r0x102C	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

IDD_ser_0	idata
_ser_brg
	db	0x1f	; 31

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
code_ser	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
S_ser__ser_init	code
_ser_init:
; 2 exit points
;	.line	115; "lib/ser.c"	SER_TX_TRIS();
	BANKSEL	_TRISC
	BCF	_TRISC,6
;	.line	117; "lib/ser.c"	SER_RX_TRIS();
	BSF	_TRISC,7
;	.line	119; "lib/ser.c"	BRGH = HIGH_SPEED; // high speed
	BSF	_TXSTAbits,2
;	.line	125; "lib/ser.c"	SPBRG = ser_brg; // 56.7K @ 20MHz, SPBRG = (20MHz/(16*BAUD_RATE))-1;
	BANKSEL	_ser_brg
	MOVF	_ser_brg,W
	BANKSEL	_SPBRG
	MOVWF	_SPBRG
;	.line	128; "lib/ser.c"	TX9 = 0; // 8 bits
	BCF	_TXSTAbits,6
;	.line	129; "lib/ser.c"	RX9 = 0; //
	BANKSEL	_RCSTAbits
	BCF	_RCSTAbits,6
;	.line	131; "lib/ser.c"	SYNC = 0; // uart settings
	BANKSEL	_TXSTAbits
	BCF	_TXSTAbits,4
;	.line	132; "lib/ser.c"	SPEN = 1;
	BANKSEL	_RCSTAbits
	BSF	_RCSTAbits,7
;	.line	133; "lib/ser.c"	CREN = 1;
	BSF	_RCSTAbits,4
;	.line	134; "lib/ser.c"	TXIE = 0;
	BANKSEL	_PIE1bits
	BCF	_PIE1bits,4
;	.line	136; "lib/ser.c"	TXEN = 1;
	BSF	_TXSTAbits,5
;	.line	137; "lib/ser.c"	PEIE = 1;
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,6
;	.line	139; "lib/ser.c"	ser_rxiptr = ser_rxoptr = ser_txiptr = ser_txoptr = 0;
	BANKSEL	_ser_txoptr
	CLRF	_ser_txoptr
	BANKSEL	_ser_txiptr
	CLRF	_ser_txiptr
	BANKSEL	_ser_rxoptr
	CLRF	_ser_rxoptr
	BANKSEL	_ser_rxiptr
	CLRF	_ser_rxiptr
;	.line	140; "lib/ser.c"	}
	RETURN	
; exit point of _ser_init

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;   _ser_putch
;4 compiler assigned registers:
;   r0x102A
;   r0x102B
;   r0x102C
;   r0x102D
;; Starting pCode block
S_ser__ser_puthex	code
_ser_puthex:
; 2 exit points
;	.line	95; "lib/ser.c"	ser_puthex(uint8_t v) {
	BANKSEL	r0x102A
	MOVWF	r0x102A
;	.line	98; "lib/ser.c"	c = v >> 4;
	SWAPF	r0x102A,W
	ANDLW	0x0f
	MOVWF	r0x102B
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0xA=10), size=1
;	.line	99; "lib/ser.c"	if(c > 9) {
	MOVLW	0x0a
	SUBWF	r0x102B,W
	BTFSS	STATUS,0
	GOTO	_00184_DS_
;;genSkipc:3307: created from rifx:0x7ffc2866eb10
;	.line	100; "lib/ser.c"	ser_putch((char)('A' - 10 + c));
	MOVF	r0x102B,W
	MOVWF	r0x102C
	MOVLW	0x37
	ADDWF	r0x102C,F
	MOVF	r0x102C,W
;;1	MOVWF	r0x102D
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
	GOTO	_00185_DS_
_00184_DS_:
;	.line	102; "lib/ser.c"	ser_putch((char)('0' + c));
	BANKSEL	r0x102B
	MOVF	r0x102B,W
	MOVWF	r0x102C
	MOVLW	0x30
	ADDWF	r0x102C,F
	MOVF	r0x102C,W
	MOVWF	r0x102B
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
_00185_DS_:
;	.line	105; "lib/ser.c"	c = v & 0x0F;
	MOVLW	0x0f
	BANKSEL	r0x102A
	ANDWF	r0x102A,F
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0xA=10), size=1
;	.line	106; "lib/ser.c"	if(c > 9) {
	MOVLW	0x0a
	SUBWF	r0x102A,W
	BTFSS	STATUS,0
	GOTO	_00187_DS_
;;genSkipc:3307: created from rifx:0x7ffc2866eb10
;	.line	107; "lib/ser.c"	ser_putch((char)('A' - 10 + c));
	MOVF	r0x102A,W
	MOVWF	r0x102B
	MOVLW	0x37
	ADDWF	r0x102B,F
	MOVF	r0x102B,W
	MOVWF	r0x102C
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
	GOTO	_00189_DS_
_00187_DS_:
;	.line	109; "lib/ser.c"	ser_putch((char)('0' + c));
	BANKSEL	r0x102A
	MOVF	r0x102A,W
	MOVWF	r0x102B
	MOVLW	0x30
	ADDWF	r0x102B,W
	MOVWF	r0x102A
	MOVWF	r0x102B
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
_00189_DS_:
;	.line	111; "lib/ser.c"	}
	RETURN	
; exit point of _ser_puthex

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _ser_putch
;   __gptrget1
;   _ser_putch
;6 compiler assigned registers:
;   r0x102E
;   STK00
;   r0x102F
;   STK01
;   r0x1030
;   r0x1031
;; Starting pCode block
S_ser__ser_puts2	code
_ser_puts2:
; 2 exit points
;	.line	90; "lib/ser.c"	ser_puts2(uint8_t* s) {
	BANKSEL	r0x102E
	MOVWF	r0x102E
	MOVF	STK00,W
	MOVWF	r0x102F
	MOVF	STK01,W
	MOVWF	r0x1030
_00175_DS_:
;	.line	91; "lib/ser.c"	while(*s) ser_putch(*s++);
	BANKSEL	r0x1030
	MOVF	r0x1030,W
	MOVWF	STK01
	MOVF	r0x102F,W
	MOVWF	STK00
	MOVF	r0x102E,W
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x1031
	MOVWF	r0x1031
	MOVF	r0x1031,W
	BTFSC	STATUS,2
	GOTO	_00178_DS_
	INCF	r0x1030,F
	BTFSC	STATUS,2
	INCF	r0x102F,F
	BTFSC	STATUS,2
	INCF	r0x102E,F
	MOVF	r0x1031,W
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
	GOTO	_00175_DS_
_00178_DS_:
;	.line	92; "lib/ser.c"	}
	RETURN	
; exit point of _ser_puts2

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _ser_putch
;   __gptrget1
;   _ser_putch
;11 compiler assigned registers:
;   r0x1032
;   STK00
;   r0x1033
;   STK01
;   r0x1034
;   STK02
;   r0x1035
;   STK03
;   r0x1036
;   r0x1037
;   r0x1038
;; Starting pCode block
S_ser__ser_put	code
_ser_put:
; 2 exit points
;	.line	85; "lib/ser.c"	ser_put(const char* s, unsigned n) {
	BANKSEL	r0x1032
	MOVWF	r0x1032
	MOVF	STK00,W
	MOVWF	r0x1033
	MOVF	STK01,W
	MOVWF	r0x1034
	MOVF	STK02,W
	MOVWF	r0x1035
	MOVF	STK03,W
	MOVWF	r0x1036
_00167_DS_:
;	.line	86; "lib/ser.c"	while(n--) ser_putch(*s++);
	BANKSEL	r0x1036
	MOVF	r0x1036,W
	MOVWF	r0x1037
	MOVF	r0x1035,W
	MOVWF	r0x1038
	MOVLW	0xff
	ADDWF	r0x1036,F
	BTFSS	STATUS,0
	DECF	r0x1035,F
	MOVF	r0x1038,W
	IORWF	r0x1037,W
	BTFSC	STATUS,2
	GOTO	_00170_DS_
	MOVF	r0x1034,W
	MOVWF	STK01
	MOVF	r0x1033,W
	MOVWF	STK00
	MOVF	r0x1032,W
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x1037
	MOVWF	r0x1037
	INCF	r0x1034,F
	BTFSC	STATUS,2
	INCF	r0x1033,F
	BTFSC	STATUS,2
	INCF	r0x1032,F
	MOVF	r0x1037,W
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
	GOTO	_00167_DS_
_00170_DS_:
;	.line	87; "lib/ser.c"	}
	RETURN	
; exit point of _ser_put

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __gptrget1
;   _ser_putch
;   __gptrget1
;   _ser_putch
;6 compiler assigned registers:
;   r0x1039
;   STK00
;   r0x103A
;   STK01
;   r0x103B
;   r0x103C
;; Starting pCode block
S_ser__ser_puts	code
_ser_puts:
; 2 exit points
;	.line	81; "lib/ser.c"	ser_puts(const char* s) {
	BANKSEL	r0x1039
	MOVWF	r0x1039
	MOVF	STK00,W
	MOVWF	r0x103A
	MOVF	STK01,W
	MOVWF	r0x103B
_00159_DS_:
;	.line	82; "lib/ser.c"	while(*s) ser_putch(*s++);
	BANKSEL	r0x103B
	MOVF	r0x103B,W
	MOVWF	STK01
	MOVF	r0x103A,W
	MOVWF	STK00
	MOVF	r0x1039,W
	PAGESEL	__gptrget1
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x103C
	MOVWF	r0x103C
	MOVF	r0x103C,W
	BTFSC	STATUS,2
	GOTO	_00162_DS_
	INCF	r0x103B,F
	BTFSC	STATUS,2
	INCF	r0x103A,F
	BTFSC	STATUS,2
	INCF	r0x1039,F
	MOVF	r0x103C,W
	PAGESEL	_ser_putch
	CALL	_ser_putch
	PAGESEL	$
	GOTO	_00159_DS_
_00162_DS_:
;	.line	83; "lib/ser.c"	}
	RETURN	
; exit point of _ser_puts

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;5 compiler assigned registers:
;   r0x1025
;   r0x1026
;   r0x1027
;   r0x1028
;   r0x1029
;; Starting pCode block
S_ser__ser_putch	code
_ser_putch:
; 2 exit points
;	.line	71; "lib/ser.c"	ser_putch(char c) {
	BANKSEL	r0x1025
	MOVWF	r0x1025
_00141_DS_:
;	.line	72; "lib/ser.c"	while(((ser_txiptr + 1) & SER_FIFO_MASK) == ser_txoptr) continue;
	BANKSEL	_ser_txiptr
	MOVF	_ser_txiptr,W
	BANKSEL	r0x1026
	MOVWF	r0x1026
	CLRF	r0x1027
	INCF	r0x1026,F
	BTFSC	STATUS,2
	INCF	r0x1027,F
	MOVLW	0x0f
	ANDWF	r0x1026,F
	CLRF	r0x1027
	BANKSEL	_ser_txoptr
	MOVF	_ser_txoptr,W
	BANKSEL	r0x1028
	MOVWF	r0x1028
	CLRF	r0x1029
	MOVF	r0x1028,W
	XORWF	r0x1026,W
	BTFSS	STATUS,2
	GOTO	_00154_DS_
	MOVF	r0x1029,W
;	.line	73; "lib/ser.c"	GIE = 0;
	XORWF	r0x1027,W
	BTFSC	STATUS,2
	GOTO	_00141_DS_
_00154_DS_:
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,7
;	.line	74; "lib/ser.c"	ser_txfifo[ser_txiptr] = c;
	BANKSEL	_ser_txiptr
	MOVF	_ser_txiptr,W
	ADDLW	(_ser_txfifo + 0)
	BANKSEL	r0x1026
	MOVWF	r0x1026
	MOVLW	high (_ser_txfifo + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1027
	MOVF	r0x1026,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1027
	BTFSC	r0x1027,0
	BSF	STATUS,7
	MOVF	r0x1025,W
	BANKSEL	INDF
	MOVWF	INDF
;	.line	75; "lib/ser.c"	ser_txiptr = (ser_txiptr + 1) & SER_FIFO_MASK;
	BANKSEL	_ser_txiptr
	MOVF	_ser_txiptr,W
	BANKSEL	r0x1025
	MOVWF	r0x1025
	INCF	r0x1025,F
	MOVLW	0x0f
	ANDWF	r0x1025,W
	BANKSEL	_ser_txiptr
	MOVWF	_ser_txiptr
;	.line	76; "lib/ser.c"	TXIE = 1;
	BANKSEL	_PIE1bits
	BSF	_PIE1bits,4
;	.line	77; "lib/ser.c"	GIE = 1;
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,7
;	.line	78; "lib/ser.c"	}
	RETURN	
; exit point of _ser_putch

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _ser_isrx
;   _ser_isrx
;3 compiler assigned registers:
;   r0x103F
;   r0x1040
;   r0x1041
;; Starting pCode block
S_ser__ser_getch	code
_ser_getch:
; 2 exit points
_00136_DS_:
;	.line	60; "lib/ser.c"	while(ser_isrx() == 0) continue;
	PAGESEL	_ser_isrx
	CALL	_ser_isrx
	PAGESEL	$
	BANKSEL	r0x103F
	MOVWF	r0x103F
	MOVF	r0x103F,W
	BTFSC	STATUS,2
	GOTO	_00136_DS_
;	.line	62; "lib/ser.c"	GIE = 0;
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,7
;	.line	63; "lib/ser.c"	c = ser_rxfifo[ser_rxoptr];
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
	ADDLW	(_ser_rxfifo + 0)
	BANKSEL	r0x103F
	MOVWF	r0x103F
	MOVLW	high (_ser_rxfifo + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1040
	MOVF	r0x103F,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1040
	BTFSC	r0x1040,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1041
	MOVWF	r0x1041
;	.line	64; "lib/ser.c"	++ser_rxoptr;
	BANKSEL	_ser_rxoptr
	INCF	_ser_rxoptr,F
;	.line	65; "lib/ser.c"	ser_rxoptr &= SER_FIFO_MASK;
	MOVLW	0x0f
	ANDWF	_ser_rxoptr,F
;	.line	66; "lib/ser.c"	GIE = 1;
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,7
;	.line	67; "lib/ser.c"	return c;
	BANKSEL	r0x1041
	MOVF	r0x1041,W
;	.line	68; "lib/ser.c"	}
	RETURN	
; exit point of _ser_getch

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;3 compiler assigned registers:
;   r0x1042
;   r0x1043
;   r0x1044
;; Starting pCode block
S_ser__ser_rxat	code
_ser_rxat:
; 2 exit points
;	.line	52; "lib/ser.c"	ser_rxat(unsigned char at) {
	BANKSEL	r0x1042
	MOVWF	r0x1042
;	.line	53; "lib/ser.c"	return ser_rxfifo[at & SER_FIFO_MASK];
	MOVLW	0x0f
	ANDWF	r0x1042,F
	MOVF	r0x1042,W
	ADDLW	(_ser_rxfifo + 0)
	MOVWF	r0x1042
	MOVLW	high (_ser_rxfifo + 0)
	BTFSC	STATUS,0
	ADDLW	0x01
	MOVWF	r0x1043
	MOVF	r0x1042,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x1043
	BTFSC	r0x1043,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
;;1	MOVWF	r0x1044
;	.line	54; "lib/ser.c"	}
	RETURN	
; exit point of _ser_rxat

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;1 compiler assigned register :
;   r0x1045
;; Starting pCode block
S_ser__ser_rxsize	code
_ser_rxsize:
; 2 exit points
;	.line	45; "lib/ser.c"	INTERRUPT_DISABLE();
	BANKSEL	_INTCONbits
	BCF	_INTCONbits,7
;	.line	46; "lib/ser.c"	ret = ser_rxiptr < ser_rxoptr ? SER_BUFFER_SIZE - ser_rxiptr + ser_rxoptr : ser_rxiptr - ser_rxoptr;
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
	BANKSEL	_ser_rxiptr
	SUBWF	_ser_rxiptr,W
	BTFSC	STATUS,0
	GOTO	_00126_DS_
;;genSkipc:3307: created from rifx:0x7ffc2866eb10
	MOVF	_ser_rxiptr,W
	SUBLW	0x10
	BANKSEL	r0x1045
	MOVWF	r0x1045
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
	BANKSEL	r0x1045
	ADDWF	r0x1045,F
	GOTO	_00127_DS_
_00126_DS_:
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
	BANKSEL	_ser_rxiptr
	SUBWF	_ser_rxiptr,W
	BANKSEL	r0x1045
	MOVWF	r0x1045
_00127_DS_:
;	.line	47; "lib/ser.c"	INTERRUPT_ENABLE();
	BANKSEL	_INTCONbits
	BSF	_INTCONbits,7
;	.line	48; "lib/ser.c"	return ret;
	BANKSEL	r0x1045
	MOVF	r0x1045,W
;	.line	49; "lib/ser.c"	}
	RETURN	
; exit point of _ser_rxsize

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x103D
;   r0x103E
;; Starting pCode block
S_ser__ser_isrx	code
_ser_isrx:
; 2 exit points
;	.line	34; "lib/ser.c"	if(OERR) {
	BANKSEL	_RCSTAbits
	BTFSS	_RCSTAbits,1
	GOTO	_00106_DS_
;	.line	35; "lib/ser.c"	CREN = 0;
	BCF	_RCSTAbits,4
;	.line	36; "lib/ser.c"	CREN = 1;
	BSF	_RCSTAbits,4
;	.line	37; "lib/ser.c"	return 0;
	MOVLW	0x00
	GOTO	_00107_DS_
_00106_DS_:
;	.line	39; "lib/ser.c"	return (ser_rxiptr != ser_rxoptr);
	BANKSEL	r0x103D
	CLRF	r0x103D
	BANKSEL	_ser_rxoptr
	MOVF	_ser_rxoptr,W
	BANKSEL	_ser_rxiptr
	XORWF	_ser_rxiptr,W
	BTFSS	STATUS,2
	GOTO	_00001_DS_
	BANKSEL	r0x103D
	INCF	r0x103D,F
_00001_DS_:
	BANKSEL	r0x103D
	MOVF	r0x103D,W
	MOVLW	0x00
	BTFSC	STATUS,2
	MOVLW	0x01
;;1	MOVWF	r0x103E
	MOVWF	r0x103D
_00107_DS_:
;	.line	40; "lib/ser.c"	}
	RETURN	
; exit point of _ser_isrx


;	code size estimation:
;	  270+   95 =   365 instructions (  920 byte)

	end

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"lib/format.c"
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
	extern	___fssub
	extern	___fsmul
	extern	___uchar2fs
	extern	___fs2uchar
	extern	___fsdiv
	extern	___sint2fs
	extern	___fslt
	extern	___fs2sint
	extern	__divuint
	extern	__moduint
	extern	_powf
	extern	_floorf
	extern	_log10f
	extern	_buffer_putch

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
	global	_format_double
	global	_format_number
	global	_format_xint32
	global	_format_float

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_format_0	udata
r0x1045	res	1
r0x1044	res	1
r0x1047	res	1
r0x1046	res	1
r0x1048	res	1
r0x1049	res	1
r0x104A	res	1
r0x1061	res	1
r0x104C	res	1
r0x104D	res	1
r0x104F	res	1
r0x1050	res	1
r0x1051	res	1
r0x1052	res	1
r0x1053	res	1
r0x1054	res	1
r0x1056	res	1
r0x1055	res	1
r0x105A	res	1
r0x1059	res	1
r0x1058	res	1
r0x1057	res	1
r0x105B	res	1
r0x105C	res	1
r0x1034	res	1
r0x1033	res	1
r0x1038	res	1
r0x1037	res	1
r0x1036	res	1
r0x1035	res	1
r0x103C	res	1
r0x103B	res	1
r0x103A	res	1
r0x1039	res	1
r0x103E	res	1
r0x103D	res	1
r0x1042	res	1
r0x1041	res	1
r0x1040	res	1
r0x103F	res	1
r0x1043	res	1
r0x1021	res	1
r0x1020	res	1
r0x1025	res	1
r0x1024	res	1
r0x1023	res	1
r0x1022	res	1
r0x102A	res	1
r0x1029	res	1
r0x1028	res	1
r0x1027	res	1
r0x102C	res	1
r0x102B	res	1
r0x1030	res	1
r0x102F	res	1
r0x102E	res	1
r0x102D	res	1
r0x1032	res	1
r0x1031	res	1
_format_number_buf_65536_38	res	32
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
code_format	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _log10f
;   ___fs2sint
;   ___fslt
;   ___sint2fs
;   _powf
;   ___fsdiv
;   _floorf
;   ___fs2sint
;   ___sint2fs
;   ___fsmul
;   ___fssub
;   _00226_DS_
;   _00228_DS_
;   _log10f
;   ___fs2sint
;   ___fslt
;   ___sint2fs
;   _powf
;   ___fsdiv
;   _floorf
;   ___fs2sint
;   ___sint2fs
;   ___fsmul
;   ___fssub
;   _00226_DS_
;   _00228_DS_
;26 compiler assigned registers:
;   r0x1020
;   STK00
;   r0x1021
;   STK01
;   r0x1022
;   STK02
;   r0x1023
;   STK03
;   r0x1024
;   STK04
;   r0x1025
;   r0x1042
;   r0x1027
;   r0x1028
;   r0x1029
;   r0x102A
;   STK06
;   STK05
;   r0x102B
;   r0x102C
;   r0x102D
;   r0x102E
;   r0x102F
;   r0x1030
;   r0x1031
;   r0x1032
;; Starting pCode block
S_format__format_double	code
_format_double:
; 2 exit points
;	.line	87; "lib/format.c"	format_double(putch_t fn, double num) {
	BANKSEL	r0x1020
	MOVWF	r0x1020
	MOVF	STK00,W
	MOVWF	r0x1021
	MOVF	STK01,W
	MOVWF	r0x1022
	MOVF	STK02,W
	MOVWF	r0x1023
	MOVF	STK03,W
	MOVWF	r0x1024
	MOVF	STK04,W
;	.line	88; "lib/format.c"	short m = (short)log10f(num);
	MOVWF	r0x1025
	MOVWF	STK04
	MOVF	r0x1024,W
	MOVWF	STK03
	MOVF	r0x1023,W
	MOVWF	STK02
	MOVF	r0x1022,W
	MOVWF	STK01
	MOVLW	0x2e
	MOVWF	STK00
	MOVF	r0x1042,W
	PAGESEL	_log10f
	CALL	_log10f
	PAGESEL	$
	BANKSEL	r0x1027
	MOVWF	r0x1027
	MOVF	STK00,W
	MOVWF	r0x1028
	MOVF	STK01,W
	MOVWF	r0x1029
	MOVF	STK02,W
	MOVWF	r0x102A
	MOVWF	STK02
	MOVF	r0x1029,W
	MOVWF	STK01
	MOVF	r0x1028,W
	MOVWF	STK00
	MOVF	r0x1027,W
	PAGESEL	___fs2sint
	CALL	___fs2sint
	PAGESEL	$
	BANKSEL	r0x1029
	MOVWF	r0x1029
	MOVF	STK00,W
	MOVWF	r0x102A
_00208_DS_:
;	.line	92; "lib/format.c"	while(num > 0 + DBL_EPSILON) {
	BANKSEL	r0x1025
	MOVF	r0x1025,W
	MOVWF	STK06
	MOVF	r0x1024,W
	MOVWF	STK05
	MOVF	r0x1023,W
	MOVWF	STK04
	MOVF	r0x1022,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x34
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x1028
	MOVWF	r0x1028
	MOVF	r0x1028,W
	BTFSC	STATUS,2
	GOTO	_00211_DS_
;	.line	93; "lib/format.c"	double weight = pow(10.0l, m);
	MOVF	r0x102A,W
	MOVWF	STK00
	MOVF	r0x1029,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x102B
	MOVWF	r0x102B
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x1027
	MOVF	STK02,W
	MOVWF	r0x1028
	MOVWF	STK06
	MOVF	r0x1027,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102B,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x20
	MOVWF	STK00
	MOVLW	0x41
	PAGESEL	_powf
	CALL	_powf
	PAGESEL	$
	BANKSEL	r0x102B
	MOVWF	r0x102B
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x1027
	MOVF	STK02,W
;	.line	94; "lib/format.c"	digit = (short)floor(num / weight);
	MOVWF	r0x1028
	MOVWF	STK06
	MOVF	r0x1027,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102B,W
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102E
	MOVF	STK01,W
	MOVWF	r0x102F
	MOVF	STK02,W
	MOVWF	r0x1030
	MOVWF	STK02
	MOVF	r0x102F,W
	MOVWF	STK01
	MOVF	r0x102E,W
	MOVWF	STK00
	MOVF	r0x102D,W
	PAGESEL	_floorf
	CALL	_floorf
	PAGESEL	$
	BANKSEL	r0x102D
	MOVWF	r0x102D
	MOVF	STK00,W
	MOVWF	r0x102E
	MOVF	STK01,W
	MOVWF	r0x102F
	MOVF	STK02,W
	MOVWF	r0x1030
	MOVWF	STK02
	MOVF	r0x102F,W
	MOVWF	STK01
	MOVF	r0x102E,W
	MOVWF	STK00
	MOVF	r0x102D,W
	PAGESEL	___fs2sint
	CALL	___fs2sint
	PAGESEL	$
	BANKSEL	r0x102F
	MOVWF	r0x102F
	MOVF	STK00,W
;	.line	95; "lib/format.c"	num -= (digit * weight);
	MOVWF	r0x1030
	MOVWF	STK00
	MOVF	r0x102F,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x1031
	MOVWF	r0x1031
	MOVF	STK00,W
	MOVWF	r0x1032
	MOVF	STK01,W
	MOVWF	r0x102D
	MOVF	STK02,W
	MOVWF	r0x102E
	MOVF	r0x1028,W
	MOVWF	STK06
	MOVF	r0x1027,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102B,W
	MOVWF	STK03
	MOVF	r0x102E,W
	MOVWF	STK02
	MOVF	r0x102D,W
	MOVWF	STK01
	MOVF	r0x1032,W
	MOVWF	STK00
	MOVF	r0x1031,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x102B
	MOVWF	r0x102B
	MOVF	STK00,W
	MOVWF	r0x102C
	MOVF	STK01,W
	MOVWF	r0x1027
	MOVF	STK02,W
	MOVWF	r0x1028
	MOVWF	STK06
	MOVF	r0x1027,W
	MOVWF	STK05
	MOVF	r0x102C,W
	MOVWF	STK04
	MOVF	r0x102B,W
	MOVWF	STK03
	MOVF	r0x1025,W
	MOVWF	STK02
	MOVF	r0x1024,W
	MOVWF	STK01
	MOVF	r0x1023,W
	MOVWF	STK00
	MOVF	r0x1022,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1022
	MOVWF	r0x1022
	MOVF	STK00,W
	MOVWF	r0x1023
	MOVF	STK01,W
	MOVWF	r0x1024
	MOVF	STK02,W
	MOVWF	r0x1025
;	.line	96; "lib/format.c"	fn((char)('0' + digit));
	MOVF	r0x1030,W
	MOVWF	r0x1028
	MOVLW	0x30
	ADDWF	r0x1028,W
	MOVWF	r0x1030
	MOVWF	r0x1028
	CALL	_00226_DS_
	PAGESEL	_00227_DS_
	GOTO	_00227_DS_
_00226_DS_:
	BANKSEL	r0x1020
	MOVF	r0x1020,W
	BANKSEL	PCLATH
	MOVWF	PCLATH
	BANKSEL	r0x1021
	MOVF	r0x1021,W
	BANKSEL	PCL
	MOVWF	PCL
_00227_DS_:
;	.line	97; "lib/format.c"	if(m == 0)
	BANKSEL	r0x1029
	MOVF	r0x1029,W
	IORWF	r0x102A,W
	BTFSS	STATUS,2
	GOTO	_00207_DS_
;	.line	98; "lib/format.c"	fn('.');
	CALL	_00228_DS_
	PAGESEL	_00207_DS_
	GOTO	_00207_DS_
_00228_DS_:
	BANKSEL	r0x1020
	MOVF	r0x1020,W
	BANKSEL	PCLATH
	MOVWF	PCLATH
	BANKSEL	r0x1021
	MOVF	r0x1021,W
	BANKSEL	PCL
	MOVWF	PCL
_00207_DS_:
;	.line	99; "lib/format.c"	m--;
	MOVLW	0xff
	BANKSEL	r0x102A
	ADDWF	r0x102A,F
	BTFSS	STATUS,0
	DECF	r0x1029,F
	GOTO	_00208_DS_
_00211_DS_:
;	.line	101; "lib/format.c"	}
	RETURN	
; exit point of _format_double

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _log10f
;   ___fs2sint
;   ___fslt
;   ___sint2fs
;   _powf
;   ___fsdiv
;   _floorf
;   ___fs2uchar
;   ___uchar2fs
;   ___fsmul
;   ___fssub
;   _00198_DS_
;   _00200_DS_
;   _log10f
;   ___fs2sint
;   ___fslt
;   ___sint2fs
;   _powf
;   ___fsdiv
;   _floorf
;   ___fs2uchar
;   ___uchar2fs
;   ___fsmul
;   ___fssub
;   _00198_DS_
;   _00200_DS_
;24 compiler assigned registers:
;   r0x1033
;   STK00
;   r0x1034
;   STK01
;   r0x1035
;   STK02
;   r0x1036
;   STK03
;   r0x1037
;   STK04
;   r0x1038
;   r0x1039
;   r0x103A
;   r0x103B
;   r0x103C
;   STK06
;   STK05
;   r0x103D
;   r0x103E
;   r0x103F
;   r0x1040
;   r0x1041
;   r0x1042
;   r0x1043
;; Starting pCode block
S_format__format_float	code
_format_float:
; 2 exit points
;	.line	68; "lib/format.c"	format_float(putch_t fn, float num) {
	BANKSEL	r0x1033
	MOVWF	r0x1033
	MOVF	STK00,W
	MOVWF	r0x1034
	MOVF	STK01,W
	MOVWF	r0x1035
	MOVF	STK02,W
	MOVWF	r0x1036
	MOVF	STK03,W
	MOVWF	r0x1037
	MOVF	STK04,W
;	.line	69; "lib/format.c"	short m = (int)log10f(num);
	MOVWF	r0x1038
	MOVWF	STK02
	MOVF	r0x1037,W
	MOVWF	STK01
	MOVF	r0x1036,W
	MOVWF	STK00
	MOVF	r0x1035,W
	PAGESEL	_log10f
	CALL	_log10f
	PAGESEL	$
	BANKSEL	r0x1039
	MOVWF	r0x1039
	MOVF	STK00,W
	MOVWF	r0x103A
	MOVF	STK01,W
	MOVWF	r0x103B
	MOVF	STK02,W
	MOVWF	r0x103C
	MOVWF	STK02
	MOVF	r0x103B,W
	MOVWF	STK01
	MOVF	r0x103A,W
	MOVWF	STK00
	MOVF	r0x1039,W
	PAGESEL	___fs2sint
	CALL	___fs2sint
	PAGESEL	$
	BANKSEL	r0x1039
	MOVWF	r0x1039
	MOVWF	r0x103B
	MOVF	STK00,W
	MOVWF	r0x103C
	MOVWF	r0x103A
;;112	MOVF	r0x103B,W
_00180_DS_:
;	.line	73; "lib/format.c"	while(num > 0 + FLT_EPSILON) {
	BANKSEL	r0x1038
	MOVF	r0x1038,W
	MOVWF	STK06
	MOVF	r0x1037,W
	MOVWF	STK05
	MOVF	r0x1036,W
	MOVWF	STK04
	MOVF	r0x1035,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x00
	MOVWF	STK00
	MOVLW	0x34
	PAGESEL	___fslt
	CALL	___fslt
	PAGESEL	$
	BANKSEL	r0x103C
	MOVWF	r0x103C
	MOVF	r0x103C,W
	BTFSC	STATUS,2
	GOTO	_00183_DS_
;	.line	74; "lib/format.c"	float weight = pow(10.0l, m);
	MOVF	r0x103A,W
	MOVWF	STK00
	MOVF	r0x1039,W
	PAGESEL	___sint2fs
	CALL	___sint2fs
	PAGESEL	$
	BANKSEL	r0x103D
	MOVWF	r0x103D
	MOVF	STK00,W
	MOVWF	r0x103E
	MOVF	STK01,W
	MOVWF	r0x103B
	MOVF	STK02,W
	MOVWF	r0x103C
	MOVWF	STK06
	MOVF	r0x103B,W
	MOVWF	STK05
	MOVF	r0x103E,W
	MOVWF	STK04
	MOVF	r0x103D,W
	MOVWF	STK03
	MOVLW	0x00
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVLW	0x20
	MOVWF	STK00
	MOVLW	0x41
	PAGESEL	_powf
	CALL	_powf
	PAGESEL	$
	BANKSEL	r0x103D
	MOVWF	r0x103D
	MOVF	STK00,W
	MOVWF	r0x103E
	MOVF	STK01,W
	MOVWF	r0x103B
	MOVF	STK02,W
;	.line	75; "lib/format.c"	digit = (char)floor(num / weight);
	MOVWF	r0x103C
	MOVWF	STK06
	MOVF	r0x103B,W
	MOVWF	STK05
	MOVF	r0x103E,W
	MOVWF	STK04
	MOVF	r0x103D,W
	MOVWF	STK03
	MOVF	r0x1038,W
	MOVWF	STK02
	MOVF	r0x1037,W
	MOVWF	STK01
	MOVF	r0x1036,W
	MOVWF	STK00
	MOVF	r0x1035,W
	PAGESEL	___fsdiv
	CALL	___fsdiv
	PAGESEL	$
	BANKSEL	r0x103F
	MOVWF	r0x103F
	MOVF	STK00,W
	MOVWF	r0x1040
	MOVF	STK01,W
	MOVWF	r0x1041
	MOVF	STK02,W
	MOVWF	r0x1042
	MOVWF	STK02
	MOVF	r0x1041,W
	MOVWF	STK01
	MOVF	r0x1040,W
	MOVWF	STK00
	MOVF	r0x103F,W
	PAGESEL	_floorf
	CALL	_floorf
	PAGESEL	$
	BANKSEL	r0x103F
	MOVWF	r0x103F
	MOVF	STK00,W
	MOVWF	r0x1040
	MOVF	STK01,W
	MOVWF	r0x1041
	MOVF	STK02,W
	MOVWF	r0x1042
	MOVWF	STK02
	MOVF	r0x1041,W
	MOVWF	STK01
	MOVF	r0x1040,W
	MOVWF	STK00
	MOVF	r0x103F,W
	PAGESEL	___fs2uchar
	CALL	___fs2uchar
	PAGESEL	$
;	.line	76; "lib/format.c"	num -= (digit * weight);
	BANKSEL	r0x1042
	MOVWF	r0x1042
	PAGESEL	___uchar2fs
	CALL	___uchar2fs
	PAGESEL	$
	BANKSEL	r0x1043
	MOVWF	r0x1043
	MOVF	STK00,W
	MOVWF	r0x103F
	MOVF	STK01,W
	MOVWF	r0x1040
	MOVF	STK02,W
	MOVWF	r0x1041
	MOVF	r0x103C,W
	MOVWF	STK06
	MOVF	r0x103B,W
	MOVWF	STK05
	MOVF	r0x103E,W
	MOVWF	STK04
	MOVF	r0x103D,W
	MOVWF	STK03
	MOVF	r0x1041,W
	MOVWF	STK02
	MOVF	r0x1040,W
	MOVWF	STK01
	MOVF	r0x103F,W
	MOVWF	STK00
	MOVF	r0x1043,W
	PAGESEL	___fsmul
	CALL	___fsmul
	PAGESEL	$
	BANKSEL	r0x103D
	MOVWF	r0x103D
	MOVF	STK00,W
	MOVWF	r0x103E
	MOVF	STK01,W
	MOVWF	r0x103B
	MOVF	STK02,W
	MOVWF	r0x103C
	MOVWF	STK06
	MOVF	r0x103B,W
	MOVWF	STK05
	MOVF	r0x103E,W
	MOVWF	STK04
	MOVF	r0x103D,W
	MOVWF	STK03
	MOVF	r0x1038,W
	MOVWF	STK02
	MOVF	r0x1037,W
	MOVWF	STK01
	MOVF	r0x1036,W
	MOVWF	STK00
	MOVF	r0x1035,W
	PAGESEL	___fssub
	CALL	___fssub
	PAGESEL	$
	BANKSEL	r0x1035
	MOVWF	r0x1035
	MOVF	STK00,W
	MOVWF	r0x1036
	MOVF	STK01,W
	MOVWF	r0x1037
	MOVF	STK02,W
	MOVWF	r0x1038
;	.line	77; "lib/format.c"	fn('0' + digit);
	MOVF	r0x1042,W
	MOVWF	r0x103C
	MOVLW	0x30
	ADDWF	r0x103C,W
	MOVWF	r0x1042
	CALL	_00198_DS_
	PAGESEL	_00199_DS_
	GOTO	_00199_DS_
_00198_DS_:
	BANKSEL	r0x1033
	MOVF	r0x1033,W
	BANKSEL	PCLATH
	MOVWF	PCLATH
	BANKSEL	r0x1034
	MOVF	r0x1034,W
	BANKSEL	PCL
	MOVWF	PCL
_00199_DS_:
;	.line	78; "lib/format.c"	if(m == 0)
	BANKSEL	r0x1039
	MOVF	r0x1039,W
	IORWF	r0x103A,W
	BTFSS	STATUS,2
	GOTO	_00179_DS_
;	.line	79; "lib/format.c"	fn('.');
	CALL	_00200_DS_
	PAGESEL	_00179_DS_
	GOTO	_00179_DS_
_00200_DS_:
	BANKSEL	r0x1033
	MOVF	r0x1033,W
	BANKSEL	PCLATH
	MOVWF	PCLATH
	BANKSEL	r0x1034
	MOVF	r0x1034,W
	BANKSEL	PCL
	MOVWF	PCL
_00179_DS_:
;	.line	80; "lib/format.c"	m--;
	MOVLW	0xff
	BANKSEL	r0x103A
	ADDWF	r0x103A,F
	BTFSS	STATUS,0
	DECF	r0x1039,F
	GOTO	_00180_DS_
_00183_DS_:
;	.line	82; "lib/format.c"	}
	RETURN	
; exit point of _format_float

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _00170_DS_
;   _00172_DS_
;   _format_number
;   _format_number
;   _00170_DS_
;   _00172_DS_
;   _format_number
;   _format_number
;21 compiler assigned registers:
;   r0x1055
;   STK00
;   r0x1056
;   STK01
;   r0x1057
;   STK02
;   r0x1058
;   STK03
;   r0x1059
;   STK04
;   r0x105A
;   r0x105B
;   r0x105C
;   r0x105D
;   r0x105E
;   r0x105F
;   r0x1060
;   STK07
;   STK06
;   STK05
;   r0x1061
;; Starting pCode block
S_format__format_xint32	code
_format_xint32:
; 2 exit points
;	.line	60; "lib/format.c"	format_xint32(putch_t fn, /*putchar_fn* putchar,*/ uint32_t x) {
	BANKSEL	r0x1055
	MOVWF	r0x1055
	MOVF	STK00,W
	MOVWF	r0x1056
	MOVF	STK01,W
	MOVWF	r0x1057
	MOVF	STK02,W
	MOVWF	r0x1058
	MOVF	STK03,W
	MOVWF	r0x1059
	MOVF	STK04,W
	MOVWF	r0x105A
;	.line	61; "lib/format.c"	fn('0');
	CALL	_00170_DS_
	PAGESEL	_00171_DS_
	GOTO	_00171_DS_
_00170_DS_:
	BANKSEL	r0x1055
	MOVF	r0x1055,W
	BANKSEL	PCLATH
	MOVWF	PCLATH
	BANKSEL	r0x1056
	MOVF	r0x1056,W
	BANKSEL	PCL
	MOVWF	PCL
_00171_DS_:
;	.line	62; "lib/format.c"	fn('x');
	CALL	_00172_DS_
	PAGESEL	_00173_DS_
	GOTO	_00173_DS_
_00172_DS_:
	BANKSEL	r0x1055
	MOVF	r0x1055,W
	BANKSEL	PCLATH
	MOVWF	PCLATH
	BANKSEL	r0x1056
	MOVF	r0x1056,W
	BANKSEL	PCL
	MOVWF	PCL
;;114	MOVF	r0x1058,W
;;116	MOVF	r0x1057,W
;;1	CLRF	r0x105D
;;1	CLRF	r0x105E
;;101	MOVF	r0x105B,W
;;99	MOVWF	r0x105F
;;104	MOVF	r0x105C,W
;;102	MOVWF	r0x1060
_00173_DS_:
;	.line	63; "lib/format.c"	format_number(fn, (uint16_t)(x >> 16), 16, -4);
	MOVLW	0xfc
	MOVWF	STK07
	MOVLW	0x10
	MOVWF	STK06
;;100	MOVF	r0x105F,W
;;113	MOVF	r0x105B,W
	BANKSEL	r0x1058
	MOVF	r0x1058,W
	MOVWF	r0x105B
	MOVWF	STK05
;;103	MOVF	r0x1060,W
;;115	MOVF	r0x105C,W
	MOVF	r0x1057,W
	MOVWF	r0x105C
	MOVWF	STK04
	MOVF	r0x1056,W
	MOVWF	STK03
	MOVF	r0x1055,W
	MOVWF	STK02
	MOVLW	0x78
	MOVWF	STK01
	MOVLW	0x30
	MOVWF	STK00
	MOVF	r0x1061,W
	PAGESEL	_format_number
	CALL	_format_number
	PAGESEL	$
;;109	MOVF	r0x105A,W
;;111	MOVF	r0x1059,W
;	.line	64; "lib/format.c"	format_number(fn, (uint16_t)(x & 0xffff), 16, -4);
	MOVLW	0xfc
	MOVWF	STK04
	MOVLW	0x10
	MOVWF	STK03
;;108	MOVF	r0x105B,W
	BANKSEL	r0x105A
	MOVF	r0x105A,W
	MOVWF	r0x105B
	MOVWF	STK02
;;110	MOVF	r0x105C,W
	MOVF	r0x1059,W
	MOVWF	r0x105C
	MOVWF	STK01
	MOVF	r0x1056,W
	MOVWF	STK00
	MOVF	r0x1055,W
	PAGESEL	_format_number
	CALL	_format_number
	PAGESEL	$
;	.line	65; "lib/format.c"	}
	RETURN	
; exit point of _format_xint32

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   __moduint
;   __divuint
;   _buffer_putch
;   _00162_DS_
;   __moduint
;   __divuint
;   _buffer_putch
;   _00162_DS_
;22 compiler assigned registers:
;   r0x1044
;   STK00
;   r0x1045
;   STK01
;   r0x1046
;   STK02
;   r0x1047
;   STK03
;   r0x1048
;   STK04
;   r0x1049
;   r0x104A
;   r0x1061
;   r0x104C
;   r0x104D
;   r0x104E
;   r0x104F
;   r0x1050
;   r0x1051
;   r0x1052
;   r0x1053
;   r0x1054
;; Starting pCode block
S_format__format_number	code
_format_number:
; 2 exit points
;	.line	26; "lib/format.c"	format_number(putch_t fn, uint16_t n, uint8_t base, int8_t pad /*, int8_t pointpos*/) {
	BANKSEL	r0x1044
	MOVWF	r0x1044
	MOVF	STK00,W
	MOVWF	r0x1045
	MOVF	STK01,W
	MOVWF	r0x1046
	MOVF	STK02,W
	MOVWF	r0x1047
	MOVF	STK03,W
	MOVWF	r0x1048
	MOVF	STK04,W
	MOVWF	r0x1049
;	.line	30; "lib/format.c"	char padchar = ' ';
	MOVLW	0x20
	MOVWF	r0x104A
;;signed compare: left < lit(0x0=0), size=1, mask=ff
;	.line	32; "lib/format.c"	if(pad < 0) {
	BSF	STATUS,0
	BTFSS	r0x1049,7
	BCF	STATUS,0
	BTFSS	STATUS,0
	GOTO	_00127_DS_
;;genSkipc:3307: created from rifx:0x7ffce255c880
;	.line	33; "lib/format.c"	pad = -pad;
	COMF	r0x1049,F
	INCF	r0x1049,F
;	.line	34; "lib/format.c"	padchar = '0';
	MOVLW	0x30
	MOVWF	r0x104A
_00127_DS_:
;	.line	42; "lib/format.c"	do {
	BANKSEL	r0x1061
	CLRF	r0x1061
;;106	MOVF	r0x1048,W
_00111_DS_:
;	.line	46; "lib/format.c"	di = n % base;
	BANKSEL	r0x104D
	CLRF	r0x104D
;;105	MOVF	r0x104C,W
	MOVF	r0x1048,W
	MOVWF	r0x104C
	MOVWF	STK02
	MOVLW	0x00
	MOVWF	STK01
	MOVF	r0x1047,W
	MOVWF	STK00
	MOVF	r0x1046,W
	PAGESEL	__moduint
	CALL	__moduint
	PAGESEL	$
;;1	MOVWF	r0x104E
	MOVF	STK00,W
	BANKSEL	r0x104F
	MOVWF	r0x104F
	MOVWF	r0x1050
;	.line	47; "lib/format.c"	buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
	MOVF	r0x1061,W
	MOVWF	r0x1051
	MOVWF	r0x104F
	INCF	r0x1061,F
;;107	MOVF	r0x104F,W
	CLRF	r0x1052
	BTFSC	r0x1051,7
	DECF	r0x1052,F
	MOVF	r0x1051,W
	ADDLW	(_format_number_buf_65536_38 + 0)
	MOVWF	r0x1051
	MOVLW	high (_format_number_buf_65536_38 + 0)
	MOVWF	r0x104F
	MOVF	r0x1052,W
	BTFSC	STATUS,0
	INCFSZ	r0x1052,W
	ADDWF	r0x104F,F
;;unsigned compare: left < lit(0xA=10), size=1
	MOVLW	0x0a
	SUBWF	r0x1050,W
	BTFSC	STATUS,0
	GOTO	_00123_DS_
;;genSkipc:3307: created from rifx:0x7ffce255c880
	MOVLW	0x30
	ADDWF	r0x1050,W
	MOVWF	r0x1052
	GOTO	_00124_DS_
_00123_DS_:
	BANKSEL	r0x1050
	MOVF	r0x1050,W
	MOVWF	r0x1053
	MOVLW	0x37
	ADDWF	r0x1053,W
	MOVWF	r0x1052
_00124_DS_:
	BANKSEL	r0x1051
	MOVF	r0x1051,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x104F
	BTFSC	r0x104F,0
	BSF	STATUS,7
	MOVF	r0x1052,W
	BANKSEL	INDF
	MOVWF	INDF
;	.line	49; "lib/format.c"	n /= base;
	BANKSEL	r0x104C
	MOVF	r0x104C,W
	MOVWF	STK02
	MOVF	r0x104D,W
	MOVWF	STK01
	MOVF	r0x1047,W
	MOVWF	STK00
	MOVF	r0x1046,W
	PAGESEL	__divuint
	CALL	__divuint
	PAGESEL	$
	BANKSEL	r0x1046
	MOVWF	r0x1046
	MOVF	STK00,W
;	.line	50; "lib/format.c"	} while(n > 0);
	MOVWF	r0x1047
	IORWF	r0x1046,W
	BTFSS	STATUS,2
	GOTO	_00111_DS_
;	.line	52; "lib/format.c"	while(pad-- > i) buffer_putch(padchar);
	MOVF	r0x1061,W
	MOVWF	r0x1047
	MOVF	r0x1049,W
	MOVWF	r0x1046
_00114_DS_:
	BANKSEL	r0x1047
	MOVF	r0x1047,W
	ADDLW	0x80
	MOVWF	r0x1054
	MOVF	r0x1046,W
	ADDLW	0x80
	SUBWF	r0x1054,W
	BTFSC	STATUS,0
	GOTO	_00116_DS_
;;genSkipc:3307: created from rifx:0x7ffce255c880
	DECF	r0x1046,F
	MOVF	r0x104A,W
	PAGESEL	_buffer_putch
	CALL	_buffer_putch
	PAGESEL	$
	GOTO	_00114_DS_
_00116_DS_:
;	.line	54; "lib/format.c"	for(unsigned j = 0; j < i; j++) (*fn)(buf[j]);
	BANKSEL	r0x1046
	CLRF	r0x1046
	CLRF	r0x1048
_00119_DS_:
	BANKSEL	r0x1047
	MOVF	r0x1047,W
	MOVWF	r0x1049
	CLRF	r0x104A
	BTFSC	r0x1049,7
	DECF	r0x104A,F
	MOVF	r0x104A,W
	SUBWF	r0x1048,W
	BTFSS	STATUS,2
	GOTO	_00161_DS_
	MOVF	r0x1049,W
	SUBWF	r0x1046,W
_00161_DS_:
	BTFSC	STATUS,0
	GOTO	_00121_DS_
;;genSkipc:3307: created from rifx:0x7ffce255c880
	BANKSEL	r0x1046
	MOVF	r0x1046,W
	ADDLW	(_format_number_buf_65536_38 + 0)
	MOVWF	r0x1049
	MOVLW	high (_format_number_buf_65536_38 + 0)
	MOVWF	r0x104A
	MOVF	r0x1048,W
	BTFSC	STATUS,0
	INCFSZ	r0x1048,W
	ADDWF	r0x104A,F
	MOVF	r0x1049,W
	BANKSEL	FSR
	MOVWF	FSR
	BCF	STATUS,7
	BANKSEL	r0x104A
	BTFSC	r0x104A,0
	BSF	STATUS,7
	BANKSEL	INDF
	MOVF	INDF,W
	BANKSEL	r0x1061
	MOVWF	r0x1061
	CALL	_00162_DS_
	PAGESEL	_00163_DS_
	GOTO	_00163_DS_
_00162_DS_:
	BANKSEL	r0x1044
	MOVF	r0x1044,W
	BANKSEL	PCLATH
	MOVWF	PCLATH
	BANKSEL	r0x1045
	MOVF	r0x1045,W
	BANKSEL	PCL
	MOVWF	PCL
_00163_DS_:
	BANKSEL	r0x1046
	INCF	r0x1046,F
	BTFSC	STATUS,2
	INCF	r0x1048,F
	GOTO	_00119_DS_
_00121_DS_:
;	.line	56; "lib/format.c"	}
	RETURN	
; exit point of _format_number

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
S_format__format_putchar	code
_format_putchar:
; 2 exit points
;	.line	20; "lib/format.c"	}
	RETURN	
; exit point of _format_putchar


;	code size estimation:
;	  638+  142 =   780 instructions ( 1844 byte)

	end

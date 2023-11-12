pcode dump


	New pBlock

code, dbName =C
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=29previous max_key=25 
S_buffer__buffer_puts	code
_buffer_puts:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1059, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	.line	61; "lib/buffer.c"	buffer_puts(const char* x) {
	MOVWF	r0x1018
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105A 
	MOVWF	r0x1019
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	MOVWF	r0x101A
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6299:genGenPointerGet *{*
;; ***	genGenPointerGet  6300
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;; 	line = 6305 result AOP_REG=r0x105C, size=1, left AOP_REG=r0x1059, size=3, right -=-, size=0
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1059 
_00159_DS_:
	.line	62; "lib/buffer.c"	while(*x) {
	MOVF	r0x101A,W
;; >>> ../../../../src/pic14/gen.c:6042:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
	MOVF	r0x1019,W
;; >>> ../../../../src/pic14/gen.c:6044:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105B 
	MOVF	r0x1018,W
;; >>> ../../../../src/pic14/gen.c:1445:call_libraryfunc
	PAGESEL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1447:call_libraryfunc
;;	popGetExternal 990 added symbol __gptrget1
	CALL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1449:call_libraryfunc
	PAGESEL	$
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105C 
	MOVWF	r0x101B
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6991:genIfx *{*
;; ***	genIfx  6992
;;	708 register type nRegs=1
;; ***	pic14_toBoolean  1515
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	MOVF	r0x101B,W
;; >>> ../../../../src/pic14/gen.c:7045:genIfx
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/gen.c:7046:genIfx
;; ***	popGetLabel  key=3, label offset 58
	GOTO	_00161_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
	.line	63; "lib/buffer.c"	buffer_putch(*x);
	MOVF	r0x101B,W
;; >>> ../../../../src/pic14/gen.c:2207:genCall
	PAGESEL	_buffer_putch
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_buffer_putch
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=3
;;	589
;; 	line = 714 result AOP_REG=r0x1059, size=3, left AOP_REG=r0x1059, size=3, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1059 
	.line	64; "lib/buffer.c"	++x;
	INCF	r0x101A,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x105A 
	INCF	r0x1019,F
;; >>> ../../../../src/pic14/genarith.c:189:genPlusIncr
	BTFSC	STATUS,2
;; >>> ../../../../src/pic14/genarith.c:190:genPlusIncr
;;	1126 rIdx = r0x105B 
	INCF	r0x1018,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=1, label offset 58
	GOTO	_00159_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
_00161_DS_:
	.line	66; "lib/buffer.c"	return 0;
	MOVLW	0x00
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	67; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_puts

	New pBlock

code, dbName =C
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=25previous max_key=0 
S_buffer__buffer_put	code
_buffer_put:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=3
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104D, size=3, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104F 
	.line	44; "lib/buffer.c"	buffer_put(const char* buf, len_t len) {
	MOVWF	r0x101C
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104E 
	MOVWF	r0x101D
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104D 
	MOVWF	r0x101E
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1050, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1050 
	MOVWF	r0x101F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;; >>> ../../../../src/pic14/gen.c:6012:emitPtrGet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	.line	46; "lib/buffer.c"	if(len > BUFFER_SIZE - buffer.n) // doesn't fit
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6014:emitPtrGet
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1051 
	MOVWF	r0x1020
;;	1126 rIdx = r0x1051 
;;; ../../../../src/pic14/gen.c:5140:AccRsh *{*
;; ***	AccRsh  5141
;; >>> ../../../../src/pic14/gen.c:5186:AccRsh
	SWAPF	r0x1020,F
;; >>> ../../../../src/pic14/gen.c:5222:AccRsh
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5223:AccRsh
	ANDWF	r0x1020,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x1052, size=2, left -=-, size=0, right AOP_REG=r0x1051, size=1
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1126 rIdx = r0x1051 
	MOVF	r0x1020,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1021
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1053 
	CLRF	r0x1022
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	result AOP_REG, left AOP_LIT, right AOP_REG
;; left is lit	line 1242 result AOP_REG, left AOP_LIT, right AOP_REG
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1052 
	MOVF	r0x1021,W
;; >>> ../../../../src/pic14/genarith.c:1281:genMinus
	SUBLW	0x10
;; >>> ../../../../src/pic14/genarith.c:1282:genMinus
;;	1126 rIdx = r0x1051 
	MOVWF	r0x1020
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
	MOVF	r0x1022,W
;; >>> ../../../../src/pic14/genarith.c:1384:genMinus
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1385:genMinus
;;	1126 rIdx = r0x1053 
	INCF	r0x1022,W
;; >>> ../../../../src/pic14/genarith.c:1388:genMinus
	SUBLW	0x00
;; >>> ../../../../src/pic14/genarith.c:1389:genMinus
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1023
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x1052, size=2, left -=-, size=0, right AOP_REG=r0x1050, size=1
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1126 rIdx = r0x1050 
	MOVF	r0x101F,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1021
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1053 
	CLRF	r0x1022
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1054 
	MOVF	r0x1023,W
;; >>> ../../../../src/pic14/gen.c:3522:genCmp
	ADDLW	0x80
;; >>> ../../../../src/pic14/gen.c:3523:genCmp
	MOVWF	r0x1024
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
	MOVF	r0x1022,W
;; >>> ../../../../src/pic14/gen.c:3525:genCmp
	ADDLW	0x80
;; >>> ../../../../src/pic14/gen.c:3526:genCmp
	SUBWF	r0x1024,W
;; >>> ../../../../src/pic14/gen.c:3537:genCmp
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3545:genCmp
;; ***	popGetLabel  key=22, label offset 29
	GOTO	_00151_DS_
;; >>> ../../../../src/pic14/gen.c:3329:pic14_mov2w_regOrLit
;;	1126 rIdx = r0x1052 
	MOVF	r0x1021,W
;; >>> ../../../../src/pic14/gen.c:3549:genCmp
;;	1126 rIdx = r0x1051 
	SUBWF	r0x1020,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3302:genSkipc
_00151_DS_:
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=11, label offset 29
	GOTO	_00140_DS_
;;genSkipc:3307: created from rifx:0x7ffd22711a30
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	47; "lib/buffer.c"	return -1;
	MOVLW	0xff
;; >>> ../../../../src/pic14/gen.c:2751:genRet
;; ***	popGetLabel  key=7, label offset 29
	GOTO	_00136_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7159:genAssign *{*
;; ***	genAssign  7160
;;	708 register type nRegs=1
;; 	line = 7169 result AOP_REG=r0x1051, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7253
;; >>> ../../../../src/pic14/gen.c:7265:genAssign
;;	1126 rIdx = r0x1051 
_00140_DS_:
	.line	48; "lib/buffer.c"	for(i = 0; i < len; i++) buffer.x[buffer.n + i] = buf[i];
	CLRF	r0x1020
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:3652:genCmpLt *{*
;; ***	genCmpLt  3653
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:3354:genCmp *{*
;; >>> ../../../../src/pic14/gen.c:3329:pic14_mov2w_regOrLit
;;	1126 rIdx = r0x1050 
_00134_DS_:
	MOVF	r0x101F,W
;; >>> ../../../../src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1051 
	SUBWF	r0x1020,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=3, label offset 29
	GOTO	_00132_DS_
;;genSkipc:3307: created from rifx:0x7ffd22711a30
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;; >>> ../../../../src/pic14/gen.c:6012:emitPtrGet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6014:emitPtrGet
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1021
;;	1126 rIdx = r0x1052 
;;; ../../../../src/pic14/gen.c:5140:AccRsh *{*
;; ***	AccRsh  5141
;; >>> ../../../../src/pic14/gen.c:5186:AccRsh
	SWAPF	r0x1021,F
;; >>> ../../../../src/pic14/gen.c:5222:AccRsh
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5223:AccRsh
	ANDWF	r0x1021,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1053, size=1, left -=-, size=0, right AOP_REG=r0x1052, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1052 
	MOVF	r0x1021,W
;; >>> ../../../../src/pic14/gen.c:7529:genCast
;;	1126 rIdx = r0x1053 
	MOVWF	r0x1022
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1052, size=1, left -=-, size=0, right AOP_REG=r0x1051, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1051 
	MOVF	r0x1020,W
	MOVWF	r0x1021
	ADDWF	r0x1022,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 0, const = 0
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer
;; 	line = 714 result AOP_REG=r0x1053, size=2, left AOP_PCODE=_buffer, size=2, right AOP_REG=r0x1053, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_PCODE, right AOP_REG
;; ***	genPlus  814
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x1053 
	MOVF	r0x1022,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
	ADDLW	(_buffer + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x1053 
	MOVWF	r0x1022
;; >>> ../../../../src/pic14/genarith.c:981:genPlus
	BTFSS	r0x1022,7
;; >>> ../../../../src/pic14/genarith.c:982:genPlus
;; ***	popGetLabel  key=24, label offset 29
	GOTO	_00153_DS_
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_buffer + 0)
;; >>> ../../../../src/pic14/genarith.c:987:genPlus
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:988:genPlus
	ADDLW	0xff
;; >>> ../../../../src/pic14/genarith.c:989:genPlus
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1021
;; >>> ../../../../src/pic14/genarith.c:994:genPlus
;; ***	popGetLabel  key=25, label offset 29
	GOTO	_00154_DS_
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
_00153_DS_:
	MOVLW	high (_buffer + 0)
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1021
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;;	708 register type nRegs=3
;; 	line = 714 result AOP_REG=r0x1054, size=3, left AOP_REG=r0x104D, size=3, right AOP_REG=r0x1051, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  814
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x1051 
_00154_DS_:
	MOVF	r0x1020,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
;;	1126 rIdx = r0x104D 
	ADDWF	r0x101E,W
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1023
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104E 
	MOVF	r0x101D,W
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x1055 
	MOVWF	r0x1024
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104F 
	MOVF	r0x101C,W
;; >>> ../../../../src/pic14/genarith.c:1024:genPlus
;;	1126 rIdx = r0x1056 
	MOVWF	r0x1025
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6299:genGenPointerGet *{*
;; ***	genGenPointerGet  6300
;;	708 register type nRegs=3
;;	708 register type nRegs=1
;; 	line = 6305 result AOP_REG=r0x1057, size=1, left AOP_REG=r0x1054, size=3, right -=-, size=0
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1054 
	MOVF	r0x1023,W
;; >>> ../../../../src/pic14/gen.c:6042:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
	MOVF	r0x1024,W
;; >>> ../../../../src/pic14/gen.c:6044:emitPtrGet
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=2
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1056 
	MOVF	r0x1025,W
;; >>> ../../../../src/pic14/gen.c:1445:call_libraryfunc
	PAGESEL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1447:call_libraryfunc
;;	popGetExternal 990 added symbol __gptrget1
;;	popGetExternal 1008 added extern __gptrget1
	CALL	__gptrget1
;; >>> ../../../../src/pic14/gen.c:1449:call_libraryfunc
	PAGESEL	$
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1057 
	MOVWF	r0x1026
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	708 register type nRegs=2
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;; 	line = 6855 result AOP_REG=r0x1053, size=2, left -=-, size=0, right AOP_REG=r0x1057, size=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
	MOVF	r0x1022,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BTFSC	r0x1021,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6605:emitPtrPut
;;	1126 rIdx = r0x1057 
	MOVF	r0x1026,W
;; >>> ../../../../src/pic14/gen.c:6606:emitPtrPut
	MOVWF	INDF
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	589
;; 	line = 714 result AOP_REG=r0x1051, size=1, left AOP_REG=r0x1051, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1051 
	INCF	r0x1020,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2820:genGoto *{*
;; >>> ../../../../src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=5, label offset 29
	GOTO	_00134_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;; >>> ../../../../src/pic14/gen.c:6012:emitPtrGet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
_00132_DS_:
	.line	49; "lib/buffer.c"	buffer.n += len;
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6014:emitPtrGet
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104D 
	MOVWF	r0x101E
;;	1126 rIdx = r0x104D 
;;; ../../../../src/pic14/gen.c:5140:AccRsh *{*
;; ***	AccRsh  5141
;; >>> ../../../../src/pic14/gen.c:5186:AccRsh
	SWAPF	r0x101E,F
;; >>> ../../../../src/pic14/gen.c:5222:AccRsh
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5223:AccRsh
	ANDWF	r0x101E,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x1050, size=1, left AOP_REG=r0x104D, size=1, right AOP_REG=r0x1050, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_REG
;; ***	genPlus  814
;; >>> ../../../../src/pic14/genarith.c:823:genPlus
;;	1126 rIdx = r0x1050 
	MOVF	r0x101F,W
;; >>> ../../../../src/pic14/genarith.c:832:genPlus
;;	1126 rIdx = r0x104D 
	ADDWF	r0x101E,W
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x1050 
	MOVWF	r0x101F
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:6498:emitPtrPut
	MOVWF	r0x1027
;;; ../../../../src/pic14/gen.c:5086:AccLsh *{*
;; ***	AccLsh  5087
;; >>> ../../../../src/pic14/gen.c:5109:AccLsh
	SWAPF	r0x1027,F
;; >>> ../../../../src/pic14/gen.c:5126:AccLsh
	MOVLW	0xf0
;; >>> ../../../../src/pic14/gen.c:5127:AccLsh
	ANDWF	r0x1027,F
;; >>> ../../../../src/pic14/gen.c:6537:emitPtrPut
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6547:emitPtrPut
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:6548:emitPtrPut
	IORWF	r0x1027,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVWF	(_buffer + 16)
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	50; "lib/buffer.c"	return 0;
	MOVLW	0x00
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00136_DS_:
	.line	51; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_put
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=12previous max_key=9 
S_buffer__buffer_putch	code
_buffer_putch:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104C, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104C 
	.line	39; "lib/buffer.c"	buffer_putch(char ch) {
	MOVWF	r0x1017
	.line	40; "lib/buffer.c"	buffer_putc(ch);
	PAGESEL	_buffer_putc
;; >>> ../../../../src/pic14/gen.c:2215:genCall
	CALL	_buffer_putc
;; >>> ../../../../src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	41; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_putch
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=8previous max_key=0 
S_buffer__buffer_putc	code
_buffer_putc:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7609:genReceive *{*
;; ***	genReceive  7610
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1046, size=1, right -=-, size=0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1046 
	.line	30; "lib/buffer.c"	buffer_putc(char ch) {
	MOVWF	r0x1011
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;; >>> ../../../../src/pic14/gen.c:6012:emitPtrGet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	.line	31; "lib/buffer.c"	if(BUFFER_SIZE - buffer.n <= 0)
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6014:emitPtrGet
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1012
;;	1126 rIdx = r0x1047 
;;; ../../../../src/pic14/gen.c:5140:AccRsh *{*
;; ***	AccRsh  5141
;; >>> ../../../../src/pic14/gen.c:5186:AccRsh
	SWAPF	r0x1012,F
;; >>> ../../../../src/pic14/gen.c:5222:AccRsh
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5223:AccRsh
	ANDWF	r0x1012,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; 	line = 7362 result AOP_REG=r0x1048, size=2, left -=-, size=0, right AOP_REG=r0x1047, size=1
;; >>> ../../../../src/pic14/gen.c:7549:genCast
;;	1126 rIdx = r0x1047 
	MOVF	r0x1012,W
;; >>> ../../../../src/pic14/gen.c:7550:genCast
;;	1126 rIdx = r0x1048 
	MOVWF	r0x1013
;; ***	addSign  1087
;;; ../../../../src/pic14/genarith.c:1088:addSign *{*
;; >>> ../../../../src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1049 
	CLRF	r0x1014
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7568:genDjnz *{*
;; ***	genDjnz  7569
;;; ../../../../src/pic14/genarith.c:1122:genMinus *{*
;; ***	genMinus  1123
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	result AOP_REG, left AOP_LIT, right AOP_REG
;; left is lit	line 1242 result AOP_REG, left AOP_LIT, right AOP_REG
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1013,W
;; >>> ../../../../src/pic14/genarith.c:1281:genMinus
	SUBLW	0x10
;; >>> ../../../../src/pic14/genarith.c:1282:genMinus
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1012
;; ***	mov2w  1395  offset=1
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	MOVF	r0x1014,W
;; >>> ../../../../src/pic14/genarith.c:1384:genMinus
	BTFSS	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1385:genMinus
;;	1126 rIdx = r0x1049 
	INCF	r0x1014,W
;; >>> ../../../../src/pic14/genarith.c:1388:genMinus
	SUBLW	0x00
;; >>> ../../../../src/pic14/genarith.c:1389:genMinus
;;	1126 rIdx = r0x104A 
	MOVWF	r0x1015
	ADDLW	0x80
;; >>> ../../../../src/pic14/gen.c:3515:genCmp
	ADDLW	0x80
;; >>> ../../../../src/pic14/gen.c:3537:genCmp
	BTFSS	STATUS,2
;; >>> ../../../../src/pic14/gen.c:3545:genCmp
;; ***	popGetLabel  key=9, label offset 12
	GOTO	_00121_DS_
;; >>> ../../../../src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	MOVLW	0x01
;; >>> ../../../../src/pic14/gen.c:3549:genCmp
;;	1126 rIdx = r0x1047 
	SUBWF	r0x1012,W
;;; ../../../../src/pic14/gen.c:3297:genSkipc *{*
;; >>> ../../../../src/pic14/gen.c:3302:genSkipc
_00121_DS_:
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=2, label offset 12
	GOTO	_00114_DS_
;;genSkipc:3307: created from rifx:0x7ffd22711a30
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	32; "lib/buffer.c"	return 0;
	MOVLW	0x00
;; >>> ../../../../src/pic14/gen.c:2751:genRet
;; ***	popGetLabel  key=3, label offset 12
	GOTO	_00115_DS_
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;; >>> ../../../../src/pic14/gen.c:6012:emitPtrGet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
_00114_DS_:
	.line	33; "lib/buffer.c"	buffer.x[buffer.n] = ch;
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6014:emitPtrGet
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1012
;;	1126 rIdx = r0x1047 
;;; ../../../../src/pic14/gen.c:5140:AccRsh *{*
;; ***	AccRsh  5141
;; >>> ../../../../src/pic14/gen.c:5186:AccRsh
	SWAPF	r0x1012,F
;; >>> ../../../../src/pic14/gen.c:5222:AccRsh
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5223:AccRsh
	ANDWF	r0x1012,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:7353:genCast *{*
;; ***	genCast  7354
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7362 result AOP_REG=r0x1048, size=1, left -=-, size=0, right AOP_REG=r0x1047, size=1
;; ***	genCast  7504
;; >>> ../../../../src/pic14/gen.c:7528:genCast
;;	1126 rIdx = r0x1047 
	MOVF	r0x1012,W
	MOVWF	r0x1013
	MOVWF	r0x1012
	ADDLW	(_buffer + 0)
;; >>> ../../../../src/pic14/genarith.c:833:genPlus
;;	1126 rIdx = r0x1048 
	MOVWF	r0x1013
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	MOVLW	high (_buffer + 0)
;; >>> ../../../../src/pic14/genarith.c:1006:genPlus
	BTFSC	STATUS,0
;; >>> ../../../../src/pic14/genarith.c:1007:genPlus
	ADDLW	0x01
;; >>> ../../../../src/pic14/genarith.c:1008:genPlus
;;	1126 rIdx = r0x1049 
	MOVWF	r0x1014
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	708 register type nRegs=2
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;; 	line = 6855 result AOP_REG=r0x1048, size=2, left -=-, size=0, right AOP_REG=r0x1046, size=1
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x1013,W
;; >>> ../../../../src/pic14/gen.c:5818:setup_fsr
	MOVWF	FSR
;;; ../../../../src/pic14/gen.c:5769:SetIrp *{*
;; >>> ../../../../src/pic14/gen.c:5796:SetIrp
	BCF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:5799:SetIrp
	BTFSC	r0x1014,0
;; >>> ../../../../src/pic14/gen.c:5800:SetIrp
	BSF	STATUS,7
;; >>> ../../../../src/pic14/gen.c:6605:emitPtrPut
;;	1126 rIdx = r0x1046 
	MOVF	r0x1011,W
;; >>> ../../../../src/pic14/gen.c:6606:emitPtrPut
	MOVWF	INDF
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6366:genPointerGet *{*
;; ***	genPointerGet  6367
;;; ../../../../src/pic14/gen.c:6252:genNearPointerGet *{*
;; ***	genNearPointerGet  6253
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerGet  6269
;;	708 register type nRegs=1
;;; ../../../../src/pic14/gen.c:6110:genUnpackBits *{*
;; ***	genUnpackBits  6111
;; >>> ../../../../src/pic14/gen.c:6012:emitPtrGet
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	.line	34; "lib/buffer.c"	buffer.n++;
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6014:emitPtrGet
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1046 
	MOVWF	r0x1011
;;	1126 rIdx = r0x1046 
;;; ../../../../src/pic14/gen.c:5140:AccRsh *{*
;; ***	AccRsh  5141
;; >>> ../../../../src/pic14/gen.c:5186:AccRsh
	SWAPF	r0x1011,F
;; >>> ../../../../src/pic14/gen.c:5222:AccRsh
	MOVLW	0x0f
;; >>> ../../../../src/pic14/gen.c:5223:AccRsh
	ANDWF	r0x1011,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;; ***	genPlus  707
;;; ../../../../src/pic14/genarith.c:708:genPlus *{*
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 714 result AOP_REG=r0x1046, size=1, left AOP_REG=r0x1046, size=1, right AOP_LIT=0x01, size=1
;;; ../../../../src/pic14/genarith.c:159:genPlusIncr *{*
;; ***	genPlusIncr  161
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; 	genPlusIncr  173
;; >>> ../../../../src/pic14/genarith.c:185:genPlusIncr
;;	1126 rIdx = r0x1046 
	INCF	r0x1011,F
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerSet  6853
;;	708 register type nRegs=1
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 16
;; 	line = 6855 result AOP_PCODE=(_buffer+16), size=2, left -=-, size=0, right AOP_REG=r0x1046, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;; ***	mov2w  1395  offset=0
;; >>> ../../../../src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1046 
	MOVF	r0x1011,W
;; >>> ../../../../src/pic14/gen.c:6497:emitPtrPut
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:6498:emitPtrPut
	MOVWF	r0x1016
;;; ../../../../src/pic14/gen.c:5086:AccLsh *{*
;; ***	AccLsh  5087
;; >>> ../../../../src/pic14/gen.c:5109:AccLsh
	SWAPF	r0x1016,F
;; >>> ../../../../src/pic14/gen.c:5126:AccLsh
	MOVLW	0xf0
;; >>> ../../../../src/pic14/gen.c:5127:AccLsh
	ANDWF	r0x1016,F
;; >>> ../../../../src/pic14/gen.c:6537:emitPtrPut
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6547:emitPtrPut
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:6548:emitPtrPut
	IORWF	r0x1016,W
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVWF	(_buffer + 16)
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	35; "lib/buffer.c"	return 1;
	MOVLW	0x01
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00115_DS_:
	.line	36; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_putc
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=4previous max_key=0 
S_buffer__buffer_flush	code
_buffer_flush:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 16
;; 	line = 6855 result AOP_PCODE=(_buffer+16), size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;; >>> ../../../../src/pic14/gen.c:6537:emitPtrPut
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	.line	25; "lib/buffer.c"	BUFFER_CLEAR();
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6541:emitPtrPut
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVWF	(_buffer + 16)
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVWF	(_buffer + 16)
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;; ../../../../src/pic14/gen.c:1357:mov2w_op *{*
;; >>> ../../../../src/pic14/gen.c:1375:mov2w_op
	.line	26; "lib/buffer.c"	return 0;
	MOVLW	0x00
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	27; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_flush
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=0previous max_key=0 
S_buffer__buffer_init	code
_buffer_init:
; 2 exit points
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:6918:genPointerSet *{*
;; ***	genPointerSet  6919
;;; ../../../../src/pic14/gen.c:6838:genNearPointerSet *{*
;; ***	genNearPointerSet  6839
;;	627
;;	aopForRemat 406
;;	432: rname _buffer, val 16, const = 0
;; ***	genNearPointerSet  6853
;;	837: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_buffer offset 16
;; 	line = 6855 result AOP_PCODE=(_buffer+16), size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; ../../../../src/pic14/gen.c:6656:genPackBits *{*
;; ***	genPackBits  6657
;; >>> ../../../../src/pic14/gen.c:6537:emitPtrPut
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	.line	11; "lib/buffer.c"	buffer.p = 0;
	MOVF	(_buffer + 16),W
;; >>> ../../../../src/pic14/gen.c:6541:emitPtrPut
	ANDLW	0xf0
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	.line	12; "lib/buffer.c"	buffer.n = 0;
	MOVWF	(_buffer + 16)
	ANDLW	0x0f
;; >>> ../../../../src/pic14/gen.c:1407:movwf
;;	popGet AOP_PCODE (PO_IMMEDIATE + 0) 1147 _buffer
	MOVWF	(_buffer + 16)
;; ***	genNearPointerSet  6872
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; ../../../../src/pic14/gen.c:2358:resultRemat *{*
;;; ../../../../src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	13; "lib/buffer.c"	}
	RETURN	
; exit point of _buffer_init
;;; ../../../../src/pic14/gen.c:7677:genpic14Code *{*

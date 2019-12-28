
	; Microchip MPLAB XC8 C Compiler V1.34
	; Copyright (C) 1984-2015 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=18F2450 -G \
	; -mdist/default/production/LC_meter_18f2450_xc8.X.production.map \
	; -DXPRJ_default=default --double=32 --float=24 --emi=wordwrite \
	; --opt=+asm,+asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro \
	; -D__XC=1 -D__18f2450=1 -DUSE_TIMER1=1 -DUSE_TIMER2=1 -DUSE_SER=1 \
	; -DUSE_HD44780_LCD=1 -DXTAL_FREQ=16000000 -DBAUD_RATE=38400 \
	; -DUSE_TIMER0=1 -DMCHP_XC8=1 -P -N255 -I../../../src -I../../../lib \
	; -I../../.. -v --warn=-3 --asmlist \
	; --summary=default,-psect,-class,+mem,-hex,-file \
	; --output=default,-inhx032 \
	; --runtime=default,+clear,+init,+keep,-no_startup,+download,+config,+clib,-plib \
	; --output=+mcof,-elf --stack=hybrid:auto:auto:auto \
	; --errformat=%f:%l: error: (%n) %s \
	; --warnformat=%f:%l: warning: (%n) %s \
	; --msgformat=%f:%l: advisory: (%n) %s --summary=+xml \
	; --summarydir=dist/default/production/memoryfile.xml \
	; -odist/default/production/LC_meter_18f2450_xc8.X.production.cof \
	; build/default/production/_ext/1386528437/print.p1 \
	; build/default/production/_ext/1386521430/ser.p1 \
	; build/default/production/_ext/1386521430/timer.p1 \
	; build/default/production/_ext/1386521430/format.p1 \
	; build/default/production/_ext/1386521430/lcd44780.p1 \
	; build/default/production/_ext/1386521430/buffer.p1 \
	; build/default/production/_ext/2124829536/LC-meter.p1 \
	; build/default/production/_ext/1386528437/measure.p1 --ccmode=cci
	;


	processor	18F2450

	GLOBAL	_main,start
	FNROOT	_main

	pic18cxx	equ	1

	psect	config,class=CONFIG,delta=1,noexec
	psect	idloc,class=IDLOC,delta=1,noexec
	psect	const,class=CODE,delta=1,reloc=2,noexec
	psect	smallconst,class=SMALLCONST,delta=1,reloc=2,noexec
	psect	mediumconst,class=MEDIUMCONST,delta=1,reloc=2,noexec
	psect	rbss,class=COMRAM,space=1,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	rdata,class=COMRAM,space=1,noexec
	psect	irdata,class=CODE,space=0,reloc=2,noexec
	psect	bss,class=RAM,space=1,noexec
	psect	data,class=RAM,space=1,noexec
	psect	idata,class=CODE,space=0,reloc=2,noexec
	psect	nvrram,class=COMRAM,space=1,noexec
	psect	nvbit,class=COMRAM,bit,space=1,noexec
	psect	temp,ovrld,class=COMRAM,space=1,noexec
	psect	struct,ovrld,class=COMRAM,space=1,noexec
	psect	rbit,class=COMRAM,bit,space=1,noexec
	psect	bigbss,class=BIGRAM,space=1,noexec
	psect	bigdata,class=BIGRAM,space=1,noexec
	psect	ibigdata,class=CODE,space=0,reloc=2,noexec
	psect	farbss,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	nvFARRAM,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	fardata,class=FARRAM,space=0,reloc=2,delta=1,noexec
	psect	ifardata,class=CODE,space=0,reloc=2,delta=1,noexec

	psect	reset_vec,class=CODE,delta=1,reloc=2
	psect	powerup,class=CODE,delta=1,reloc=2
	psect	intcode,class=CODE,delta=1,reloc=2
	psect	intcode_body,class=CODE,delta=1,reloc=2
	psect	intcodelo,class=CODE,delta=1,reloc=2
	psect	intret,class=CODE,delta=1,reloc=2
	psect	intentry,class=CODE,delta=1,reloc=2

	psect	intsave_regs,class=BIGRAM,space=1
	psect	init,class=CODE,delta=1,reloc=2
	psect	text,class=CODE,delta=1,reloc=2
GLOBAL	intlevel0,intlevel1,intlevel2
intlevel0:
intlevel1:
intlevel2:
GLOBAL	intlevel3
intlevel3:
	psect	end_init,class=CODE,delta=1,reloc=2
	psect	clrtext,class=CODE,delta=1,reloc=2

	psect	smallconst
	GLOBAL	__smallconst
__smallconst:
	psect	mediumconst
	GLOBAL	__mediumconst
__mediumconst:
wreg	EQU	0FE8h
fsr0l	EQU	0FE9h
fsr0h	EQU	0FEAh
fsr1l	EQU	0FE1h
fsr1h	EQU	0FE2h
fsr2l	EQU	0FD9h
fsr2h	EQU	0FDAh
postinc0	EQU	0FEEh
postdec0	EQU	0FEDh
postinc1	EQU	0FE6h
postdec1	EQU	0FE5h
postinc2	EQU	0FDEh
postdec2	EQU	0FDDh
tblptrl	EQU	0FF6h
tblptrh	EQU	0FF7h
tblptru	EQU	0FF8h
tablat		EQU	0FF5h

	PSECT	ramtop,class=RAM,noexec
	GLOBAL	__S1			; top of RAM usage
	GLOBAL	__ramtop
	GLOBAL	__LRAM,__HRAM
__ramtop:

	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	goto start
	GLOBAL __accesstop
__accesstop EQU 96


	psect	init
start:

;Initialize the stack pointer (FSR1)
	global stacklo, stackhi
	stacklo	equ	0400h
	stackhi	equ	04FFh


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___inthi_sp,___intlo_sp
___sp:
___inthi_sp:
___intlo_sp:

	psect	end_init
	global start_initialization
	goto start_initialization	;jump to C runtime clear & initialization

; Config register IDLOC0 @ 0x200000
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x0
		db 0xFF

; Config register IDLOC1 @ 0x200001
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x1
		db 0xFF

; Config register IDLOC2 @ 0x200002
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x2
		db 0xFF

; Config register IDLOC3 @ 0x200003
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x3
		db 0xFF

; Config register IDLOC4 @ 0x200004
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x4
		db 0xFF

; Config register IDLOC5 @ 0x200005
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x5
		db 0xFF

; Config register IDLOC6 @ 0x200006
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x6
		db 0xFF

; Config register IDLOC7 @ 0x200007
;	unspecified using default value

	psect	idloc,class=IDLOC,delta=1,noexec
		org 0x7
		db 0xFF

; Config register CONFIG1L @ 0x300000
;	unspecified using default value

	psect	config,class=CONFIG,delta=1,noexec
		org 0x0
		db 0x0

; Config register CONFIG1H @ 0x300001
;	Fail-Safe Clock Monitor Enable bit
;	FCMEN = 0x0, unprogrammed default
;	Internal/External Oscillator Switchover bit
;	IESO = 0x0, unprogrammed default
;	Oscillator Selection bits
;	FOSC = HS, HS oscillator (HS)

	psect	config,class=CONFIG,delta=1,noexec
		org 0x1
		db 0xC

; Config register CONFIG2L @ 0x300002
;	Power-up Timer Enable bit
;	PWRT = ON, PWRT enabled
;	USB Voltage Regulator Enable bit
;	VREGEN = 0x0, unprogrammed default
;	Brown-out Reset Voltage bits
;	BORV = 21, 2.1V
;	Brown-out Reset Enable bits
;	BOR = ON, Brown-out Reset enabled in hardware only (SBOREN is disabled)

	psect	config,class=CONFIG,delta=1,noexec
		org 0x2
		db 0x1E

; Config register CONFIG2H @ 0x300003
;	Watchdog Timer Postscale Select bits
;	WDTPS = 0xF, unprogrammed default
;	Watchdog Timer Enable bit
;	WDT = OFF, WDT disabled (control is placed on the SWDTEN bit)

	psect	config,class=CONFIG,delta=1,noexec
		org 0x3
		db 0x1E

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x4
		db 0xFF

; Config register CONFIG3H @ 0x300005
;	unspecified using default value

	psect	config,class=CONFIG,delta=1,noexec
		org 0x5
		db 0x82

; Config register CONFIG4L @ 0x300006
;	Stack Full/Underflow Reset Enable bit
;	STVREN = OFF, Stack full/underflow will not cause Reset
;	Background Debugger Enable bit
;	DEBUG = 0x1, unprogrammed default
;	Single-Supply ICSP Enable bit
;	LVP = OFF, Single-Supply ICSP disabled
;	Extended Instruction Set Enable bit
;	XINST = OFF, Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;	Boot Block Size Select bit
;	BBSIZ = 0x0, unprogrammed default

	psect	config,class=CONFIG,delta=1,noexec
		org 0x6
		db 0x80

; Padding undefined space
	psect	config,class=CONFIG,delta=1,noexec
		org 0x7
		db 0xFF

; Config register CONFIG5L @ 0x300008
;	Code Protection bit
;	CP0 = OFF, Block 0 (000800-001FFFh) or (001000-001FFFh) is not code-protected
;	Code Protection bit
;	CP1 = OFF, Block 1 (002000-003FFFh) is not code-protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0x8
		db 0x3

; Config register CONFIG5H @ 0x300009
;	Boot Block Code Protection bit
;	CPB = OFF, Boot block (000000-0007FFh) or (000000-000FFFh) is not code-protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0x9
		db 0x40

; Config register CONFIG6L @ 0x30000A
;	Write Protection bit
;	WRT0 = OFF, Block 0 (000800-001FFFh) or (001000-001FFFh) is not write-protected
;	Write Protection bit
;	WRT1 = OFF, Block 1 (002000-003FFFh) is not write-protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0xA
		db 0x3

; Config register CONFIG6H @ 0x30000B
;	Boot Block Write Protection bit
;	WRTB = OFF, Boot block (000000-0007FFh) or (000000-000FFFh) is not write-protected
;	Configuration Register Write Protection bit
;	WRTC = OFF, Configuration registers (300000-3000FFh) are not write-protected

	psect	config,class=CONFIG,delta=1,noexec
		org 0xB
		db 0x60

; Config register CONFIG7L @ 0x30000C
;	Table Read Protection bit
;	EBTR0 = OFF, Block 0 (000800-001FFFh) or (001000-001FFFh) is not protected from table reads executed in other blocks
;	Table Read Protection bit
;	EBTR1 = OFF, Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks

	psect	config,class=CONFIG,delta=1,noexec
		org 0xC
		db 0x3

; Config register CONFIG7H @ 0x30000D
;	Boot Block Table Read Protection bit
;	EBTRB = OFF, Boot block (000000-0007FFh) or (000000-000FFFh) is not protected from table reads executed in other blocks

	psect	config,class=CONFIG,delta=1,noexec
		org 0xD
		db 0x40


psect comram,class=COMRAM,space=1
psect abs1,class=ABS1,space=1
psect bigram,class=BIGRAM,space=1
psect ram,class=RAM,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank4,class=BANK4,space=1
psect sfr,class=SFR,space=1


	end	start

opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 201502162209"

opt pagewidth 120

	opt pm

	processor	18F25K22
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 95 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1711 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1819 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 5088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 8151 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 8156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9902 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10358 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10367 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10747 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10815 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10824 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10892 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 11046 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 11155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 11161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 11180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 11199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 11293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 11298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11679 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11936 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12716 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12889 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12997 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 13078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 13084 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 13103 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 13122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 13192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 13259 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 13383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 13389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 13408 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 13427 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13870 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 14149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 15197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 15202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 15250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 15255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 15371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 15492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 15586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 15698 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 15704 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15874 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15957 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 16039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 16108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 16114 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 16133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 16230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 16236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 16255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 16261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 16280 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 16299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 16337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 16356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 16362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 16368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 16387 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 16393 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 16431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16450 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 16469 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 16488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 16525 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 16531 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 16550 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 16556 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 16575 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 16594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 16632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 16651 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16942 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16948 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16967 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16986 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 17007 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 17013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 17032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 17051 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 17081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 17088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 17094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 17113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 17132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 17138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 17243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 17249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 17268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 17287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 95 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1711 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1819 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 5088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 8151 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 8156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9902 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10358 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10367 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10747 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10815 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10824 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10892 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 11046 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 11155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 11161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 11180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 11199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 11293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 11298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11679 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11936 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12716 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12889 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12997 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 13078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 13084 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 13103 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 13122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 13192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 13259 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 13383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 13389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 13408 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 13427 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13870 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 14149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 15197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 15202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 15250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 15255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 15371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 15492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 15586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 15698 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 15704 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15874 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15957 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 16039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 16108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 16114 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 16133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 16230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 16236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 16255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 16261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 16280 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 16299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 16337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 16356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 16362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 16368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 16387 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 16393 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 16431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16450 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 16469 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 16488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 16525 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 16531 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 16550 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 16556 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 16575 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 16594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 16632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 16651 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16942 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16948 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16967 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16986 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 17007 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 17013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 17032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 17051 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 17081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 17088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 17094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 17113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 17132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 17138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 17243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 17249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 17268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 17287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 95 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1711 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1819 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 5088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 8151 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 8156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9902 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10358 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10367 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10747 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10815 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10824 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10892 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 11046 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 11155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 11161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 11180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 11199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 11293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 11298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11679 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11936 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12716 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12889 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12997 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 13078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 13084 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 13103 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 13122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 13192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 13259 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 13383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 13389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 13408 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 13427 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13870 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 14149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 15197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 15202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 15250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 15255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 15371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 15492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 15586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 15698 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 15704 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15874 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15957 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 16039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 16108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 16114 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 16133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 16230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 16236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 16255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 16261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 16280 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 16299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 16337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 16356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 16362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 16368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 16387 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 16393 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 16431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16450 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 16469 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 16488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 16525 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 16531 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 16550 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 16556 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 16575 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 16594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 16632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 16651 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16942 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16948 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16967 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16986 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 17007 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 17013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 17032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 17051 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 17081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 17088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 17094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 17113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 17132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 17138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 17243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 17249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 17268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 17287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 95 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1711 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1819 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 5088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 8151 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 8156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9902 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10358 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10367 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10747 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10815 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10824 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10892 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 11046 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 11155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 11161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 11180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 11199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 11293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 11298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11679 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11936 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12716 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12889 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12997 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 13078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 13084 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 13103 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 13122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 13192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 13259 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 13383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 13389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 13408 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 13427 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13870 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 14149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 15197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 15202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 15250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 15255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 15371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 15492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 15586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 15698 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 15704 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15874 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15957 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 16039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 16108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 16114 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 16133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 16230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 16236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 16255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 16261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 16280 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 16299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 16337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 16356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 16362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 16368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 16387 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 16393 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 16431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16450 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 16469 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 16488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 16525 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 16531 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 16550 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 16556 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 16575 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 16594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 16632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 16651 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16942 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16948 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16967 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16986 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 17007 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 17013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 17032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 17051 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 17081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 17088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 17094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 17113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 17132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 17138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 17243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 17249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 17268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 17287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 95 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1711 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1819 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 5088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 8151 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 8156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9902 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10358 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10367 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10747 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10815 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10824 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10892 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 11046 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 11155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 11161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 11180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 11199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 11293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 11298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11679 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11936 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12716 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12889 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12997 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 13078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 13084 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 13103 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 13122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 13192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 13259 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 13383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 13389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 13408 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 13427 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13870 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 14149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 15197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 15202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 15250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 15255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 15371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 15492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 15586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 15698 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 15704 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15874 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15957 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 16039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 16108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 16114 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 16133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 16230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 16236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 16255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 16261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 16280 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 16299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 16337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 16356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 16362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 16368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 16387 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 16393 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 16431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16450 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 16469 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 16488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 16525 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 16531 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 16550 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 16556 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 16575 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 16594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 16632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 16651 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16942 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16948 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16967 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16986 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 17007 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 17013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 17032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 17051 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 17081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 17088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 17094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 17113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 17132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 17138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 17243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 17249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 17268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 17287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 95 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1711 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1819 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 5088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 8151 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 8156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9902 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10358 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10367 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10747 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10815 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10824 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10892 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 11046 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 11155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 11161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 11180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 11199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 11293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 11298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11679 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11936 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12716 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12889 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12997 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 13078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 13084 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 13103 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 13122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 13192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 13259 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 13383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 13389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 13408 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 13427 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13870 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 14149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 15197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 15202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 15250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 15255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 15371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 15492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 15586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 15698 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 15704 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15874 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15957 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 16039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 16108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 16114 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 16133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 16230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 16236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 16255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 16261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 16280 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 16299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 16337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 16356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 16362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 16368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 16387 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 16393 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 16431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16450 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 16469 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 16488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 16525 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 16531 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 16550 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 16556 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 16575 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 16594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 16632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 16651 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16942 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16948 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16967 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16986 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 17007 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 17013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 17032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 17051 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 17081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 17088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 17094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 17113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 17132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 17138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 17243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 17249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 17268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 17287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 95 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 194 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 374 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 379 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 475 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 480 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 836 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 994 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1282 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1425 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1463 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1667 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1692 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1711 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1781 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1819 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1882 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1907 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1926 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 1989 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 1995 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2120 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2361 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2511 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2685 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3170 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3257 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3276 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3417 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3734 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4126 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4235 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4240 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4542 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4547 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4838 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 5088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 5093 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5125 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5167 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5357 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6158 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6220 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6560 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 8151 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 8156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8372 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8687 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8961 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 9037 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 9113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 9189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 9274 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9444 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9567 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9725 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9790 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9828 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9902 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10358 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10367 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10743 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10747 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10815 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10824 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10892 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 11046 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 11155 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 11161 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 11180 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 11199 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 11293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 11298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11679 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11927 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11936 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11940 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12716 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12889 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12978 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12997 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 13078 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 13084 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 13103 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 13122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 13192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 13259 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 13383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 13389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 13408 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 13427 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 13432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13870 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13875 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 14149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 14154 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14860 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14865 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 15197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 15202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 15250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 15255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 15371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 15376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 15492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 15586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 15698 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 15704 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 15723 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15874 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15901 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15957 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 16039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 16108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 16114 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 16133 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 16152 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 16230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 16236 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 16255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 16261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 16280 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 16299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 16318 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 16337 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 16356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 16362 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 16368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 16387 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 16393 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 16412 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 16431 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 16450 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 16469 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 16488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 16525 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 16531 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 16550 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 16556 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 16575 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 16594 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 16613 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 16632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 16651 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16942 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16948 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16967 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16986 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 17007 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 17013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 17032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 17051 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 17081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 17088 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PC equ 0FF9h ;# 
# 17094 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 17113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 17132 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 17138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 17243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 17249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 17268 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 17287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f25k22.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_calibrate
	FNCALL	_main,_delay10ms
	FNCALL	_main,_format_double
	FNCALL	_main,_lcd_begin
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_measure_capacitance
	FNCALL	_main,_measure_inductance
	FNCALL	_main,_print_indicator
	FNCALL	_main,_timer0_init
	FNCALL	_main,_timer2_init
	FNCALL	_print_indicator,_lcd_gotoxy
	FNCALL	_print_indicator,_lcd_puts
	FNCALL	_measure_inductance,___fldiv
	FNCALL	_measure_inductance,___flge
	FNCALL	_measure_inductance,___flmul
	FNCALL	_measure_inductance,___flsub
	FNCALL	_measure_inductance,___fltol
	FNCALL	_measure_inductance,___lwtofl
	FNCALL	_measure_inductance,_lcd_gotoxy
	FNCALL	_measure_inductance,_measure_freq
	FNCALL	_measure_inductance,_print_reading
	FNCALL	_measure_inductance,_print_unit
	FNCALL	_measure_inductance,_put_str
	FNCALL	_measure_capacitance,___fldiv
	FNCALL	_measure_capacitance,___flge
	FNCALL	_measure_capacitance,___flmul
	FNCALL	_measure_capacitance,___flsub
	FNCALL	_measure_capacitance,___fltol
	FNCALL	_measure_capacitance,___lwtofl
	FNCALL	_measure_capacitance,_lcd_gotoxy
	FNCALL	_measure_capacitance,_measure_freq
	FNCALL	_measure_capacitance,_print_reading
	FNCALL	_measure_capacitance,_print_unit
	FNCALL	_measure_capacitance,_put_str
	FNCALL	_print_unit,_lcd_gotoxy
	FNCALL	_print_reading,___lwdiv
	FNCALL	_print_reading,___lwmod
	FNCALL	_print_reading,_format_number
	FNCALL	_print_reading,_lcd_gotoxy
	FNCALL	_print_reading,_lcd_puts
	FNCALL	_lcd_puts,_lcd_send
	FNCALL	_lcd_begin,_lcd_command
	FNCALL	_lcd_begin,_lcd_write4bits
	FNCALL	_format_double,___awtofl
	FNCALL	_format_double,___fldiv
	FNCALL	_format_double,___flge
	FNCALL	_format_double,___flmul
	FNCALL	_format_double,___flsub
	FNCALL	_format_double,___fltol
	FNCALL	_format_double,_buffer_putch
	FNCALL	_format_double,_floor
	FNCALL	_format_double,_log10
	FNCALL	_format_double,_pow
	FNCALL	_pow,___flge
	FNCALL	_pow,___flmul
	FNCALL	_pow,___flneg
	FNCALL	_pow,___fltol
	FNCALL	_pow,___lltofl
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_exp,___awtofl
	FNCALL	_exp,___fldiv
	FNCALL	_exp,___flge
	FNCALL	_exp,___flmul
	FNCALL	_exp,___flneg
	FNCALL	_exp,___flsub
	FNCALL	_exp,___fltol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_floor,___altofl
	FNCALL	_floor,___fladd
	FNCALL	_floor,___flge
	FNCALL	_floor,___fltol
	FNCALL	_floor,_frexp
	FNCALL	___altofl,___flpack
	FNCALL	___flsub,___fladd
	FNCALL	___fldiv,___flpack
	FNCALL	___lltofl,___flpack
	FNCALL	_log10,___flmul
	FNCALL	_log10,_log
	FNCALL	_log,___awtofl
	FNCALL	_log,___fladd
	FNCALL	_log,___flmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_eval_poly,___fladd
	FNCALL	_eval_poly,___flmul
	FNCALL	___flmul,___flpack
	FNCALL	___fladd,___flpack
	FNCALL	___awtofl,___flpack
	FNCALL	_calibrate,___lwtofl
	FNCALL	_calibrate,_delay10ms
	FNCALL	_calibrate,_lcd_clear
	FNCALL	_calibrate,_lcd_gotoxy
	FNCALL	_calibrate,_lcd_send
	FNCALL	_calibrate,_measure_freq
	FNCALL	_calibrate,_put_str
	FNCALL	_put_str,_output_putch
	FNCALL	_output_putch,_lcd_send
	FNCALL	_measure_freq,_buffer_init
	FNCALL	_measure_freq,_buffer_puts
	FNCALL	_measure_freq,_format_number
	FNCALL	_measure_freq,_lcd_gotoxy
	FNCALL	_measure_freq,_print_buffer
	FNCALL	_measure_freq,_timer0_read_ps
	FNCALL	_lcd_gotoxy,_lcd_command
	FNCALL	_format_number,___lwdiv
	FNCALL	_format_number,___lwmod
	FNCALL	_format_number,_buffer_putch
	FNCALL	_buffer_puts,_buffer_putch
	FNCALL	_lcd_clear,_lcd_command
	FNCALL	_lcd_command,_lcd_send
	FNCALL	_lcd_send,_lcd_write4bits
	FNCALL	___lwtofl,___flpack
	FNROOT	_main
	FNCALL	intlevel2,_global_int
	global	intlevel2
	FNROOT	intlevel2
	global	lcd_gotoxy@F7646
	global	_mode
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"../../../lib/lcd44780.c"
	line	135

;initializer for lcd_gotoxy@F7646
	db	low(0)
	db	low(040h)
	db	low(014h)
	db	low(054h)
	file	"../../../LC-meter.c"
	line	48

;initializer for _mode
	db	low(0FFh)
	global	exp@coeff
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	17
exp@coeff:
	dw	(1.0000000000000000 & 0ffffh)
	dw	highword (1.0000000000000000)
	dw	(0.69314718056000002 & 0ffffh)
	dw	highword (0.69314718056000002)
	dw	(0.24022650695000000 & 0ffffh)
	dw	highword (0.24022650695000000)
	dw	(0.055504108944999998 & 0ffffh)
	dw	highword (0.055504108944999998)
	dw	(0.0096181261778999997 & 0ffffh)
	dw	highword (0.0096181261778999997)
	dw	(0.0013333710529000000 & 0ffffh)
	dw	highword (0.0013333710529000000)
	dw	(0.00015399104432000000 & 0ffffh)
	dw	highword (0.00015399104432000000)
	dw	(1.5327675256999998e-005 & 0ffffh)
	dw	highword (1.5327675256999998e-005)
	dw	(1.2485143336000000e-006 & 0ffffh)
	dw	highword (1.2485143336000000e-006)
	dw	(1.3908092220999999e-007 & 0ffffh)
	dw	highword (1.3908092220999999e-007)
	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	smallconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	9
log@coeff:
	dw	(0.0000000000000000 & 0ffffh)
	dw	highword (0.0000000000000000)
	dw	(0.99999642389999999 & 0ffffh)
	dw	highword (0.99999642389999999)
	dw	(-0.49987412380000001 & 0ffffh)
	dw	highword (-0.49987412380000001)
	dw	(0.33179902579999998 & 0ffffh)
	dw	highword (0.33179902579999998)
	dw	(-0.24073380840000000 & 0ffffh)
	dw	highword (-0.24073380840000000)
	dw	(0.16765407110000000 & 0ffffh)
	dw	highword (0.16765407110000000)
	dw	(-0.095329389700000003 & 0ffffh)
	dw	highword (-0.095329389700000003)
	dw	(0.036088493700000002 & 0ffffh)
	dw	highword (0.036088493700000002)
	dw	(-0.0064535442000000004 & 0ffffh)
	dw	highword (-0.0064535442000000004)
	global __end_oflog@coeff
__end_oflog@coeff:
	global	exp@coeff
	global	log@coeff
	global	_LCD_function
	global	_F2
	global	_F3
	global	_msecs
	global	_seconds
	global	_timer1of
	global	_blink
	global	_LCD_ctrl
	global	_LCD_lines
	global	_LCD_mode
	global	_buffer
	global	_F1
	global	_CCal
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
	global	_CCal
_CCal:
       ds      4
	global	_bres
	global	_bres
_bres:
       ds      2
	global	_msecpart
	global	_msecpart
_msecpart:
       ds      2
	global	_TMR0
_TMR0	set	0xFD6
	global	_INTCON
_INTCON	set	0xFF2
	global	_INTCON2
_INTCON2	set	0xFF1
	global	_LATB
_LATB	set	0xF8A
	global	_LATC
_LATC	set	0xF8B
	global	_PIE1
_PIE1	set	0xF9D
	global	_PIR1
_PIR1	set	0xF9E
	global	_PORTC
_PORTC	set	0xF82
	global	_T0CON
_T0CON	set	0xFD5
	global	_T2CON
_T2CON	set	0xFBA
	global	_TMR2
_TMR2	set	0xFBC
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
psect	smallconst
	
STR_18:
	db	112	;'p'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	115	;'s'
	db	101	;'e'
	db	32
	db	119	;'w'
	db	97	;'a'
	db	105	;'i'
	db	116	;'t'
	db	46
	db	46
	db	46
	db	0
	
STR_21:
	db	73	;'I'
	db	110	;'n'
	db	100	;'d'
	db	117	;'u'
	db	99	;'c'
	db	116	;'t'
	db	105	;'i'
	db	118	;'v'
	db	105	;'i'
	db	116	;'t'
	db	121	;'y'
	db	32
	db	0
	
STR_17:
	db	67	;'C'
	db	97	;'a'
	db	108	;'l'
	db	105	;'i'
	db	98	;'b'
	db	114	;'r'
	db	97	;'a'
	db	116	;'t'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	0
	
STR_20:
	db	67	;'C'
	db	97	;'a'
	db	112	;'p'
	db	97	;'a'
	db	99	;'c'
	db	105	;'i'
	db	116	;'t'
	db	121	;'y'
	db	32
	db	0
	
STR_12:
	db	76	;'L'
	db	67	;'C'
	db	45
	db	109	;'m'
	db	101	;'e'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	32
	db	0
	
STR_13:
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_19:
	db	70	;'F'
	db	114	;'r'
	db	101	;'e'
	db	113	;'q'
	db	61	;'='
	db	0
	
STR_16:
	db	82	;'R'
	db	67	;'C'
	db	52	;'4'
	db	61	;'='
	db	0
	
STR_10:
	db	45
	db	42
	db	45
	db	0
	
STR_5:
	db	109	;'m'
	db	70	;'F'
	db	0
	
STR_7:
	db	110	;'n'
	db	70	;'F'
	db	0
	
STR_8:
	db	112	;'p'
	db	70	;'F'
	db	0
	
STR_6:
	db	117	;'u'
	db	70	;'F'
	db	0
	
STR_2:
	db	109	;'m'
	db	72	;'H'
	db	0
	
STR_4:
	db	110	;'n'
	db	72	;'H'
	db	0
	
STR_3:
	db	117	;'u'
	db	72	;'H'
	db	0
STR_1	equ	STR_2+1
STR_14	equ	STR_13+0
STR_9	equ	STR_13+1
STR_15	equ	STR_13+1
STR_11	equ	STR_13+3
; #config settings
global __CFG_FOSC$HSHP
__CFG_FOSC$HSHP equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_BORV$285
__CFG_BORV$285 equ 0x0
global __CFG_PWRTEN$OFF
__CFG_PWRTEN$OFF equ 0x0
global __CFG_WDTEN$OFF
__CFG_WDTEN$OFF equ 0x0
global __CFG_STVREN$OFF
__CFG_STVREN$OFF equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"dist/default/debug\LC_meter_18f25k22_xc8.X.debug.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
_LCD_function:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_F2
_F2:
       ds      4
	global	_F3
_F3:
       ds      4
	global	_msecs
_msecs:
       ds      4
	global	_seconds
_seconds:
       ds      4
	global	_timer1of
	global	_timer1of
_timer1of:
       ds      4
	global	_blink
	global	_blink
_blink:
       ds      2
_LCD_ctrl:
       ds      1
_LCD_lines:
       ds      1
_LCD_mode:
       ds      1
	global	_buffer
_buffer:
       ds      17
	global	_F1
_F1:
       ds      4
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"../../../lib/lcd44780.c"
	line	135
lcd_gotoxy@F7646:
       ds      4
psect	dataBANK0
	file	"../../../LC-meter.c"
	line	48
_mode:
       ds      1
	file	"dist/default/debug\LC_meter_18f25k22_xc8.X.debug.as"
	line	#
psect	cinit
; Clear objects allocated to BANK0 (46 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	46
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (1 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to BANK0 (5 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,5
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___fltol
?___fltol:	; 4 bytes @ 0x0
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x0
	ds   4
??___fltol:	; 0 bytes @ 0x4
	ds   4
	global	?___altofl
?___altofl:	; 4 bytes @ 0x8
	global	measure_inductance@numerator
measure_inductance@numerator:	; 4 bytes @ 0x8
	global	___altofl@c
___altofl@c:	; 4 bytes @ 0x8
	global	_measure_capacitance$1020
_measure_capacitance$1020:	; 4 bytes @ 0x8
	ds   4
	global	___altofl@sign
___altofl@sign:	; 1 bytes @ 0xC
	global	measure_inductance@denominator
measure_inductance@denominator:	; 4 bytes @ 0xC
	global	_measure_capacitance$1021
_measure_capacitance$1021:	; 4 bytes @ 0xC
	ds   1
	global	?_floor
?_floor:	; 4 bytes @ 0xD
	global	floor@x
floor@x:	; 4 bytes @ 0xD
	ds   3
	global	_measure_capacitance$1022
_measure_capacitance$1022:	; 4 bytes @ 0x10
	global	_measure_inductance$1023
_measure_inductance$1023:	; 4 bytes @ 0x10
	ds   1
	global	floor@i
floor@i:	; 4 bytes @ 0x11
	ds   3
	global	measure_capacitance@unit
measure_capacitance@unit:	; 1 bytes @ 0x14
	global	_measure_inductance$1027
_measure_inductance$1027:	; 4 bytes @ 0x14
	ds   1
	global	measure_capacitance@var
measure_capacitance@var:	; 2 bytes @ 0x15
	global	floor@expon
floor@expon:	; 2 bytes @ 0x15
	ds   2
	global	?_exp
?_exp:	; 4 bytes @ 0x17
	global	measure_capacitance@Cin
measure_capacitance@Cin:	; 4 bytes @ 0x17
	global	exp@x
exp@x:	; 4 bytes @ 0x17
	ds   1
	global	_measure_inductance$1028
_measure_inductance$1028:	; 4 bytes @ 0x18
	ds   3
	global	_exp$1033
_exp$1033:	; 4 bytes @ 0x1B
	ds   1
	global	_measure_inductance$1029
_measure_inductance$1029:	; 4 bytes @ 0x1C
	ds   3
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x1F
	ds   1
	global	measure_inductance@unit
measure_inductance@unit:	; 1 bytes @ 0x20
	ds   1
	global	exp@sign
exp@sign:	; 1 bytes @ 0x21
	global	_measure_inductance$1024
_measure_inductance$1024:	; 4 bytes @ 0x21
	ds   1
	global	?_pow
?_pow:	; 4 bytes @ 0x22
	global	pow@x
pow@x:	; 4 bytes @ 0x22
	ds   3
	global	_measure_inductance$1025
_measure_inductance$1025:	; 4 bytes @ 0x25
	ds   1
	global	pow@y
pow@y:	; 4 bytes @ 0x26
	ds   3
	global	_measure_inductance$1026
_measure_inductance$1026:	; 4 bytes @ 0x29
	ds   1
	global	_pow$1031
_pow$1031:	; 4 bytes @ 0x2A
	ds   3
	global	measure_inductance@var
measure_inductance@var:	; 2 bytes @ 0x2D
	ds   1
	global	_pow$1032
_pow$1032:	; 4 bytes @ 0x2E
	ds   1
	global	measure_inductance@Lin
measure_inductance@Lin:	; 4 bytes @ 0x2F
	ds   3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x32
	ds   1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x33
	ds   4
?_format_double:	; 0 bytes @ 0x37
	global	format_double@num
format_double@num:	; 4 bytes @ 0x37
	ds   4
	global	_format_double$1018
_format_double$1018:	; 4 bytes @ 0x3B
	ds   4
	global	_format_double$1019
_format_double$1019:	; 4 bytes @ 0x3F
	ds   4
	global	format_double@weight
format_double@weight:	; 4 bytes @ 0x43
	ds   4
	global	format_double@digit
format_double@digit:	; 2 bytes @ 0x47
	ds   2
	global	format_double@m
format_double@m:	; 2 bytes @ 0x49
	ds   2
	global	main@new_mode
main@new_mode:	; 1 bytes @ 0x4B
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_lcd_puts:	; 0 bytes @ 0x0
?_calibrate:	; 0 bytes @ 0x0
?_measure_capacitance:	; 0 bytes @ 0x0
?_measure_inductance:	; 0 bytes @ 0x0
?_print_unit:	; 0 bytes @ 0x0
?_print_indicator:	; 0 bytes @ 0x0
?_output_putch:	; 0 bytes @ 0x0
?_put_str:	; 0 bytes @ 0x0
?_print_buffer:	; 0 bytes @ 0x0
?_timer0_init:	; 0 bytes @ 0x0
?_timer2_init:	; 0 bytes @ 0x0
?_lcd_write4bits:	; 0 bytes @ 0x0
?_lcd_command:	; 0 bytes @ 0x0
?_lcd_clear:	; 0 bytes @ 0x0
?_lcd_init:	; 0 bytes @ 0x0
?_buffer_init:	; 0 bytes @ 0x0
?_delay10ms:	; 0 bytes @ 0x0
?_global_int:	; 0 bytes @ 0x0
??_global_int:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_buffer_putch:	; 1 bytes @ 0x0
?_buffer_puts:	; 1 bytes @ 0x0
print_unit@unit:	; 1 bytes @ 0x0
delay10ms@period_10ms:	; 1 bytes @ 0x0
	ds   1
??_buffer_putch:	; 0 bytes @ 0x1
??_print_buffer:	; 0 bytes @ 0x1
??_timer0_init:	; 0 bytes @ 0x1
??_timer2_init:	; 0 bytes @ 0x1
??_lcd_write4bits:	; 0 bytes @ 0x1
??_lcd_init:	; 0 bytes @ 0x1
??_buffer_init:	; 0 bytes @ 0x1
??_delay10ms:	; 0 bytes @ 0x1
?___flge:	; 1 bit 
	global	?_timer0_read_ps
?_timer0_read_ps:	; 2 bytes @ 0x1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x1
	global	?___flpack
?___flpack:	; 4 bytes @ 0x1
	global	?_frexp
?_frexp:	; 4 bytes @ 0x1
	global	?___flneg
?___flneg:	; 4 bytes @ 0x1
	global	lcd_write4bits@value
lcd_write4bits@value:	; 1 bytes @ 0x1
	global	lcd_init@fourbitmode
lcd_init@fourbitmode:	; 1 bytes @ 0x1
	global	_timer0_init$103
_timer0_init$103:	; 2 bytes @ 0x1
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x1
	global	___flpack@arg
___flpack@arg:	; 4 bytes @ 0x1
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x1
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x1
	global	frexp@value
frexp@value:	; 4 bytes @ 0x1
	ds   1
?_lcd_send:	; 0 bytes @ 0x2
	global	timer2_init@ps
timer2_init@ps:	; 1 bytes @ 0x2
	global	lcd_send@mode
lcd_send@mode:	; 1 bytes @ 0x2
	global	_lcd_init$212
_lcd_init$212:	; 2 bytes @ 0x2
	ds   1
??_lcd_send:	; 0 bytes @ 0x3
??_timer0_read_ps:	; 0 bytes @ 0x3
	global	lcd_send@value
lcd_send@value:	; 1 bytes @ 0x3
	global	buffer_putch@ch
buffer_putch@ch:	; 1 bytes @ 0x3
	global	_timer0_init$104
_timer0_init$104:	; 2 bytes @ 0x3
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x3
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x3
	ds   1
??_lcd_puts:	; 0 bytes @ 0x4
??_output_putch:	; 0 bytes @ 0x4
??_lcd_command:	; 0 bytes @ 0x4
??_buffer_puts:	; 0 bytes @ 0x4
	global	output_putch@c
output_putch@c:	; 1 bytes @ 0x4
	global	timer2_init@ps_mode
timer2_init@ps_mode:	; 1 bytes @ 0x4
	global	lcd_command@value
lcd_command@value:	; 1 bytes @ 0x4
	global	buffer_puts@x
buffer_puts@x:	; 1 bytes @ 0x4
	ds   1
?_lcd_gotoxy:	; 0 bytes @ 0x5
??_put_str:	; 0 bytes @ 0x5
??_lcd_clear:	; 0 bytes @ 0x5
?_lcd_begin:	; 0 bytes @ 0x5
??___flneg:	; 0 bytes @ 0x5
??___lwdiv:	; 0 bytes @ 0x5
??___lwmod:	; 0 bytes @ 0x5
	global	timer0_read_ps@prev
timer0_read_ps@prev:	; 1 bytes @ 0x5
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x5
	global	lcd_puts@i
lcd_puts@i:	; 1 bytes @ 0x5
	global	lcd_begin@dotsize
lcd_begin@dotsize:	; 1 bytes @ 0x5
	global	___flpack@exp
___flpack@exp:	; 1 bytes @ 0x5
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	_timer0_init$105
_timer0_init$105:	; 2 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x5
	ds   1
??_lcd_gotoxy:	; 0 bytes @ 0x6
??_frexp:	; 0 bytes @ 0x6
??_lcd_begin:	; 0 bytes @ 0x6
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x6
	global	lcd_puts@string
lcd_puts@string:	; 1 bytes @ 0x6
	global	___flpack@sign
___flpack@sign:	; 1 bytes @ 0x6
	global	put_str@i
put_str@i:	; 2 bytes @ 0x6
	global	timer0_read_ps@count
timer0_read_ps@count:	; 2 bytes @ 0x6
	ds   1
??___flpack:	; 0 bytes @ 0x7
	global	lcd_begin@lines
lcd_begin@lines:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	_timer0_init$106
_timer0_init$106:	; 2 bytes @ 0x7
	global	lcd_gotoxy@row_offsets
lcd_gotoxy@row_offsets:	; 4 bytes @ 0x7
	ds   1
?_format_number:	; 0 bytes @ 0x8
	global	put_str@s
put_str@s:	; 1 bytes @ 0x8
	global	format_number@n
format_number@n:	; 2 bytes @ 0x8
	ds   1
??___flge:	; 0 bytes @ 0x9
	global	_timer0_init$107
_timer0_init$107:	; 2 bytes @ 0x9
	ds   1
	global	format_number@base
format_number@base:	; 1 bytes @ 0xA
	ds   1
??_print_unit:	; 0 bytes @ 0xB
??_print_indicator:	; 0 bytes @ 0xB
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0xB
	global	?___awtofl
?___awtofl:	; 4 bytes @ 0xB
	global	?___lltofl
?___lltofl:	; 4 bytes @ 0xB
	global	print_indicator@indicate
print_indicator@indicate:	; 1 bytes @ 0xB
	global	timer0_init@prescaler
timer0_init@prescaler:	; 1 bytes @ 0xB
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0xB
	global	___awtofl@c
___awtofl@c:	; 2 bytes @ 0xB
	global	___fldiv@f1
___fldiv@f1:	; 4 bytes @ 0xB
	global	___lltofl@c
___lltofl@c:	; 4 bytes @ 0xB
	ds   1
??_format_number:	; 0 bytes @ 0xC
	global	timer0_init@ps_mode
timer0_init@ps_mode:	; 1 bytes @ 0xC
	ds   2
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0xE
	ds   1
??___awtofl:	; 0 bytes @ 0xF
??___lltofl:	; 0 bytes @ 0xF
	global	___awtofl@sign
___awtofl@sign:	; 1 bytes @ 0xF
	global	___fldiv@f2
___fldiv@f2:	; 4 bytes @ 0xF
	ds   4
??___fldiv:	; 0 bytes @ 0x13
	global	___fldiv@f3
___fldiv@f3:	; 4 bytes @ 0x13
	ds   4
	global	___fldiv@cntr
___fldiv@cntr:	; 1 bytes @ 0x17
	ds   1
	global	___fldiv@exp
___fldiv@exp:	; 1 bytes @ 0x18
	ds   1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x19
	ds   1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x1A
	global	___flmul@f1
___flmul@f1:	; 4 bytes @ 0x1A
	ds   4
	global	___flmul@f2
___flmul@f2:	; 4 bytes @ 0x1E
	ds   4
??___flmul:	; 0 bytes @ 0x22
	ds   12
	global	_format_number$148
_format_number$148:	; 2 bytes @ 0x2E
	ds   1
	global	___flmul@exp
___flmul@exp:	; 1 bytes @ 0x2F
	ds   1
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x30
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x30
	ds   1
	global	format_number@di
format_number@di:	; 1 bytes @ 0x31
	global	___flmul@f3_as_product
___flmul@f3_as_product:	; 4 bytes @ 0x31
	ds   1
	global	format_number@i
format_number@i:	; 1 bytes @ 0x32
	ds   1
?_print_reading:	; 0 bytes @ 0x33
	global	?_measure_freq
?_measure_freq:	; 2 bytes @ 0x33
	global	print_reading@measurement
print_reading@measurement:	; 2 bytes @ 0x33
	ds   2
??_measure_freq:	; 0 bytes @ 0x35
??_print_reading:	; 0 bytes @ 0x35
	global	?___fladd
?___fladd:	; 4 bytes @ 0x35
	global	_print_reading$1014
_print_reading$1014:	; 2 bytes @ 0x35
	global	___fladd@f1
___fladd@f1:	; 4 bytes @ 0x35
	ds   1
	global	measure_freq@count
measure_freq@count:	; 2 bytes @ 0x36
	ds   1
	global	_print_reading$1015
_print_reading$1015:	; 2 bytes @ 0x37
	ds   1
	global	?___lwtofl
?___lwtofl:	; 4 bytes @ 0x38
	global	___lwtofl@c
___lwtofl@c:	; 2 bytes @ 0x38
	ds   1
	global	___fladd@f2
___fladd@f2:	; 4 bytes @ 0x39
	ds   3
??_calibrate:	; 0 bytes @ 0x3C
??___lwtofl:	; 0 bytes @ 0x3C
	global	calibrate@i
calibrate@i:	; 1 bytes @ 0x3C
	ds   1
??___fladd:	; 0 bytes @ 0x3D
	ds   1
	global	___fladd@sign
___fladd@sign:	; 1 bytes @ 0x3E
	ds   1
	global	___fladd@exp2
___fladd@exp2:	; 1 bytes @ 0x3F
	ds   1
	global	___fladd@exp1
___fladd@exp1:	; 1 bytes @ 0x40
	ds   1
	global	?___flsub
?___flsub:	; 4 bytes @ 0x41
	global	?_eval_poly
?_eval_poly:	; 4 bytes @ 0x41
	global	___flsub@f1
___flsub@f1:	; 4 bytes @ 0x41
	global	eval_poly@x
eval_poly@x:	; 4 bytes @ 0x41
	ds   4
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x45
	global	___flsub@f2
___flsub@f2:	; 4 bytes @ 0x45
	ds   1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x46
	ds   2
??_eval_poly:	; 0 bytes @ 0x48
	ds   1
??___flsub:	; 0 bytes @ 0x49
	global	eval_poly@res
eval_poly@res:	; 4 bytes @ 0x49
	ds   4
	global	?_ldexp
?_ldexp:	; 4 bytes @ 0x4D
	global	?_log
?_log:	; 4 bytes @ 0x4D
	global	ldexp@value
ldexp@value:	; 4 bytes @ 0x4D
	global	log@x
log@x:	; 4 bytes @ 0x4D
	ds   4
??_log:	; 0 bytes @ 0x51
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x51
	global	log@exponent
log@exponent:	; 2 bytes @ 0x51
	ds   2
??_ldexp:	; 0 bytes @ 0x53
	global	?_log10
?_log10:	; 4 bytes @ 0x53
	global	log10@x
log10@x:	; 4 bytes @ 0x53
	ds   4
??_log10:	; 0 bytes @ 0x57
	global	_log10$1030
_log10$1030:	; 4 bytes @ 0x57
	ds   4
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x5B
	ds   1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x5C
	ds   1
??_pow:	; 0 bytes @ 0x5D
??_floor:	; 0 bytes @ 0x5D
??_measure_capacitance:	; 0 bytes @ 0x5D
??_measure_inductance:	; 0 bytes @ 0x5D
??_exp:	; 0 bytes @ 0x5D
??_format_double:	; 0 bytes @ 0x5D
??_main:	; 0 bytes @ 0x5D
??___altofl:	; 0 bytes @ 0x5D
;!
;!Data Sizes:
;!    Strings     103
;!    Constant    76
;!    Data        5
;!    BSS         47
;!    Persistent  8
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     93      94
;!    BANK0           160     76     135
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 40
;!		 -> exp@coeff(CODE[40]), log@coeff(CODE[36]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(COMRAM[2]), floor@expon(BANK0[2]), 
;!
;!    buffer_puts@x	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_19(CODE[6]), 
;!
;!    lcd_puts@string	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_16(CODE[5]), STR_15(CODE[6]), STR_14(CODE[7]), STR_13(CODE[7]), 
;!		 -> STR_12(CODE[10]), STR_11(CODE[4]), STR_10(CODE[4]), STR_9(CODE[6]), 
;!
;!    put_str@s	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_21(CODE[13]), STR_20(CODE[10]), STR_18(CODE[15]), STR_17(CODE[12]), 
;!
;!    print_unit@units	PTR const unsigned char [8] size(1) Largest target is 3
;!		 -> STR_8(CODE[3]), STR_7(CODE[3]), STR_6(CODE[3]), STR_5(CODE[3]), 
;!		 -> STR_4(CODE[3]), STR_3(CODE[3]), STR_2(CODE[3]), STR_1(CODE[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _print_indicator->_lcd_gotoxy
;!    _measure_inductance->___fltol
;!    _measure_capacitance->___fltol
;!    _print_unit->_lcd_gotoxy
;!    _print_reading->_format_number
;!    _lcd_puts->_lcd_send
;!    _lcd_begin->_lcd_command
;!    _format_double->___fltol
;!    _pow->___fltol
;!    _exp->___fltol
;!    _ldexp->_eval_poly
;!    _floor->___fltol
;!    ___fltol->_log10
;!    ___altofl->___fltol
;!    ___flsub->___fladd
;!    ___fldiv->___flpack
;!    ___lltofl->___flpack
;!    _log10->_log
;!    _log->_eval_poly
;!    _eval_poly->___fladd
;!    ___flmul->___fldiv
;!    ___fladd->___flmul
;!    ___awtofl->___flpack
;!    _calibrate->___lwtofl
;!    _put_str->_output_putch
;!    _output_putch->_lcd_send
;!    _measure_freq->_format_number
;!    _lcd_gotoxy->_lcd_command
;!    _format_number->___lwdiv
;!    _buffer_puts->_buffer_putch
;!    _lcd_clear->_lcd_command
;!    _lcd_command->_lcd_send
;!    _lcd_send->_lcd_write4bits
;!    ___lwtofl->_measure_freq
;!
;!Critical Paths under _global_int in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_format_double
;!    _measure_inductance->___fltol
;!    _measure_capacitance->___fltol
;!    _format_double->_pow
;!    _pow->_exp
;!    _exp->_floor
;!    _floor->___altofl
;!    ___altofl->___fltol
;!
;!Critical Paths under _global_int in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _global_int in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _global_int in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _global_int in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _global_int in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _global_int in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0  237068
;!                                             75 BANK0      1     1      0
;!                          _calibrate
;!                          _delay10ms
;!                      _format_double
;!                          _lcd_begin
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                           _lcd_init
;!                           _lcd_puts
;!                _measure_capacitance
;!                 _measure_inductance
;!                    _print_indicator
;!                        _timer0_init
;!                        _timer2_init
;! ---------------------------------------------------------------------------------
;! (1) _timer2_init                                          4     4      0      90
;!                                              1 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _timer0_init                                         12    12      0     297
;!                                              1 COMRAM    12    12      0
;! ---------------------------------------------------------------------------------
;! (1) _print_indicator                                      1     1      0    2406
;!                                             11 COMRAM     1     1      0
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (1) _measure_inductance                                  55    55      0   36083
;!                                              8 BANK0     43    43      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___lwtofl
;!                         _lcd_gotoxy
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (1) _measure_capacitance                                 19    19      0   35573
;!                                              8 BANK0     19    19      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___lwtofl
;!                         _lcd_gotoxy
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (2) _print_unit                                           3     3      0    1578
;!                                             11 COMRAM     2     2      0
;!                         _lcd_gotoxy
;! ---------------------------------------------------------------------------------
;! (2) _print_reading                                        6     4      2    5822
;!                                             51 COMRAM     6     4      2
;!                            ___lwdiv
;!                            ___lwmod
;!                      _format_number
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (2) _lcd_puts                                             3     3      0     806
;!                                              4 COMRAM     3     3      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             3     3      0      46
;!                                              1 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_begin                                            3     2      1     685
;!                                              5 COMRAM     3     2      1
;!                        _lcd_command
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (1) _format_double                                       20    16      4  148692
;!                                             55 BANK0     20    16      4
;!                           ___awtofl
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                       _buffer_putch
;!                              _floor
;!                              _log10
;!                                _pow
;! ---------------------------------------------------------------------------------
;! (2) _pow                                                 21    13      8   83311
;!                                             34 BANK0     21    13      8
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___fltol
;!                           ___lltofl
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _exp                                                 11     7      4   44186
;!                                             23 BANK0     11     7      4
;!                           ___awtofl
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___flsub
;!                            ___fltol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _ldexp                                                8     2      6     354
;!                                             77 COMRAM     8     2      6
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _floor                                               10     6      4    9912
;!                                             13 BANK0     10     6      4
;!                           ___altofl
;!                            ___fladd
;!                            ___fldiv (ARG)
;!                             ___flge
;!                            ___fltol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) ___fltol                                             10     6      4     680
;!                                             91 COMRAM     2     2      0
;!                                              0 BANK0      8     4      4
;!                            ___fldiv (ARG)
;!                              _log10 (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flge                                               8     0      8    1594
;!                                              1 COMRAM     8     0      8
;! ---------------------------------------------------------------------------------
;! (5) ___altofl                                             5     1      4    2446
;!                                              8 BANK0      5     1      4
;!                           ___flpack
;!                            ___fltol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flsub                                              8     0      8    5269
;!                                             65 COMRAM     8     0      8
;!                           ___awtofl (ARG)
;!                            ___fladd
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___flneg                                              4     0      4     204
;!                                              1 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (2) ___fldiv                                             15     7      8    4021
;!                                             11 COMRAM    15     7      8
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (3) ___lltofl                                             4     0      4    2344
;!                                             11 COMRAM     4     0      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (2) _log10                                                8     4      4   33741
;!                                             83 COMRAM     8     4      4
;!                            ___flmul
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _log                                                  6     2      4   26568
;!                                             77 COMRAM     6     2      4
;!                           ___awtofl
;!                            ___fladd
;!                            ___flmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (4) _frexp                                                7     2      5     436
;!                                              1 COMRAM     7     2      5
;! ---------------------------------------------------------------------------------
;! (4) _eval_poly                                           12     5      7   11855
;!                                             65 COMRAM    12     5      7
;!                            ___fladd
;!                            ___flmul
;! ---------------------------------------------------------------------------------
;! (2) ___flmul                                             28    20      8    6998
;!                                             26 COMRAM    27    19      8
;!                           ___awtofl (ARG)
;!                            ___fldiv (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___fladd                                             12     4      8    4213
;!                                             53 COMRAM    12     4      8
;!                           ___awtofl (ARG)
;!                            ___flmul (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___awtofl                                             9     5      4    2686
;!                                             11 COMRAM     5     1      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (1) _calibrate                                            1     1      0   10225
;!                                             60 COMRAM     1     1      0
;!                           ___lwtofl
;!                          _delay10ms
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                           _lcd_send
;!                       _measure_freq
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (2) _put_str                                              4     4      0     720
;!                                              5 COMRAM     4     4      0
;!                       _output_putch
;! ---------------------------------------------------------------------------------
;! (3) _output_putch                                         1     1      0     522
;!                                              4 COMRAM     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (2) _measure_freq                                         5     3      2    4168
;!                                             51 COMRAM     5     3      2
;!                        _buffer_init
;!                        _buffer_puts
;!                      _format_number
;!                         _lcd_gotoxy
;!                       _print_buffer
;!                     _timer0_read_ps
;! ---------------------------------------------------------------------------------
;! (3) _timer0_read_ps                                       7     5      2     114
;!                                              1 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (3) _print_buffer                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _lcd_gotoxy                                           6     5      1    1578
;!                                              5 COMRAM     6     5      1
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _format_number                                       43    39      4    2337
;!                                              8 COMRAM    43    39      4
;!                            ___lwdiv
;!                            ___lwmod
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     451
;!                                              1 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     454
;!                                              1 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) _buffer_puts                                          1     1      0      94
;!                                              4 COMRAM     1     1      0
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) _buffer_putch                                         3     3      0      22
;!                                              1 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _buffer_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_clear                                            1     1      0     522
;!                                              5 COMRAM     1     1      0
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _lcd_command                                          1     1      0     522
;!                                              4 COMRAM     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (3) _lcd_send                                             2     1      1     500
;!                                              2 COMRAM     2     1      1
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (4) _lcd_write4bits                                       1     1      0      22
;!                                              1 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _delay10ms                                            1     1      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwtofl                                             4     0      4    2669
;!                                             56 COMRAM     4     0      4
;!                           ___flpack
;!                       _measure_freq (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___flpack                                            10     4      6    2248
;!                                              1 COMRAM    10     4      6
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _global_int                                           1     1      0       0
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _calibrate
;!     ___lwtofl
;!       ___flpack
;!       _measure_freq (ARG)
;!         _buffer_init
;!         _buffer_puts
;!           _buffer_putch
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _buffer_putch
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _print_buffer
;!         _timer0_read_ps
;!     _delay10ms
;!     _lcd_clear
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_send
;!       _lcd_write4bits
;!     _measure_freq
;!       _buffer_init
;!       _buffer_puts
;!         _buffer_putch
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _print_buffer
;!       _timer0_read_ps
;!     _put_str
;!       _output_putch
;!         _lcd_send
;!           _lcd_write4bits
;!   _delay10ms
;!   _format_double
;!     ___awtofl
;!       ___flpack
;!     ___fldiv
;!       ___flpack
;!     ___flge
;!     ___flmul
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fldiv (ARG)
;!         ___flpack
;!       ___flpack (ARG)
;!       _frexp (ARG)
;!     ___flsub
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___flmul (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___flmul (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!     ___fltol
;!       ___fldiv (ARG)
;!         ___flpack
;!       _log10 (ARG)
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _log
;!           ___awtofl
;!             ___flpack
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!     _buffer_putch
;!     _floor
;!       ___altofl
;!         ___flpack
;!         ___fltol (ARG)
;!           ___fldiv (ARG)
;!             ___flpack
;!           _log10 (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             _log
;!               ___awtofl
;!                 ___flpack
;!               ___fladd
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___flmul (ARG)
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___fladd
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___flmul (ARG)
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flmul
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!               _frexp
;!       ___fladd
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___flmul (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___fldiv (ARG)
;!         ___flpack
;!       ___flge (ARG)
;!       ___fltol (ARG)
;!         ___fldiv (ARG)
;!           ___flpack
;!         _log10 (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _log
;!             ___awtofl
;!               ___flpack
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___fladd
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___flmul (ARG)
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!             _frexp
;!       _frexp (ARG)
;!     _log10
;!       ___flmul
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       _log
;!         ___awtofl
;!           ___flpack
;!         ___fladd
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___flmul (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!         _frexp
;!     _pow
;!       ___flge
;!       ___flmul
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___flneg
;!       ___fltol
;!         ___fldiv (ARG)
;!           ___flpack
;!         _log10 (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _log
;!             ___awtofl
;!               ___flpack
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___fladd
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___flmul (ARG)
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!             _frexp
;!       ___lltofl
;!         ___flpack
;!       _exp
;!         ___awtofl
;!           ___flpack
;!         ___fldiv
;!           ___flpack
;!         ___flge
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flneg
;!         ___flsub
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fladd (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!         ___fltol
;!           ___fldiv (ARG)
;!             ___flpack
;!           _log10 (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             _log
;!               ___awtofl
;!                 ___flpack
;!               ___fladd
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___flmul (ARG)
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___fladd
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___flmul (ARG)
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flmul
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!               _frexp
;!         _eval_poly
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!         _floor
;!           ___altofl
;!             ___flpack
;!             ___fltol (ARG)
;!               ___fldiv (ARG)
;!                 ___flpack
;!               _log10 (ARG)
;!                 ___flmul
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 _log
;!                   ___awtofl
;!                     ___flpack
;!                   ___fladd
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___flmul (ARG)
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___fldiv (ARG)
;!                         ___flpack
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flmul
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   _eval_poly
;!                     ___fladd
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___flmul (ARG)
;!                         ___awtofl (ARG)
;!                           ___flpack
;!                         ___fldiv (ARG)
;!                           ___flpack
;!                         ___flpack (ARG)
;!                         _frexp (ARG)
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                     ___flmul
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___fldiv (ARG)
;!                         ___flpack
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                   _frexp
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flge (ARG)
;!           ___fltol (ARG)
;!             ___fldiv (ARG)
;!               ___flpack
;!             _log10 (ARG)
;!               ___flmul
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               _log
;!                 ___awtofl
;!                   ___flpack
;!                 ___fladd
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___flmul (ARG)
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 ___flmul
;!                   ___awtofl (ARG)
;!                     ___flpack
;!                   ___fldiv (ARG)
;!                     ___flpack
;!                   ___flpack (ARG)
;!                   _frexp (ARG)
;!                 _eval_poly
;!                   ___fladd
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___flmul (ARG)
;!                       ___awtofl (ARG)
;!                         ___flpack
;!                       ___fldiv (ARG)
;!                         ___flpack
;!                       ___flpack (ARG)
;!                       _frexp (ARG)
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   ___flmul
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                 _frexp
;!           _frexp (ARG)
;!         _ldexp
;!           _eval_poly (ARG)
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!         _log (ARG)
;!           ___awtofl
;!             ___flpack
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!       _log
;!         ___awtofl
;!           ___flpack
;!         ___fladd
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___flmul (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!         _frexp
;!   _lcd_begin
;!     _lcd_command
;!       _lcd_send
;!         _lcd_write4bits
;!     _lcd_write4bits
;!   _lcd_clear
;!     _lcd_command
;!       _lcd_send
;!         _lcd_write4bits
;!   _lcd_gotoxy
;!     _lcd_command
;!       _lcd_send
;!         _lcd_write4bits
;!   _lcd_init
;!   _lcd_puts
;!     _lcd_send
;!       _lcd_write4bits
;!   _measure_capacitance
;!     ___fldiv
;!       ___flpack
;!     ___flge
;!     ___flmul
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fldiv (ARG)
;!         ___flpack
;!       ___flpack (ARG)
;!       _frexp (ARG)
;!     ___flsub
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___flmul (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___flmul (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!     ___fltol
;!       ___fldiv (ARG)
;!         ___flpack
;!       _log10 (ARG)
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _log
;!           ___awtofl
;!             ___flpack
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!     ___lwtofl
;!       ___flpack
;!       _measure_freq (ARG)
;!         _buffer_init
;!         _buffer_puts
;!           _buffer_putch
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _buffer_putch
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _print_buffer
;!         _timer0_read_ps
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _measure_freq
;!       _buffer_init
;!       _buffer_puts
;!         _buffer_putch
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _print_buffer
;!       _timer0_read_ps
;!     _print_reading
;!       ___lwdiv
;!       ___lwmod
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _lcd_puts
;!         _lcd_send
;!           _lcd_write4bits
;!     _print_unit
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!     _put_str
;!       _output_putch
;!         _lcd_send
;!           _lcd_write4bits
;!   _measure_inductance
;!     ___fldiv
;!       ___flpack
;!     ___flge
;!     ___flmul
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fldiv (ARG)
;!         ___flpack
;!       ___flpack (ARG)
;!       _frexp (ARG)
;!     ___flsub
;!       ___awtofl (ARG)
;!         ___flpack
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___flmul (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___flmul (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!     ___fltol
;!       ___fldiv (ARG)
;!         ___flpack
;!       _log10 (ARG)
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         _log
;!           ___awtofl
;!             ___flpack
;!           ___fladd
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___fladd
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___flmul (ARG)
;!                 ___awtofl (ARG)
;!                   ___flpack
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 ___flpack (ARG)
;!                 _frexp (ARG)
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!             ___flmul
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!     ___lwtofl
;!       ___flpack
;!       _measure_freq (ARG)
;!         _buffer_init
;!         _buffer_puts
;!           _buffer_putch
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _buffer_putch
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _print_buffer
;!         _timer0_read_ps
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _measure_freq
;!       _buffer_init
;!       _buffer_puts
;!         _buffer_putch
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _print_buffer
;!       _timer0_read_ps
;!     _print_reading
;!       ___lwdiv
;!       ___lwmod
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _lcd_puts
;!         _lcd_send
;!           _lcd_write4bits
;!     _print_unit
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!     _put_str
;!       _output_putch
;!         _lcd_send
;!           _lcd_write4bits
;!   _print_indicator
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_puts
;!       _lcd_send
;!         _lcd_write4bits
;!   _timer0_init
;!   _timer2_init
;!
;! _global_int (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       7        0.0%
;!BANK2              100      0       0       8        0.0%
;!BITBANK1           100      0       0       5        0.0%
;!BANK1              100      0       0       6        0.0%
;!BITBANK0            A0      0       0       3        0.0%
;!BANK0               A0     4C      87       4       84.4%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     5D      5E       1       98.9%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      E5       9        0.0%
;!DATA                 0      0      E5      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 113 in file "../../../LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  new_mode        1   75[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_calibrate
;;		_delay10ms
;;		_format_double
;;		_lcd_begin
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_init
;;		_lcd_puts
;;		_measure_capacitance
;;		_measure_inductance
;;		_print_indicator
;;		_timer0_init
;;		_timer2_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"../../../LC-meter.c"
	line	113
global __ptext0
__ptext0:
psect	text0
	file	"../../../LC-meter.c"
	line	113
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 24
	line	114
	
l3693:
;LC-meter.c: 114: bres = msecpart = msecs = seconds = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_seconds))&0ffh	;volatile
	movlw	high(0)
	movwf	((_seconds+1))&0ffh	;volatile
	movlw	low highword(0)
	movwf	((_seconds+2))&0ffh	;volatile
	movlw	high highword(0)
	movwf	((_seconds+3))&0ffh	;volatile
	movff	(_seconds),(_msecs)	;volatile
	movff	(_seconds+1),(_msecs+1)	;volatile
	movff	(_seconds+2),(_msecs+2)	;volatile
	movff	(_seconds+3),(_msecs+3)	;volatile
	movff	(_msecs),(_msecpart)	;volatile
	movff	(_msecs+1),(_msecpart+1)	;volatile
	movff	(_msecpart),(_bres)	;volatile
	movff	(_msecpart+1),(_bres+1)	;volatile
	line	115
	
l3695:; BSR set to: 0

;LC-meter.c: 115: mode = -1;
	setf	((_mode))&0ffh
	line	117
;LC-meter.c: 117: CCal = 1000;
	movlw	low(1000.0000000000000)
	movwf	((_CCal))&0ffh
	movlw	high(1000.0000000000000)
	movwf	((_CCal+1))&0ffh
	movlw	low highword(1000.0000000000000)
	movwf	((_CCal+2))&0ffh
	movlw	high highword(1000.0000000000000)
	movwf	((_CCal+3))&0ffh
	line	127
;LC-meter.c: 127: TRISA = 0b11001111;
	movlw	low(0CFh)
	movwf	((c:3986)),c	;volatile
	line	130
	
l3697:; BSR set to: 0

;LC-meter.c: 130: timer0_init(0b1000 | 0x20 | 0x40);
	movlw	(068h)&0ffh
	
	call	_timer0_init
	line	137
	
l3699:; BSR set to: 0

;LC-meter.c: 137: INTCON2 &= ~0b10000000;
	bcf	(0+(7/8)+(c:4081)),c,(7)&7	;volatile
	line	145
	
l3701:; BSR set to: 0

;LC-meter.c: 145: TRISC = 0b10111011;
	movlw	low(0BBh)
	movwf	((c:3988)),c	;volatile
	line	149
	
l3703:; BSR set to: 0

;LC-meter.c: 149: TRISC &= ~0b00000100;
	bcf	(0+(2/8)+(c:3988)),c,(2)&7	;volatile
	line	150
	
l3705:; BSR set to: 0

;LC-meter.c: 150: LATC &= ~0b00000100; LATC |= (!!(1)) << 2;;
	bcf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
	
l3707:; BSR set to: 0

	bsf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
	line	152
;LC-meter.c: 152: timer2_init(0b000 | 0x80);
	movlw	(080h)&0ffh
	
	call	_timer2_init
	line	160
;LC-meter.c: 160: lcd_init(1);
	movlw	(01h)&0ffh
	
	call	_lcd_init
	line	161
;LC-meter.c: 161: lcd_begin(2, 1);
	movlw	low(01h)
	movwf	((c:lcd_begin@dotsize)),c
	movlw	(02h)&0ffh
	
	call	_lcd_begin
	line	164
	
l3709:
;LC-meter.c: 164: TRISC |= (1 << 4);
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	165
	
l3711:
;LC-meter.c: 165: TRISC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	167
	
l3713:
;LC-meter.c: 167: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	168
;LC-meter.c: 168: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	169
	
l3715:
;LC-meter.c: 169: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	170
	
l3717:
;LC-meter.c: 170: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	171
;LC-meter.c: 171: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	172
	
l3719:
;LC-meter.c: 172: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	173
	
l3721:
;LC-meter.c: 173: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	174
;LC-meter.c: 174: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	175
	
l3723:
;LC-meter.c: 175: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	185
	
l3725:
;LC-meter.c: 185: INTCON |= 0xc0;
	movlw	(0C0h)&0ffh
	iorwf	((c:4082)),c	;volatile
	line	191
	
l3727:
;LC-meter.c: 191: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	193
	
l3729:
;LC-meter.c: 193: lcd_puts("LC-meter ");
	movlw	(STR_12)&0ffh
	
	call	_lcd_puts
	line	194
	
l3731:
;LC-meter.c: 194: format_double( CCal);
	movff	(_CCal),(format_double@num)
	movff	(_CCal+1),(format_double@num+1)
	movff	(_CCal+2),(format_double@num+2)
	movff	(_CCal+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	200
	
l3733:
;LC-meter.c: 200: delay10ms(200);
	movlw	(0C8h)&0ffh
	
	call	_delay10ms
	line	203
	
l3735:
;LC-meter.c: 203: calibrate();
	call	_calibrate	;wreg free
	line	206
	
l3737:
;LC-meter.c: 206: lcd_clear();
	call	_lcd_clear	;wreg free
	line	215
	
l3739:
;LC-meter.c: 215: char new_mode = (!!(PORTC & 0b10000));
	
	btfsc	((c:3970)),c,(4)&7	;volatile
	goto	u3221
	goto	u3220
u3221:
	movlw	1
	goto	u3230
u3220:
	movlw	0
u3230:
	movlb	0	; () banked
	movwf	((main@new_mode))&0ffh
	line	217
	
l3741:; BSR set to: 0

;LC-meter.c: 217: if(new_mode != mode) {
	movf	((_mode))&0ffh,w
xorwf	((main@new_mode))&0ffh,w
	btfsc	status,2
	goto	u3241
	goto	u3240

u3241:
	goto	l3745
u3240:
	line	222
	
l3743:; BSR set to: 0

;LC-meter.c: 222: mode = new_mode;
	movff	(main@new_mode),(_mode)
	line	225
	
l3745:; BSR set to: 0

;LC-meter.c: 223: }
;LC-meter.c: 225: if(mode)
	movf	((_mode))&0ffh,w
	btfsc	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l3749
u3250:
	line	226
	
l3747:; BSR set to: 0

;LC-meter.c: 226: measure_capacitance();
	call	_measure_capacitance	;wreg free
	goto	l3751
	line	228
	
l3749:; BSR set to: 0

;LC-meter.c: 227: else
;LC-meter.c: 228: measure_inductance();
	call	_measure_inductance	;wreg free
	line	230
	
l3751:
;LC-meter.c: 230: print_indicator(1);
	movlw	(01h)&0ffh
	
	call	_print_indicator
	line	231
	
l3753:
;LC-meter.c: 231: delay10ms(30);
	movlw	(01Eh)&0ffh
	
	call	_delay10ms
	line	233
	
l3755:
;LC-meter.c: 233: print_indicator(0);
	movlw	(0)&0ffh
	
	call	_print_indicator
	line	234
	
l3757:
;LC-meter.c: 234: delay10ms(20);
	movlw	(014h)&0ffh
	
	call	_delay10ms
	line	235
;LC-meter.c: 235: }
	goto	l3739
	global	start
	goto	start
	opt stack 0
	line	236
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_timer2_init

;; *************** function _timer2_init *****************
;; Defined at:
;;		line 129 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1    4[COMRAM] unsigned char 
;;  postscaler      1    0        unsigned char 
;;  ps              1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"../../../lib/timer.c"
	line	129
global __ptext1
__ptext1:
psect	text1
	file	"../../../lib/timer.c"
	line	129
	global	__size_of_timer2_init
	__size_of_timer2_init	equ	__end_of_timer2_init-_timer2_init
	
_timer2_init:
;incstack = 0
	opt	stack 29
;timer2_init@ps_mode stored from wreg
	movwf	((c:timer2_init@ps_mode)),c
	line	130
	
l2887:; BSR set to: 0

;timer.c: 130: uint8_t ps = ps_mode & 0b1111;
	movf	((c:timer2_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer2_init@ps)),c
	line	131
	
l2889:; BSR set to: 0

	line	134
;timer.c: 134: T2CON &= ~0b01111111;
	movlw	(080h)&0ffh
	andwf	((c:4026)),c	;volatile
	line	136
;timer.c: 136: T2CON |= (postscaler & 0b1111) << 3;
	movf	((c:4026)),c,w	;volatile
	line	137
;timer.c: 137: T2CON |= (ps & 0b11);
	movf	((c:timer2_init@ps)),c,w
	andlw	low(03h)
	iorwf	((c:4026)),c	;volatile
	line	139
	
l2891:; BSR set to: 0

;timer.c: 139: TMR2 = 0;
	clrf	((c:4028)),c	;volatile
	line	141
	
l2893:; BSR set to: 0

;timer.c: 141: T2CON |= 0b100;
	bsf	(0+(2/8)+(c:4026)),c,(2)&7	;volatile
	line	144
	
l2895:; BSR set to: 0

;timer.c: 144: PIR1 &= ~0b10;
	bcf	(0+(1/8)+(c:3998)),c,(1)&7	;volatile
	line	145
;timer.c: 145: PIE1 = (!!(ps_mode & 0x80)) << 1;
	
	btfsc	((c:timer2_init@ps_mode)),c,(7)&7
	goto	u2281
	goto	u2280
u2281:
	clrf	(??_timer2_init+0+0)&0ffh,c
	incf	(??_timer2_init+0+0)&0ffh,c
	goto	u2298
u2280:
	clrf	(??_timer2_init+0+0)&0ffh,c
u2298:
	bcf	status,0
	rlcf	(??_timer2_init+0+0),c,w
	movwf	((c:3997)),c	;volatile
	line	146
	
l104:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer2_init
	__end_of_timer2_init:
	signat	_timer2_init,4216
	global	_timer0_init

;; *************** function _timer0_init *****************
;; Defined at:
;;		line 27 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1   12[COMRAM] unsigned char 
;;  prescaler       1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        12       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	27
global __ptext2
__ptext2:
psect	text2
	file	"../../../lib/timer.c"
	line	27
	global	__size_of_timer0_init
	__size_of_timer0_init	equ	__end_of_timer0_init-_timer0_init
	
_timer0_init:
;incstack = 0
	opt	stack 29
;timer0_init@ps_mode stored from wreg
	movwf	((c:timer0_init@ps_mode)),c
	line	28
	
l2837:; BSR set to: 0

;timer.c: 28: uint8_t prescaler = ps_mode & 0b1111;
	movf	((c:timer0_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer0_init@prescaler)),c
	line	30
	
l2839:; BSR set to: 0

;timer.c: 30: TMR0 = 0;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	33
	
l2841:; BSR set to: 0

;timer.c: 33: T0CON |= (!!(ps_mode & 0x20)) ? 0x20 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(5)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l2845
u2220:
	
l2843:; BSR set to: 0

	clrf	((c:_timer0_init$103)),c
	clrf	((c:_timer0_init$103+1)),c
	goto	l2847
	
l2845:; BSR set to: 0

	movlw	high(020h)
	movwf	((c:_timer0_init$103+1)),c
	movlw	low(020h)
	movwf	((c:_timer0_init$103)),c
	
l2847:; BSR set to: 0

	movf	((c:_timer0_init$103)),c,w
	iorwf	((c:4053)),c	;volatile
	line	36
	
l2849:; BSR set to: 0

;timer.c: 36: T0CON |= (!!(ps_mode & 0x10)) ? 0x10 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(4)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2853
u2230:
	
l2851:; BSR set to: 0

	clrf	((c:_timer0_init$104)),c
	clrf	((c:_timer0_init$104+1)),c
	goto	l2855
	
l2853:; BSR set to: 0

	movlw	high(010h)
	movwf	((c:_timer0_init$104+1)),c
	movlw	low(010h)
	movwf	((c:_timer0_init$104)),c
	
l2855:; BSR set to: 0

	movf	((c:_timer0_init$104)),c,w
	iorwf	((c:4053)),c	;volatile
	line	39
	
l2857:; BSR set to: 0

;timer.c: 39: T0CON |= (!!(ps_mode & 0x40)) ? 0x40 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(6)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l2861
u2240:
	
l2859:; BSR set to: 0

	clrf	((c:_timer0_init$105)),c
	clrf	((c:_timer0_init$105+1)),c
	goto	l2863
	
l2861:; BSR set to: 0

	movlw	high(040h)
	movwf	((c:_timer0_init$105+1)),c
	movlw	low(040h)
	movwf	((c:_timer0_init$105)),c
	
l2863:; BSR set to: 0

	movf	((c:_timer0_init$105)),c,w
	iorwf	((c:4053)),c	;volatile
	line	43
	
l2865:; BSR set to: 0

;timer.c: 43: T0CON &= (!!prescaler) ? ~0x08 : ~0x00;
	movf	((c:timer0_init@prescaler)),c,w
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l2869
u2250:
	
l2867:; BSR set to: 0

	setf	((c:_timer0_init$106)),c
	setf	((c:_timer0_init$106+1)),c
	goto	l2871
	
l2869:; BSR set to: 0

	movlw	high(-9)
	movwf	((c:_timer0_init$106+1)),c
	movlw	low(-9)
	movwf	((c:_timer0_init$106)),c
	
l2871:; BSR set to: 0

	movf	((c:_timer0_init$106)),c,w
	andwf	((c:4053)),c	;volatile
	line	45
	
l2873:; BSR set to: 0

;timer.c: 45: T0CON &= ~0b111;
	movlw	(0F8h)&0ffh
	andwf	((c:4053)),c	;volatile
	line	47
;timer.c: 47: if(prescaler > 0) {
	movf	((c:timer0_init@prescaler)),c,w
	btfsc	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l2877
u2260:
	line	48
	
l2875:; BSR set to: 0

;timer.c: 48: T0CON |= (prescaler - 1) & 0b111;
	decf	((c:timer0_init@prescaler)),c,w
	andlw	low(07h)
	iorwf	((c:4053)),c	;volatile
	line	58
	
l2877:; BSR set to: 0

;timer.c: 54: }
;timer.c: 58: INTCON &= ~0x40;
	bcf	(0+(6/8)+(c:4082)),c,(6)&7	;volatile
	line	59
	
l2879:; BSR set to: 0

;timer.c: 59: INTCON |= (!!(ps_mode & 0x80)) ? 0x20 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(7)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2883
u2270:
	
l2881:; BSR set to: 0

	clrf	((c:_timer0_init$107)),c
	clrf	((c:_timer0_init$107+1)),c
	goto	l2885
	
l2883:; BSR set to: 0

	movlw	high(020h)
	movwf	((c:_timer0_init$107+1)),c
	movlw	low(020h)
	movwf	((c:_timer0_init$107)),c
	
l2885:; BSR set to: 0

	movf	((c:_timer0_init$107)),c,w
	iorwf	((c:4082)),c	;volatile
	line	60
	
l90:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer0_init
	__end_of_timer0_init:
	signat	_timer0_init,4216
	global	_print_indicator

;; *************** function _print_indicator *****************
;; Defined at:
;;		line 186 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  indicate        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  indicate        1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_gotoxy
;;		_lcd_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	186
global __ptext3
__ptext3:
psect	text3
	file	"../../../src/print.c"
	line	186
	global	__size_of_print_indicator
	__size_of_print_indicator	equ	__end_of_print_indicator-_print_indicator
	
_print_indicator:; BSR set to: 0

;incstack = 0
	opt	stack 25
;print_indicator@indicate stored from wreg
	movwf	((c:print_indicator@indicate)),c
	line	200
	
l2829:
;print.c: 200: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	201
	
l2831:
;print.c: 201: if(indicate) {
	movf	((c:print_indicator@indicate)),c,w
	btfsc	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l2835
u2210:
	line	202
	
l2833:
;print.c: 202: lcd_puts("-*-");
	movlw	(STR_10)&0ffh
	
	call	_lcd_puts
	line	203
;print.c: 203: } else {
	goto	l32
	line	204
	
l2835:
;print.c: 204: lcd_puts("   ");
	movlw	(STR_11)&0ffh
	
	call	_lcd_puts
	line	207
	
l32:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_print_indicator
	__end_of_print_indicator:
	signat	_print_indicator,4216
	global	_measure_inductance

;; *************** function _measure_inductance *****************
;; Defined at:
;;		line 201 in file "../../../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Lin             4   47[BANK0 ] unsigned char 
;;  denominator     4   12[BANK0 ] unsigned char 
;;  numerator       4    8[BANK0 ] unsigned char 
;;  var             2   45[BANK0 ] unsigned int 
;;  unit            1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0      43       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      43       0       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		___lwtofl
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"../../../src/measure.c"
	line	201
global __ptext4
__ptext4:
psect	text4
	file	"../../../src/measure.c"
	line	201
	global	__size_of_measure_inductance
	__size_of_measure_inductance	equ	__end_of_measure_inductance-_measure_inductance
	
_measure_inductance:
;incstack = 0
	opt	stack 24
	line	208
	
l3633:; BSR set to: 0

;measure.c: 202: uint8_t unit;
;measure.c: 203: uint16_t var;
;measure.c: 205: double Lin, numerator, denominator;
;measure.c: 208: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	209
	
l3635:
;measure.c: 209: put_str("Inductivity ");
	movlw	(STR_21)&0ffh
	
	call	_put_str
	line	211
	
l3637:
;measure.c: 211: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_inductance@var)
	movff	1+?_measure_freq,(measure_inductance@var+1)
	line	213
;measure.c: 213: F3 = (double)var;
	movff	(measure_inductance@var),(c:___lwtofl@c)
	movff	(measure_inductance@var+1),(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F3)
	movff	1+?___lwtofl,(_F3+1)
	movff	2+?___lwtofl,(_F3+2)
	movff	3+?___lwtofl,(_F3+3)
	
	line	214
;measure.c: 214: if(F3 > F1)
	movff	(_F1),(c:___flge@ff1)
	movff	(_F1+1),(c:___flge@ff1+1)
	movff	(_F1+2),(c:___flge@ff1+2)
	movff	(_F1+3),(c:___flge@ff1+3)
	movff	(_F3),(c:___flge@ff2)
	movff	(_F3+1),(c:___flge@ff2+1)
	movff	(_F3+2),(c:___flge@ff2+2)
	movff	(_F3+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3181
	goto	u3180
u3181:
	goto	l3641
u3180:
	line	215
	
l3639:
;measure.c: 215: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	216
	
l3641:
;measure.c: 216: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_F2),(c:___flsub@f2)
	movff	(_F2+1),(c:___flsub@f2+1)
	movff	(_F2+2),(c:___flsub@f2+2)
	movff	(_F2+3),(c:___flsub@f2+3)
	movff	(_F2),(c:___flsub@f1)
	movff	(_F2+1),(c:___flsub@f1+1)
	movff	(_F2+2),(c:___flsub@f1+2)
	movff	(_F2+3),(c:___flsub@f1+3)
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$1023)
	movff	1+?___flsub,(_measure_inductance$1023+1)
	movff	2+?___flsub,(_measure_inductance$1023+2)
	movff	3+?___flsub,(_measure_inductance$1023+3)
	
	
l3643:
;measure.c: 216: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1023),(c:___flsub@f2)
	movff	(_measure_inductance$1023+1),(c:___flsub@f2+1)
	movff	(_measure_inductance$1023+2),(c:___flsub@f2+2)
	movff	(_measure_inductance$1023+3),(c:___flsub@f2+3)
	movff	(_F1),(c:___flmul@f2)
	movff	(_F1+1),(c:___flmul@f2+1)
	movff	(_F1+2),(c:___flmul@f2+2)
	movff	(_F1+3),(c:___flmul@f2+3)
	movff	(_F1),(c:___flmul@f1)
	movff	(_F1+1),(c:___flmul@f1+1)
	movff	(_F1+2),(c:___flmul@f1+2)
	movff	(_F1+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f1)
	movff	1+?___flmul,(c:___flsub@f1+1)
	movff	2+?___flmul,(c:___flsub@f1+2)
	movff	3+?___flmul,(c:___flsub@f1+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$1024)
	movff	1+?___flsub,(_measure_inductance$1024+1)
	movff	2+?___flsub,(_measure_inductance$1024+2)
	movff	3+?___flsub,(_measure_inductance$1024+3)
	
	
l3645:
;measure.c: 216: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_F3),(c:___flmul@f1)
	movff	(_F3+1),(c:___flmul@f1+1)
	movff	(_F3+2),(c:___flmul@f1+2)
	movff	(_F3+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f2)
	movff	1+?___flmul,(c:___flsub@f2+1)
	movff	2+?___flmul,(c:___flsub@f2+2)
	movff	3+?___flmul,(c:___flsub@f2+3)
	
	movff	(_F1),(c:___flmul@f2)
	movff	(_F1+1),(c:___flmul@f2+1)
	movff	(_F1+2),(c:___flmul@f2+2)
	movff	(_F1+3),(c:___flmul@f2+3)
	movff	(_F1),(c:___flmul@f1)
	movff	(_F1+1),(c:___flmul@f1+1)
	movff	(_F1+2),(c:___flmul@f1+2)
	movff	(_F1+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f1)
	movff	1+?___flmul,(c:___flsub@f1+1)
	movff	2+?___flmul,(c:___flsub@f1+2)
	movff	3+?___flmul,(c:___flsub@f1+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$1025)
	movff	1+?___flsub,(_measure_inductance$1025+1)
	movff	2+?___flsub,(_measure_inductance$1025+2)
	movff	3+?___flsub,(_measure_inductance$1025+3)
	
	
l3647:
;measure.c: 216: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1024),(c:___flmul@f2)
	movff	(_measure_inductance$1024+1),(c:___flmul@f2+1)
	movff	(_measure_inductance$1024+2),(c:___flmul@f2+2)
	movff	(_measure_inductance$1024+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1025),(c:___flmul@f1)
	movff	(_measure_inductance$1025+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1025+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1025+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1026)
	movff	1+?___flmul,(_measure_inductance$1026+1)
	movff	2+?___flmul,(_measure_inductance$1026+2)
	movff	3+?___flmul,(_measure_inductance$1026+3)
	
	
l3649:
;measure.c: 216: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1026),(c:___flmul@f1)
	movff	(_measure_inductance$1026+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1026+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1026+3),(c:___flmul@f1+3)
	movlw	low(10000.000000000000)
	movwf	((c:___flmul@f2)),c
	movlw	high(10000.000000000000)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(10000.000000000000)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(10000.000000000000)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@numerator)
	movff	1+?___flmul,(measure_inductance@numerator+1)
	movff	2+?___flmul,(measure_inductance@numerator+2)
	movff	3+?___flmul,(measure_inductance@numerator+3)
	
	line	217
	
l3651:
;measure.c: 217: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F1),(c:___flmul@f2)
	movff	(_F1+1),(c:___flmul@f2+1)
	movff	(_F1+2),(c:___flmul@f2+2)
	movff	(_F1+3),(c:___flmul@f2+3)
	movff	(_F1),(c:___flmul@f1)
	movff	(_F1+1),(c:___flmul@f1+1)
	movff	(_F1+2),(c:___flmul@f1+2)
	movff	(_F1+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1027)
	movff	1+?___flmul,(_measure_inductance$1027+1)
	movff	2+?___flmul,(_measure_inductance$1027+2)
	movff	3+?___flmul,(_measure_inductance$1027+3)
	
	
l3653:
;measure.c: 217: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1027),(c:___flmul@f1)
	movff	(_measure_inductance$1027+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1027+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1027+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1024)
	movff	1+?___flmul,(_measure_inductance$1024+1)
	movff	2+?___flmul,(_measure_inductance$1024+2)
	movff	3+?___flmul,(_measure_inductance$1024+3)
	
	
l3655:
;measure.c: 217: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1024),(c:___flmul@f1)
	movff	(_measure_inductance$1024+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1024+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1024+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1025)
	movff	1+?___flmul,(_measure_inductance$1025+1)
	movff	2+?___flmul,(_measure_inductance$1025+2)
	movff	3+?___flmul,(_measure_inductance$1025+3)
	
	
l3657:
;measure.c: 217: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1025),(c:___flmul@f1)
	movff	(_measure_inductance$1025+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1025+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1025+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1026)
	movff	1+?___flmul,(_measure_inductance$1026+1)
	movff	2+?___flmul,(_measure_inductance$1026+2)
	movff	3+?___flmul,(_measure_inductance$1026+3)
	
	
l3659:
;measure.c: 217: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1026),(c:___flmul@f1)
	movff	(_measure_inductance$1026+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1026+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1026+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1028)
	movff	1+?___flmul,(_measure_inductance$1028+1)
	movff	2+?___flmul,(_measure_inductance$1028+2)
	movff	3+?___flmul,(_measure_inductance$1028+3)
	
	
l3661:
;measure.c: 217: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_CCal),(c:___flmul@f2)
	movff	(_CCal+1),(c:___flmul@f2+1)
	movff	(_CCal+2),(c:___flmul@f2+2)
	movff	(_CCal+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1028),(c:___flmul@f1)
	movff	(_measure_inductance$1028+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1028+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1028+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1029)
	movff	1+?___flmul,(_measure_inductance$1029+1)
	movff	2+?___flmul,(_measure_inductance$1029+2)
	movff	3+?___flmul,(_measure_inductance$1029+3)
	
	
l3663:
;measure.c: 217: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_measure_inductance$1029),(c:___flmul@f1)
	movff	(_measure_inductance$1029+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1029+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1029+3),(c:___flmul@f1+3)
	movlw	low(39.478417604357432)
	movwf	((c:___flmul@f2)),c
	movlw	high(39.478417604357432)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(39.478417604357432)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(39.478417604357432)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@denominator)
	movff	1+?___flmul,(measure_inductance@denominator+1)
	movff	2+?___flmul,(measure_inductance@denominator+2)
	movff	3+?___flmul,(measure_inductance@denominator+3)
	
	line	218
	
l3665:
;measure.c: 218: Lin = (numerator / denominator) * 1e+15l;
	movff	(measure_inductance@denominator),(c:___fldiv@f2)
	movff	(measure_inductance@denominator+1),(c:___fldiv@f2+1)
	movff	(measure_inductance@denominator+2),(c:___fldiv@f2+2)
	movff	(measure_inductance@denominator+3),(c:___fldiv@f2+3)
	movff	(measure_inductance@numerator),(c:___fldiv@f1)
	movff	(measure_inductance@numerator+1),(c:___fldiv@f1+1)
	movff	(measure_inductance@numerator+2),(c:___fldiv@f1+2)
	movff	(measure_inductance@numerator+3),(c:___fldiv@f1+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:___flmul@f1)
	movff	1+?___fldiv,(c:___flmul@f1+1)
	movff	2+?___fldiv,(c:___flmul@f1+2)
	movff	3+?___fldiv,(c:___flmul@f1+3)
	
	movlw	low(1000000000000000.0)
	movwf	((c:___flmul@f2)),c
	movlw	high(1000000000000000.0)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(1000000000000000.0)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(1000000000000000.0)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@Lin)
	movff	1+?___flmul,(measure_inductance@Lin+1)
	movff	2+?___flmul,(measure_inductance@Lin+2)
	movff	3+?___flmul,(measure_inductance@Lin+3)
	
	line	220
;measure.c: 220: if(Lin > 999) {
	movlw	low(999.00000000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999.00000000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999.00000000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999.00000000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_inductance@Lin),(c:___flge@ff2)
	movff	(measure_inductance@Lin+1),(c:___flge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___flge@ff2+2)
	movff	(measure_inductance@Lin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3191
	goto	u3190
u3191:
	goto	l3683
u3190:
	line	221
	
l3667:
;measure.c: 221: if(Lin > (999e+03l)) {
	movlw	low(999000.00000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999000.00000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999000.00000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999000.00000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_inductance@Lin),(c:___flge@ff2)
	movff	(measure_inductance@Lin+1),(c:___flge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___flge@ff2+2)
	movff	(measure_inductance@Lin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3201
	goto	u3200
u3201:
	goto	l3679
u3200:
	line	222
	
l3669:
;measure.c: 222: if(Lin > (999e+06l)) {
	movlw	low(999000000.00000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999000000.00000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999000000.00000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999000000.00000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_inductance@Lin),(c:___flge@ff2)
	movff	(measure_inductance@Lin+1),(c:___flge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___flge@ff2+2)
	movff	(measure_inductance@Lin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3211
	goto	u3210
u3211:
	goto	l3675
u3210:
	line	223
	
l3671:
;measure.c: 223: Lin = Lin / (1e+09l);
	movff	(measure_inductance@Lin),(c:___fldiv@f1)
	movff	(measure_inductance@Lin+1),(c:___fldiv@f1+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@f1+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@f1+3)
	movlw	low(1000000000.0000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000000000.0000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000000000.0000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000000000.0000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	224
	
l3673:
;measure.c: 224: unit = 0;
	movlb	0	; () banked
	clrf	((measure_inductance@unit))&0ffh
	line	225
;measure.c: 225: } else {
	goto	l3685
	line	226
	
l3675:
;measure.c: 226: Lin = Lin / (1e+06l);
	movff	(measure_inductance@Lin),(c:___fldiv@f1)
	movff	(measure_inductance@Lin+1),(c:___fldiv@f1+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@f1+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@f1+3)
	movlw	low(1000000.0000000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000000.0000000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000000.0000000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000000.0000000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	227
	
l3677:
;measure.c: 227: unit = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l3685
	line	230
	
l3679:
;measure.c: 230: Lin = Lin / 1e+03l;
	movff	(measure_inductance@Lin),(c:___fldiv@f1)
	movff	(measure_inductance@Lin+1),(c:___fldiv@f1+1)
	movff	(measure_inductance@Lin+2),(c:___fldiv@f1+2)
	movff	(measure_inductance@Lin+3),(c:___fldiv@f1+3)
	movlw	low(1000.0000000000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000.0000000000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000.0000000000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000.0000000000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_inductance@Lin)
	movff	1+?___fldiv,(measure_inductance@Lin+1)
	movff	2+?___fldiv,(measure_inductance@Lin+2)
	movff	3+?___fldiv,(measure_inductance@Lin+3)
	
	line	231
	
l3681:
;measure.c: 231: unit = 2;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l3685
	line	234
	
l3683:
;measure.c: 234: unit = 3;
	movlw	low(03h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	line	236
	
l3685:; BSR set to: 0

;measure.c: 236: Lin = Lin * 100;
	movff	(measure_inductance@Lin),(c:___flmul@f1)
	movff	(measure_inductance@Lin+1),(c:___flmul@f1+1)
	movff	(measure_inductance@Lin+2),(c:___flmul@f1+2)
	movff	(measure_inductance@Lin+3),(c:___flmul@f1+3)
	movlw	low(100.00000000000000)
	movwf	((c:___flmul@f2)),c
	movlw	high(100.00000000000000)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(100.00000000000000)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(100.00000000000000)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_inductance@Lin)
	movff	1+?___flmul,(measure_inductance@Lin+1)
	movff	2+?___flmul,(measure_inductance@Lin+2)
	movff	3+?___flmul,(measure_inductance@Lin+3)
	
	line	237
	
l3687:
;measure.c: 237: var = (uint16_t)Lin;
	movff	(measure_inductance@Lin),(___fltol@f1)
	movff	(measure_inductance@Lin+1),(___fltol@f1+1)
	movff	(measure_inductance@Lin+2),(___fltol@f1+2)
	movff	(measure_inductance@Lin+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_inductance@var)
	movff	1+?___fltol,(measure_inductance@var+1)
	line	239
	
l3689:; BSR set to: 0

;measure.c: 239: print_reading(var);
	movff	(measure_inductance@var),(c:print_reading@measurement)
	movff	(measure_inductance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	240
	
l3691:
;measure.c: 240: print_unit(unit);
	movlb	0	; () banked
	movf	((measure_inductance@unit))&0ffh,w
	
	call	_print_unit
	line	241
	
l431:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_measure_inductance
	__end_of_measure_inductance:
	signat	_measure_inductance,88
	global	_measure_capacitance

;; *************** function _measure_capacitance *****************
;; Defined at:
;;		line 123 in file "../../../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Cin             4   23[BANK0 ] unsigned char 
;;  var             2   21[BANK0 ] unsigned int 
;;  unit            1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0      19       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      19       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		___lwtofl
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	123
global __ptext5
__ptext5:
psect	text5
	file	"../../../src/measure.c"
	line	123
	global	__size_of_measure_capacitance
	__size_of_measure_capacitance	equ	__end_of_measure_capacitance-_measure_capacitance
	
_measure_capacitance:
;incstack = 0
	opt	stack 24
	line	131
	
l3595:; BSR set to: 0

;measure.c: 124: uint8_t unit;
;measure.c: 125: uint16_t var;
;measure.c: 127: double Cin;
;measure.c: 131: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	132
	
l3597:
;measure.c: 132: put_str("Capacity ");
	movlw	(STR_20)&0ffh
	
	call	_put_str
	line	134
	
l3599:
;measure.c: 134: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_capacitance@var)
	movff	1+?_measure_freq,(measure_capacitance@var+1)
	line	136
;measure.c: 136: F3 = (double)var;
	movff	(measure_capacitance@var),(c:___lwtofl@c)
	movff	(measure_capacitance@var+1),(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F3)
	movff	1+?___lwtofl,(_F3+1)
	movff	2+?___lwtofl,(_F3+2)
	movff	3+?___lwtofl,(_F3+3)
	
	line	161
;measure.c: 161: if(F3 > F1)
	movff	(_F1),(c:___flge@ff1)
	movff	(_F1+1),(c:___flge@ff1+1)
	movff	(_F1+2),(c:___flge@ff1+2)
	movff	(_F1+3),(c:___flge@ff1+3)
	movff	(_F3),(c:___flge@ff2)
	movff	(_F3+1),(c:___flge@ff2+1)
	movff	(_F3+2),(c:___flge@ff2+2)
	movff	(_F3+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3141
	goto	u3140
u3141:
	goto	l3603
u3140:
	line	162
	
l3601:
;measure.c: 162: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	164
	
l3603:
;measure.c: 164: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_F3),(c:___flmul@f1)
	movff	(_F3+1),(c:___flmul@f1+1)
	movff	(_F3+2),(c:___flmul@f1+2)
	movff	(_F3+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f2)
	movff	1+?___flmul,(c:___flsub@f2+1)
	movff	2+?___flmul,(c:___flsub@f2+2)
	movff	3+?___flmul,(c:___flsub@f2+3)
	
	movff	(_F1),(c:___flmul@f2)
	movff	(_F1+1),(c:___flmul@f2+1)
	movff	(_F1+2),(c:___flmul@f2+2)
	movff	(_F1+3),(c:___flmul@f2+3)
	movff	(_F1),(c:___flmul@f1)
	movff	(_F1+1),(c:___flmul@f1+1)
	movff	(_F1+2),(c:___flmul@f1+2)
	movff	(_F1+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f1)
	movff	1+?___flmul,(c:___flsub@f1+1)
	movff	2+?___flmul,(c:___flsub@f1+2)
	movff	3+?___flmul,(c:___flsub@f1+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_capacitance$1020)
	movff	1+?___flsub,(_measure_capacitance$1020+1)
	movff	2+?___flsub,(_measure_capacitance$1020+2)
	movff	3+?___flsub,(_measure_capacitance$1020+3)
	
;measure.c: 164: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_capacitance$1020),(c:___flmul@f1)
	movff	(_measure_capacitance$1020+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$1020+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$1020+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$1021)
	movff	1+?___flmul,(_measure_capacitance$1021+1)
	movff	2+?___flmul,(_measure_capacitance$1021+2)
	movff	3+?___flmul,(_measure_capacitance$1021+3)
	
;measure.c: 164: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_capacitance$1021),(c:___flmul@f1)
	movff	(_measure_capacitance$1021+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$1021+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$1021+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$1022)
	movff	1+?___flmul,(_measure_capacitance$1022+1)
	movff	2+?___flmul,(_measure_capacitance$1022+2)
	movff	3+?___flmul,(_measure_capacitance$1022+3)
	
;measure.c: 164: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_measure_capacitance$1022),(c:___flmul@f1)
	movff	(_measure_capacitance$1022+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$1022+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$1022+3),(c:___flmul@f1+3)
	movff	(_CCal),(c:___flmul@f2)
	movff	(_CCal+1),(c:___flmul@f2+1)
	movff	(_CCal+2),(c:___flmul@f2+2)
	movff	(_CCal+3),(c:___flmul@f2+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_capacitance@Cin)
	movff	1+?___flmul,(measure_capacitance@Cin+1)
	movff	2+?___flmul,(measure_capacitance@Cin+2)
	movff	3+?___flmul,(measure_capacitance@Cin+3)
	
	line	174
	
l3605:
;measure.c: 174: if(Cin > 999) {
	movlw	low(999.00000000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999.00000000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999.00000000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999.00000000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_capacitance@Cin),(c:___flge@ff2)
	movff	(measure_capacitance@Cin+1),(c:___flge@ff2+1)
	movff	(measure_capacitance@Cin+2),(c:___flge@ff2+2)
	movff	(measure_capacitance@Cin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3151
	goto	u3150
u3151:
	goto	l3623
u3150:
	line	175
	
l3607:
;measure.c: 175: if(Cin > (999e+03l)) {
	movlw	low(999000.00000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999000.00000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999000.00000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999000.00000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_capacitance@Cin),(c:___flge@ff2)
	movff	(measure_capacitance@Cin+1),(c:___flge@ff2+1)
	movff	(measure_capacitance@Cin+2),(c:___flge@ff2+2)
	movff	(measure_capacitance@Cin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3161
	goto	u3160
u3161:
	goto	l3619
u3160:
	line	176
	
l3609:
;measure.c: 176: if(Cin > (999e+06l)) {
	movlw	low(999000000.00000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(999000000.00000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(999000000.00000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(999000000.00000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(measure_capacitance@Cin),(c:___flge@ff2)
	movff	(measure_capacitance@Cin+1),(c:___flge@ff2+1)
	movff	(measure_capacitance@Cin+2),(c:___flge@ff2+2)
	movff	(measure_capacitance@Cin+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3171
	goto	u3170
u3171:
	goto	l3615
u3170:
	line	177
	
l3611:
;measure.c: 177: Cin = Cin / (1e+09);
	movff	(measure_capacitance@Cin),(c:___fldiv@f1)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@f1+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@f1+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@f1+3)
	movlw	low(1000000000.0000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000000000.0000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000000000.0000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000000000.0000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	178
	
l3613:
;measure.c: 178: unit = 4;
	movlw	low(04h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	179
;measure.c: 179: } else {
	goto	l3625
	line	180
	
l3615:
;measure.c: 180: Cin = Cin / (1e+06);
	movff	(measure_capacitance@Cin),(c:___fldiv@f1)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@f1+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@f1+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@f1+3)
	movlw	low(1000000.0000000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000000.0000000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000000.0000000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000000.0000000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	181
	
l3617:
;measure.c: 181: unit = 5;
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l3625
	line	184
	
l3619:
;measure.c: 184: Cin = Cin / 1e+03;
	movff	(measure_capacitance@Cin),(c:___fldiv@f1)
	movff	(measure_capacitance@Cin+1),(c:___fldiv@f1+1)
	movff	(measure_capacitance@Cin+2),(c:___fldiv@f1+2)
	movff	(measure_capacitance@Cin+3),(c:___fldiv@f1+3)
	movlw	low(1000.0000000000000)
	movwf	((c:___fldiv@f2)),c
	movlw	high(1000.0000000000000)
	movwf	((c:___fldiv@f2+1)),c
	movlw	low highword(1000.0000000000000)
	movwf	((c:___fldiv@f2+2)),c
	movlw	high highword(1000.0000000000000)
	movwf	((c:___fldiv@f2+3)),c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(measure_capacitance@Cin)
	movff	1+?___fldiv,(measure_capacitance@Cin+1)
	movff	2+?___fldiv,(measure_capacitance@Cin+2)
	movff	3+?___fldiv,(measure_capacitance@Cin+3)
	
	line	185
	
l3621:
;measure.c: 185: unit = 6;
	movlw	low(06h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l3625
	line	188
	
l3623:
;measure.c: 188: unit = 7;
	movlw	low(07h)
	movlb	0	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	190
	
l3625:; BSR set to: 0

;measure.c: 190: Cin = Cin * 100;
	movff	(measure_capacitance@Cin),(c:___flmul@f1)
	movff	(measure_capacitance@Cin+1),(c:___flmul@f1+1)
	movff	(measure_capacitance@Cin+2),(c:___flmul@f1+2)
	movff	(measure_capacitance@Cin+3),(c:___flmul@f1+3)
	movlw	low(100.00000000000000)
	movwf	((c:___flmul@f2)),c
	movlw	high(100.00000000000000)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(100.00000000000000)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(100.00000000000000)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_capacitance@Cin)
	movff	1+?___flmul,(measure_capacitance@Cin+1)
	movff	2+?___flmul,(measure_capacitance@Cin+2)
	movff	3+?___flmul,(measure_capacitance@Cin+3)
	
	line	191
	
l3627:
;measure.c: 191: var = (uint16_t)Cin;
	movff	(measure_capacitance@Cin),(___fltol@f1)
	movff	(measure_capacitance@Cin+1),(___fltol@f1+1)
	movff	(measure_capacitance@Cin+2),(___fltol@f1+2)
	movff	(measure_capacitance@Cin+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_capacitance@var)
	movff	1+?___fltol,(measure_capacitance@var+1)
	line	193
	
l3629:; BSR set to: 0

;measure.c: 193: print_reading(var);
	movff	(measure_capacitance@var),(c:print_reading@measurement)
	movff	(measure_capacitance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	194
	
l3631:
;measure.c: 194: print_unit(unit);
	movlb	0	; () banked
	movf	((measure_capacitance@unit))&0ffh,w
	
	call	_print_unit
	line	195
	
l421:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_measure_capacitance
	__end_of_measure_capacitance:
	signat	_measure_capacitance,88
	global	_print_unit

;; *************** function _print_unit *****************
;; Defined at:
;;		line 123 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_gotoxy
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	123
global __ptext6
__ptext6:
psect	text6
	file	"../../../src/print.c"
	line	123
	global	__size_of_print_unit
	__size_of_print_unit	equ	__end_of_print_unit-_print_unit
	
_print_unit:
;incstack = 0
	opt	stack 24
	line	132
	
l2713:; BSR set to: 0

;print.c: 131: static const char* units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
;print.c: 132: lcd_gotoxy(14, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0Eh)&0ffh
	
	call	_lcd_gotoxy
	line	136
;print.c: 136: lcd_gotoxy(16 - (buffer.n - buffer.p), 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlb	0	; () banked
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_print_unit+0+0)&0ffh,c
	movf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_print_unit+1+0)&0ffh,c
	movf	((??_print_unit+0+0)),c,w
	subwf	((??_print_unit+1+0)),c,w
	addlw	low(010h)
	
	call	_lcd_gotoxy
	line	143
	
l24:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_print_unit
	__end_of_print_unit:
	signat	_print_unit,4216
	global	_print_reading

;; *************** function _print_reading *****************
;; Defined at:
;;		line 146 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  measurement     2   51[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_format_number
;;		_lcd_gotoxy
;;		_lcd_puts
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	line	146
global __ptext7
__ptext7:
psect	text7
	file	"../../../src/print.c"
	line	146
	global	__size_of_print_reading
	__size_of_print_reading	equ	__end_of_print_reading-_print_reading
	
_print_reading:
;incstack = 0
	opt	stack 24
	line	173
	
l2715:; BSR set to: 0

;print.c: 173: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	174
	
l2717:
;print.c: 174: lcd_puts("     ");
	movlw	(STR_9)&0ffh
	
	call	_lcd_puts
	line	175
	
l2719:
;print.c: 175: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	177
	
l2721:
;print.c: 177: format_number(measurement / 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwdiv@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:_print_reading$1014)
	movff	1+?___lwdiv,(c:_print_reading$1014+1)
	
l2723:
;print.c: 177: format_number(measurement / 100, 10, 0);
	movff	(c:_print_reading$1014),(c:format_number@n)
	movff	(c:_print_reading$1014+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	179
	
l2725:
;print.c: 179: format_number(measurement % 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwmod@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwmod@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:_print_reading$1015)
	movff	1+?___lwmod,(c:_print_reading$1015+1)
	
l2727:
;print.c: 179: format_number(measurement % 100, 10, 0);
	movff	(c:_print_reading$1015),(c:format_number@n)
	movff	(c:_print_reading$1015+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	182
	
l27:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_print_reading
	__end_of_print_reading:
	signat	_print_reading,4216
	global	_lcd_puts

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 163 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_16(5), STR_15(6), STR_14(7), STR_13(7), 
;;		 -> STR_12(10), STR_11(4), STR_10(4), STR_9(6), 
;; Auto vars:     Size  Location     Type
;;  string          1    6[COMRAM] PTR const unsigned char 
;;		 -> STR_16(5), STR_15(6), STR_14(7), STR_13(7), 
;;		 -> STR_12(10), STR_11(4), STR_10(4), STR_9(6), 
;;  i               1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_print_reading
;;		_print_indicator
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	163
global __ptext8
__ptext8:
psect	text8
	file	"../../../lib/lcd44780.c"
	line	163
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:
;incstack = 0
	opt	stack 26
;lcd_puts@string stored from wreg
	movwf	((c:lcd_puts@string)),c
	line	165
	
l2567:
;lcd44780.c: 164: uint8_t i;
;lcd44780.c: 165: for(i = 0; string[i]; i++) lcd_send((string[i]), 1);
	clrf	((c:lcd_puts@i)),c
	goto	l2573
	
l2569:
	movlw	low(01h)
	movwf	((c:lcd_send@mode)),c
	movf	((c:lcd_puts@string)),c,w
	addwf	((c:lcd_puts@i)),c,w
	movwf	(??_lcd_puts+0+0)&0ffh,c
	movff	(??_lcd_puts+0+0),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_lcd_send
	
l2571:
	incf	((c:lcd_puts@i)),c
	
l2573:
	movf	((c:lcd_puts@string)),c,w
	addwf	((c:lcd_puts@i)),c,w
	movwf	(??_lcd_puts+0+0)&0ffh,c
	movff	(??_lcd_puts+0+0),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l2569
u1960:
	line	166
	
l184:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4216
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 484 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  fourbitmode     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fourbitmode     1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	484
global __ptext9
__ptext9:
psect	text9
	file	"../../../lib/lcd44780.c"
	line	484
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:
;incstack = 0
	opt	stack 29
;lcd_init@fourbitmode stored from wreg
	movwf	((c:lcd_init@fourbitmode)),c
	line	486
	
l2969:
;lcd44780.c: 486: LCD_ctrl = 0;
	movlb	0	; () banked
	clrf	((_LCD_ctrl))&0ffh
	line	487
	
l2971:; BSR set to: 0

;lcd44780.c: 487: LCD_function = (fourbitmode ? 0x00 : 0x10);
	movf	((c:lcd_init@fourbitmode)),c,w
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l234
u2360:
	
l2973:; BSR set to: 0

	movlw	high(010h)
	movwf	((c:_lcd_init$212+1)),c
	movlw	low(010h)
	movwf	((c:_lcd_init$212)),c
	goto	l236
	
l234:; BSR set to: 0

	clrf	((c:_lcd_init$212)),c
	clrf	((c:_lcd_init$212+1)),c
	
l236:; BSR set to: 0

	movff	(c:_lcd_init$212),(c:_LCD_function)
	line	489
;lcd44780.c: 489: LCD_lines = 0;
	clrf	((_LCD_lines))&0ffh
	line	491
;lcd44780.c: 491: LCD_mode = 0;
	clrf	((_LCD_mode))&0ffh
	line	493
	
l2975:; BSR set to: 0

;lcd44780.c: 493: TRISB &= ~0b0100;
	bcf	(0+(2/8)+(c:3987)),c,(2)&7	;volatile
	line	494
;lcd44780.c: 494: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	499
;lcd44780.c: 499: TRISB &= ~0b1000;
	bcf	(0+(3/8)+(c:3987)),c,(3)&7	;volatile
	line	500
;lcd44780.c: 500: LATB &= ~0b1000;
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	line	502
	
l2977:; BSR set to: 0

;lcd44780.c: 502: LATB &= ~0b11110000;
	movlw	(0Fh)&0ffh
	andwf	((c:3978)),c	;volatile
	line	512
	
l237:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,4216
	global	_lcd_begin

;; *************** function _lcd_begin *****************
;; Defined at:
;;		line 411 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  lines           1    wreg     unsigned char 
;;  dotsize         1    5[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lines           1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;;		_lcd_write4bits
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	411
global __ptext10
__ptext10:
psect	text10
	file	"../../../lib/lcd44780.c"
	line	411
	global	__size_of_lcd_begin
	__size_of_lcd_begin	equ	__end_of_lcd_begin-_lcd_begin
	
_lcd_begin:; BSR set to: 0

;incstack = 0
	opt	stack 26
;lcd_begin@lines stored from wreg
	movwf	((c:lcd_begin@lines)),c
	line	412
	
l2919:; BSR set to: 0

;lcd44780.c: 412: if(lines > 1)
		movlw	02h-1
	cpfsgt	((c:lcd_begin@lines)),c
	goto	u2321
	goto	u2320

u2321:
	goto	l2923
u2320:
	line	413
	
l2921:; BSR set to: 0

;lcd44780.c: 413: LCD_function |= 0x08;
	bsf	(0+(3/8)+(c:_LCD_function)),c,(3)&7
	line	416
	
l2923:; BSR set to: 0

;lcd44780.c: 416: LCD_lines = lines;
	movff	(c:lcd_begin@lines),(_LCD_lines)
	line	420
	
l2925:; BSR set to: 0

;lcd44780.c: 420: if((dotsize != 0) && (lines == 1))
	movf	((c:lcd_begin@dotsize)),c,w
	btfsc	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l2931
u2330:
	
l2927:; BSR set to: 0

		decf	((c:lcd_begin@lines)),c,w
	btfss	status,2
	goto	u2341
	goto	u2340

u2341:
	goto	l2931
u2340:
	line	421
	
l2929:; BSR set to: 0

;lcd44780.c: 421: LCD_function |= 0x04;
	bsf	(0+(2/8)+(c:_LCD_function)),c,(2)&7
	line	423
	
l2931:; BSR set to: 0

;lcd44780.c: 423: _delay((unsigned long)((15)*(16000000/4000.0)));
	movlw	78
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	235
u3267:
decfsz	wreg,f
	goto	u3267
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3267
	nop

	line	426
	
l2933:
;lcd44780.c: 426: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	427
	
l2935:
;lcd44780.c: 427: LATB &= ~0b1000;
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	line	430
	
l2937:
;lcd44780.c: 430: if(!(LCD_function & 0x10)) {
	
	btfsc	((c:_LCD_function)),c,(4)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l2949
u2350:
	line	434
	
l2939:
;lcd44780.c: 434: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	435
	
l2941:
;lcd44780.c: 435: _delay((unsigned long)((5)*(16000000/4000.0)));
	movlw	26
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	248
u3277:
decfsz	wreg,f
	goto	u3277
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3277
	nop2

	line	437
	
l2943:
;lcd44780.c: 437: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	438
;lcd44780.c: 438: _delay((unsigned long)((150)*(16000000/4000000.0)));
	movlw	200
u3287:
decfsz	wreg,f
	goto	u3287

	line	440
	
l2945:
;lcd44780.c: 440: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	441
	
l2947:
;lcd44780.c: 441: _delay((unsigned long)((150)*(16000000/4000000.0)));
	movlw	200
u3297:
decfsz	wreg,f
	goto	u3297

	line	443
;lcd44780.c: 443: lcd_write4bits(0x02);
	movlw	(02h)&0ffh
	
	call	_lcd_write4bits
	line	444
;lcd44780.c: 444: }
	goto	l2957
	line	450
	
l2949:
;lcd44780.c: 446: else {
;lcd44780.c: 450: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	451
	
l2951:
;lcd44780.c: 451: _delay((unsigned long)((5)*(16000000/4000.0)));
	movlw	26
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	248
u3307:
decfsz	wreg,f
	goto	u3307
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3307
	nop2

	line	454
	
l2953:
;lcd44780.c: 454: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	455
;lcd44780.c: 455: _delay((unsigned long)((5)*(16000000/4000.0)));
	movlw	26
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	248
u3317:
decfsz	wreg,f
	goto	u3317
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3317
	nop2

	line	459
	
l2955:
;lcd44780.c: 459: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	463
	
l2957:
;lcd44780.c: 460: }
;lcd44780.c: 463: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	466
	
l2959:
;lcd44780.c: 466: LCD_ctrl = 0x04 | 0x00 | 0x00;
	movlw	low(04h)
	movlb	0	; () banked
	movwf	((_LCD_ctrl))&0ffh
	line	467
	
l2961:; BSR set to: 0

;lcd44780.c: 467: lcd_command(0x08 | LCD_ctrl);
	movf	((_LCD_ctrl))&0ffh,w
	iorlw	low(08h)
	
	call	_lcd_command
	line	470
	
l2963:
;lcd44780.c: 470: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	471
	
l2965:
;lcd44780.c: 471: _delay((unsigned long)((2)*(16000000/4000.0)));
	movlw	11
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	98
u3327:
decfsz	wreg,f
	goto	u3327
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3327
	nop2

	line	474
;lcd44780.c: 474: LCD_mode = 0x02 | 0x00;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((_LCD_mode))&0ffh
	line	476
	
l2967:; BSR set to: 0

;lcd44780.c: 476: lcd_command(0x04 | LCD_mode);
	movf	((_LCD_mode))&0ffh,w
	iorlw	low(04h)
	
	call	_lcd_command
	line	477
	
l230:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_begin
	__end_of_lcd_begin:
	signat	_lcd_begin,8312
	global	_format_double

;; *************** function _format_double *****************
;; Defined at:
;;		line 77 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  num             4   55[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  weight          4   67[BANK0 ] unsigned char 
;;  m               2   73[BANK0 ] short 
;;  digit           2   71[BANK0 ] short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0      16       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      20       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___awtofl
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		_buffer_putch
;;		_floor
;;		_log10
;;		_pow
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"../../../lib/format.c"
	line	77
global __ptext11
__ptext11:
psect	text11
	file	"../../../lib/format.c"
	line	77
	global	__size_of_format_double
	__size_of_format_double	equ	__end_of_format_double-_format_double
	
_format_double:
;incstack = 0
	opt	stack 24
	line	78
	
l3533:
;format.c: 78: short m = (short)log10(num);
	movff	(format_double@num),(c:log10@x)
	movff	(format_double@num+1),(c:log10@x+1)
	movff	(format_double@num+2),(c:log10@x+2)
	movff	(format_double@num+3),(c:log10@x+3)
	call	_log10	;wreg free
	movff	0+?_log10,(___fltol@f1)
	movff	1+?_log10,(___fltol@f1+1)
	movff	2+?_log10,(___fltol@f1+2)
	movff	3+?_log10,(___fltol@f1+3)
	
	call	___fltol	;wreg free
	movff	0+?___fltol,(format_double@m)
	movff	1+?___fltol,(format_double@m+1)
	line	82
;format.c: 79: short digit;
;format.c: 82: while(num > 0 + 1.19209290e-07) {
	goto	l3553
	line	83
	
l3535:
;format.c: 83: double weight = pow(10.0l, m);
	movff	(format_double@m),(c:___awtofl@c)
	movff	(format_double@m+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(_format_double$1018)
	movff	1+?___awtofl,(_format_double$1018+1)
	movff	2+?___awtofl,(_format_double$1018+2)
	movff	3+?___awtofl,(_format_double$1018+3)
	
	
l3537:
;format.c: 83: double weight = pow(10.0l, m);
	movlw	low(10.000000000000000)
	movlb	0	; () banked
	movwf	((pow@x))&0ffh
	movlw	high(10.000000000000000)
	movwf	((pow@x+1))&0ffh
	movlw	low highword(10.000000000000000)
	movwf	((pow@x+2))&0ffh
	movlw	high highword(10.000000000000000)
	movwf	((pow@x+3))&0ffh
	movff	(_format_double$1018),(pow@y)
	movff	(_format_double$1018+1),(pow@y+1)
	movff	(_format_double$1018+2),(pow@y+2)
	movff	(_format_double$1018+3),(pow@y+3)
	call	_pow	;wreg free
	movff	0+?_pow,(format_double@weight)
	movff	1+?_pow,(format_double@weight+1)
	movff	2+?_pow,(format_double@weight+2)
	movff	3+?_pow,(format_double@weight+3)
	
	line	84
	
l3539:; BSR set to: 0

;format.c: 84: digit = (short)floor(num / weight);
	movff	(format_double@weight),(c:___fldiv@f2)
	movff	(format_double@weight+1),(c:___fldiv@f2+1)
	movff	(format_double@weight+2),(c:___fldiv@f2+2)
	movff	(format_double@weight+3),(c:___fldiv@f2+3)
	movff	(format_double@num),(c:___fldiv@f1)
	movff	(format_double@num+1),(c:___fldiv@f1+1)
	movff	(format_double@num+2),(c:___fldiv@f1+2)
	movff	(format_double@num+3),(c:___fldiv@f1+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(floor@x)
	movff	1+?___fldiv,(floor@x+1)
	movff	2+?___fldiv,(floor@x+2)
	movff	3+?___fldiv,(floor@x+3)
	
	call	_floor	;wreg free
	movff	0+?_floor,(_format_double$1019)
	movff	1+?_floor,(_format_double$1019+1)
	movff	2+?_floor,(_format_double$1019+2)
	movff	3+?_floor,(_format_double$1019+3)
	
	
l3541:
;format.c: 84: digit = (short)floor(num / weight);
	movff	(_format_double$1019),(___fltol@f1)
	movff	(_format_double$1019+1),(___fltol@f1+1)
	movff	(_format_double$1019+2),(___fltol@f1+2)
	movff	(_format_double$1019+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(format_double@digit)
	movff	1+?___fltol,(format_double@digit+1)
	line	85
	
l3543:; BSR set to: 0

;format.c: 85: num -= (digit * weight);
	movff	(format_double@num),(c:___flsub@f1)
	movff	(format_double@num+1),(c:___flsub@f1+1)
	movff	(format_double@num+2),(c:___flsub@f1+2)
	movff	(format_double@num+3),(c:___flsub@f1+3)
	movff	(format_double@weight),(c:___flmul@f2)
	movff	(format_double@weight+1),(c:___flmul@f2+1)
	movff	(format_double@weight+2),(c:___flmul@f2+2)
	movff	(format_double@weight+3),(c:___flmul@f2+3)
	movff	(format_double@digit),(c:___awtofl@c)
	movff	(format_double@digit+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(c:___flmul@f1)
	movff	1+?___awtofl,(c:___flmul@f1+1)
	movff	2+?___awtofl,(c:___flmul@f1+2)
	movff	3+?___awtofl,(c:___flmul@f1+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@f2)
	movff	1+?___flmul,(c:___flsub@f2+1)
	movff	2+?___flmul,(c:___flsub@f2+2)
	movff	3+?___flmul,(c:___flsub@f2+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(format_double@num)
	movff	1+?___flsub,(format_double@num+1)
	movff	2+?___flsub,(format_double@num+2)
	movff	3+?___flsub,(format_double@num+3)
	
	line	86
	
l3545:
;format.c: 86: buffer_putch((char)('0' + digit));
	movlb	0	; () banked
	movf	((format_double@digit))&0ffh,w
	addlw	low(030h)
	
	call	_buffer_putch
	line	87
	
l3547:; BSR set to: 0

;format.c: 87: if(m == 0)
	movf	((format_double@m))&0ffh,w
iorwf	((format_double@m+1))&0ffh,w
	btfss	status,2
	goto	u3111
	goto	u3110

u3111:
	goto	l3551
u3110:
	line	88
	
l3549:; BSR set to: 0

;format.c: 88: buffer_putch('.');
	movlw	(02Eh)&0ffh
	
	call	_buffer_putch
	line	89
	
l3551:; BSR set to: 0

;format.c: 89: m--;
	decf	((format_double@m))&0ffh
	btfss	status,0
	decf	((format_double@m+1))&0ffh
	line	82
	
l3553:; BSR set to: 0

	movlw	low(1.1920929000000001e-007)
	movwf	((c:___flge@ff1)),c
	movlw	high(1.1920929000000001e-007)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(1.1920929000000001e-007)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(1.1920929000000001e-007)
	movwf	((c:___flge@ff1+3)),c
	movff	(format_double@num),(c:___flge@ff2)
	movff	(format_double@num+1),(c:___flge@ff2+1)
	movff	(format_double@num+2),(c:___flge@ff2+2)
	movff	(format_double@num+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfss	status,0
	goto	u3121
	goto	u3120
u3121:
	goto	l3535
u3120:
	line	91
	
l147:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_format_double
	__end_of_format_double:
	signat	_format_double,4216
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               4   34[BANK0 ] short 
;;  y               4   38[BANK0 ] short 
;; Auto vars:     Size  Location     Type
;;  yi              4   51[BANK0 ] unsigned long 
;;  sign            1   50[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   34[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       8       0       0       0       0       0
;;      Locals:         0      13       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      21       0       0       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___flge
;;		___flmul
;;		___flneg
;;		___fltol
;;		___lltofl
;;		_exp
;;		_log
;; This function is called by:
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
	line	5
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:
;incstack = 0
	opt	stack 24
	line	7
	
l3495:; BSR set to: 0

	clrf	((pow@sign))&0ffh
	line	10
	
l3497:; BSR set to: 0

	movf	((pow@x))&0ffh,w
iorwf	((pow@x+1))&0ffh,w
iorwf	((pow@x+2))&0ffh,w
iorwf	((pow@x+3))&0ffh,w
	btfss	status,2
	goto	u3061
	goto	u3060

u3061:
	goto	l3501
u3060:
	line	11
	
l3499:; BSR set to: 0

	movlw	low(0.0000000000000000)
	movwf	((c:___flge@ff1)),c
	movlw	high(0.0000000000000000)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(0.0000000000000000)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(0.0000000000000000)
	movwf	((c:___flge@ff1+3)),c
	movff	(pow@y),(c:___flge@ff2)
	movff	(pow@y+1),(c:___flge@ff2+1)
	movff	(pow@y+2),(c:___flge@ff2+2)
	movff	(pow@y+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	line	13
	
l1019:
	line	14
	movlb	0	; () banked
	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l1020
	line	16
	
l3501:; BSR set to: 0

	movf	((pow@y))&0ffh,w
iorwf	((pow@y+1))&0ffh,w
iorwf	((pow@y+2))&0ffh,w
iorwf	((pow@y+3))&0ffh,w
	btfss	status,2
	goto	u3071
	goto	u3070

u3071:
	goto	l3507
u3070:
	line	17
	
l3503:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((?_pow))&0ffh
	movlw	high(1.0000000000000000)
	movwf	((?_pow+1))&0ffh
	movlw	low highword(1.0000000000000000)
	movwf	((?_pow+2))&0ffh
	movlw	high highword(1.0000000000000000)
	movwf	((?_pow+3))&0ffh
	goto	l1020
	line	18
	
l3507:; BSR set to: 0

	btfsc	((pow@x+3))&0ffh,7
	goto	u3080
	goto	u3081

u3081:
	goto	l3517
u3080:
	line	19
	
l3509:; BSR set to: 0

	movff	(pow@y),(___fltol@f1)
	movff	(pow@y+1),(___fltol@f1+1)
	movff	(pow@y+2),(___fltol@f1+2)
	movff	(pow@y+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(pow@yi)
	movff	1+?___fltol,(pow@yi+1)
	movff	2+?___fltol,(pow@yi+2)
	movff	3+?___fltol,(pow@yi+3)
	
	line	20
	movff	(pow@yi),(c:___lltofl@c)
	movff	(pow@yi+1),(c:___lltofl@c+1)
	movff	(pow@yi+2),(c:___lltofl@c+2)
	movff	(pow@yi+3),(c:___lltofl@c+3)
	call	___lltofl	;wreg free
	movlb	0	; () banked
	movf	((pow@y))&0ffh,w
xorwf	(0+?___lltofl),c,w
	bnz	u3090
movf	((pow@y+1))&0ffh,w
xorwf	(1+?___lltofl),c,w
	bnz	u3090
movf	((pow@y+2))&0ffh,w
xorwf	(2+?___lltofl),c,w
	bnz	u3090
movf	((pow@y+3))&0ffh,w
xorwf	(3+?___lltofl),c,w
	btfsc	status,2
	goto	u3091
	goto	u3090

u3091:
	goto	l3513
u3090:
	line	22
	
l3511:; BSR set to: 0

	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l1020
	line	24
	
l3513:; BSR set to: 0

	movf	((pow@yi))&0ffh,w
	andlw	low(01h)
	movwf	((pow@sign))&0ffh
	line	25
	
l3515:; BSR set to: 0

	movff	(pow@x),(c:___flneg@f1)
	movff	(pow@x+1),(c:___flneg@f1+1)
	movff	(pow@x+2),(c:___flneg@f1+2)
	movff	(pow@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(pow@x)
	movff	1+?___flneg,(pow@x+1)
	movff	2+?___flneg,(pow@x+2)
	movff	3+?___flneg,(pow@x+3)
	
	line	27
	
l3517:; BSR set to: 0

	movff	(pow@x),(c:log@x)
	movff	(pow@x+1),(c:log@x+1)
	movff	(pow@x+2),(c:log@x+2)
	movff	(pow@x+3),(c:log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(_pow$1031)
	movff	1+?_log,(_pow$1031+1)
	movff	2+?_log,(_pow$1031+2)
	movff	3+?_log,(_pow$1031+3)
	
	
l3519:
	movff	(_pow$1031),(c:___flmul@f1)
	movff	(_pow$1031+1),(c:___flmul@f1+1)
	movff	(_pow$1031+2),(c:___flmul@f1+2)
	movff	(_pow$1031+3),(c:___flmul@f1+3)
	movff	(pow@y),(c:___flmul@f2)
	movff	(pow@y+1),(c:___flmul@f2+1)
	movff	(pow@y+2),(c:___flmul@f2+2)
	movff	(pow@y+3),(c:___flmul@f2+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_pow$1032)
	movff	1+?___flmul,(_pow$1032+1)
	movff	2+?___flmul,(_pow$1032+2)
	movff	3+?___flmul,(_pow$1032+3)
	
	
l3521:
	movff	(_pow$1032),(exp@x)
	movff	(_pow$1032+1),(exp@x+1)
	movff	(_pow$1032+2),(exp@x+2)
	movff	(_pow$1032+3),(exp@x+3)
	call	_exp	;wreg free
	movff	0+?_exp,(pow@x)
	movff	1+?_exp,(pow@x+1)
	movff	2+?_exp,(pow@x+2)
	movff	3+?_exp,(pow@x+3)
	
	line	28
	
l3523:
	movlb	0	; () banked
	movf	((pow@sign))&0ffh,w
	btfsc	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l1024
u3100:
	line	29
	
l3525:; BSR set to: 0

	movff	(pow@x),(c:___flneg@f1)
	movff	(pow@x+1),(c:___flneg@f1+1)
	movff	(pow@x+2),(c:___flneg@f1+2)
	movff	(pow@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(?_pow)
	movff	1+?___flneg,(?_pow+1)
	movff	2+?___flneg,(?_pow+2)
	movff	3+?___flneg,(?_pow+3)
	
	goto	l1020
	
l1024:; BSR set to: 0

	line	30
	movff	(pow@x),(?_pow)
	movff	(pow@x+1),(?_pow+1)
	movff	(pow@x+2),(?_pow+2)
	movff	(pow@x+3),(?_pow+3)
	line	31
	
l1020:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8316
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               4   23[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   31[BANK0 ] int 
;;  sign            1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   23[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      11       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtofl
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flneg
;;		___flsub
;;		___fltol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	12
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	31
	
l3447:
	movlb	0	; () banked
	movf	((exp@x))&0ffh,w
iorwf	((exp@x+1))&0ffh,w
iorwf	((exp@x+2))&0ffh,w
iorwf	((exp@x+3))&0ffh,w
	btfss	status,2
	goto	u2981
	goto	u2980

u2981:
	goto	l3453
u2980:
	line	32
	
l3449:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((?_exp))&0ffh
	movlw	high(1.0000000000000000)
	movwf	((?_exp+1))&0ffh
	movlw	low highword(1.0000000000000000)
	movwf	((?_exp+2))&0ffh
	movlw	high highword(1.0000000000000000)
	movwf	((?_exp+3))&0ffh
	goto	l1046
	line	34
	
l3453:; BSR set to: 0

	movlw	low(709.78271289338397)
	movwf	((c:___flge@ff1)),c
	movlw	high(709.78271289338397)
	movwf	((c:___flge@ff1+1)),c
	movlw	low highword(709.78271289338397)
	movwf	((c:___flge@ff1+2)),c
	movlw	high highword(709.78271289338397)
	movwf	((c:___flge@ff1+3)),c
	movff	(exp@x),(c:___flge@ff2)
	movff	(exp@x+1),(c:___flge@ff2+1)
	movff	(exp@x+2),(c:___flge@ff2+2)
	movff	(exp@x+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u2991
	goto	u2990
u2991:
	goto	l3459
u2990:
	line	36
	
l3455:
	movlw	low(3.4028234699999998e+038)
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(3.4028234699999998e+038)
	movwf	((?_exp+1))&0ffh
	movlw	low highword(3.4028234699999998e+038)
	movwf	((?_exp+2))&0ffh
	movlw	high highword(3.4028234699999998e+038)
	movwf	((?_exp+3))&0ffh
	goto	l1046
	line	38
	
l3459:
	movff	(exp@x),(c:___flge@ff1)
	movff	(exp@x+1),(c:___flge@ff1+1)
	movff	(exp@x+2),(c:___flge@ff1+2)
	movff	(exp@x+3),(c:___flge@ff1+3)
	movlw	low(-745.13321910194111)
	movwf	((c:___flge@ff2)),c
	movlw	high(-745.13321910194111)
	movwf	((c:___flge@ff2+1)),c
	movlw	low highword(-745.13321910194111)
	movwf	((c:___flge@ff2+2)),c
	movlw	high highword(-745.13321910194111)
	movwf	((c:___flge@ff2+3)),c
	call	___flge	;wreg free
	btfsc	status,0
	goto	u3001
	goto	u3000
u3001:
	goto	l3463
u3000:
	line	40
	
l3461:
	movlb	0	; () banked
	clrf	((?_exp))&0ffh
	clrf	((?_exp+1))&0ffh
	clrf	((?_exp+2))&0ffh
	clrf	((?_exp+3))&0ffh

	goto	l1046
	line	43
	
l3463:
	movlb	0	; () banked
	btfsc	((exp@x+3))&0ffh,7
	goto	u3011
	goto	u3010

u3011:
	movlw	1
	goto	u3020
u3010:
	movlw	0
u3020:
	movwf	((exp@sign))&0ffh
	line	44
	
l3465:; BSR set to: 0

	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l3469
u3030:
	line	45
	
l3467:; BSR set to: 0

	movff	(exp@x),(c:___flneg@f1)
	movff	(exp@x+1),(c:___flneg@f1+1)
	movff	(exp@x+2),(c:___flneg@f1+2)
	movff	(exp@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(exp@x)
	movff	1+?___flneg,(exp@x+1)
	movff	2+?___flneg,(exp@x+2)
	movff	3+?___flneg,(exp@x+3)
	
	line	46
	
l3469:; BSR set to: 0

	movff	(exp@x),(c:___flmul@f1)
	movff	(exp@x+1),(c:___flmul@f1+1)
	movff	(exp@x+2),(c:___flmul@f1+2)
	movff	(exp@x+3),(c:___flmul@f1+3)
	movlw	low(1.4426950408999999)
	movwf	((c:___flmul@f2)),c
	movlw	high(1.4426950408999999)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(1.4426950408999999)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(1.4426950408999999)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(exp@x)
	movff	1+?___flmul,(exp@x+1)
	movff	2+?___flmul,(exp@x+2)
	movff	3+?___flmul,(exp@x+3)
	
	line	47
	
l3471:
	movff	(exp@x),(floor@x)
	movff	(exp@x+1),(floor@x+1)
	movff	(exp@x+2),(floor@x+2)
	movff	(exp@x+3),(floor@x+3)
	call	_floor	;wreg free
	movff	0+?_floor,(_exp$1033)
	movff	1+?_floor,(_exp$1033+1)
	movff	2+?_floor,(_exp$1033+2)
	movff	3+?_floor,(_exp$1033+3)
	
	
l3473:
	movff	(_exp$1033),(___fltol@f1)
	movff	(_exp$1033+1),(___fltol@f1+1)
	movff	(_exp$1033+2),(___fltol@f1+2)
	movff	(_exp$1033+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(exp@exponent)
	movff	1+?___fltol,(exp@exponent+1)
	line	48
	
l3475:; BSR set to: 0

	movff	(exp@x),(c:___flsub@f1)
	movff	(exp@x+1),(c:___flsub@f1+1)
	movff	(exp@x+2),(c:___flsub@f1+2)
	movff	(exp@x+3),(c:___flsub@f1+3)
	movff	(exp@exponent),(c:___awtofl@c)
	movff	(exp@exponent+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(c:___flsub@f2)
	movff	1+?___awtofl,(c:___flsub@f2+1)
	movff	2+?___awtofl,(c:___flsub@f2+2)
	movff	3+?___awtofl,(c:___flsub@f2+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(exp@x)
	movff	1+?___flsub,(exp@x+1)
	movff	2+?___flsub,(exp@x+2)
	movff	3+?___flsub,(exp@x+3)
	
	line	49
	
l3477:
	movff	(exp@x),(c:eval_poly@x)
	movff	(exp@x+1),(c:eval_poly@x+1)
	movff	(exp@x+2),(c:eval_poly@x+2)
	movff	(exp@x+3),(c:eval_poly@x+3)
		movlw	low(exp@coeff)
	movwf	((c:eval_poly@d)),c

	movlw	high(09h)
	movwf	((c:eval_poly@n+1)),c
	movlw	low(09h)
	movwf	((c:eval_poly@n)),c
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(c:ldexp@value)
	movff	1+?_eval_poly,(c:ldexp@value+1)
	movff	2+?_eval_poly,(c:ldexp@value+2)
	movff	3+?_eval_poly,(c:ldexp@value+3)
	
	movff	(exp@exponent),(c:ldexp@newexp)
	movff	(exp@exponent+1),(c:ldexp@newexp+1)
	call	_ldexp	;wreg free
	movff	0+?_ldexp,(exp@x)
	movff	1+?_ldexp,(exp@x+1)
	movff	2+?_ldexp,(exp@x+2)
	movff	3+?_ldexp,(exp@x+3)
	
	line	50
	
l3479:
	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l1050
u3040:
	line	52
	
l3481:; BSR set to: 0

		incf	((exp@x))&0ffh,w
	bnz	u3051
	incf	((exp@x+1))&0ffh,w
	bnz	u3051
	movlw	127
	xorwf	((exp@x+2))&0ffh,w
	bnz	u3051
	movlw	127
	xorwf	((exp@x+3))&0ffh,w
	btfss	status,2
	goto	u3051
	goto	u3050

u3051:
	goto	l3485
u3050:
	line	53
	
l3483:; BSR set to: 0

	clrf	((?_exp))&0ffh
	clrf	((?_exp+1))&0ffh
	clrf	((?_exp+2))&0ffh
	clrf	((?_exp+3))&0ffh

	goto	l1046
	line	54
	
l3485:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((c:___fldiv@f1)),c
	movlw	high(1.0000000000000000)
	movwf	((c:___fldiv@f1+1)),c
	movlw	low highword(1.0000000000000000)
	movwf	((c:___fldiv@f1+2)),c
	movlw	high highword(1.0000000000000000)
	movwf	((c:___fldiv@f1+3)),c
	movff	(exp@x),(c:___fldiv@f2)
	movff	(exp@x+1),(c:___fldiv@f2+1)
	movff	(exp@x+2),(c:___fldiv@f2+2)
	movff	(exp@x+3),(c:___fldiv@f2+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(?_exp)
	movff	1+?___fldiv,(?_exp+1)
	movff	2+?___fldiv,(?_exp+2)
	movff	3+?___fldiv,(?_exp+3)
	
	goto	l1046
	line	55
	
l1050:; BSR set to: 0

	line	56
	movff	(exp@x),(?_exp)
	movff	(exp@x+1),(?_exp+1)
	movff	(exp@x+2),(?_exp+2)
	movff	(exp@x+3),(?_exp+3)
	line	57
	
l1046:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4220
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4   77[COMRAM] unsigned char 
;;  newexp          2   81[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   77[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	277
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:
;incstack = 0
	opt	stack 26
	line	279
	
l2485:
	movf	((c:ldexp@value)),c,w
iorwf	((c:ldexp@value+1)),c,w
iorwf	((c:ldexp@value+2)),c,w
iorwf	((c:ldexp@value+3)),c,w
	btfss	status,2
	goto	u1831
	goto	u1830

u1831:
	goto	l2489
u1830:
	line	280
	
l2487:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c
	clrf	((c:?_ldexp+3)),c

	goto	l788
	line	282
	
l2489:
	movf	(0+((c:ldexp@value)+03h)),c,w
	andlw	(1<<7)-1
	movwf	(??_ldexp+0+0)&0ffh,c
	clrf	(??_ldexp+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_ldexp+0+0),c,f
	rlcf	(??_ldexp+0+1),c,f
	movf	(??_ldexp+0+0),c,w
	addwf	((c:ldexp@newexp)),c
	movf	(??_ldexp+0+1),c,w
	addwfc	((c:ldexp@newexp+1)),c

	line	283
	btfsc	(0+((c:ldexp@value)+02h)),c,7
	goto	u1841
	goto	u1840
u1841:
	movlw	1
	goto	u1846
u1840:
	movlw	0
u1846:
	addwf	((c:ldexp@newexp)),c
	movlw	0
	addwfc	((c:ldexp@newexp+1)),c
	line	287
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u1850
	goto	u1851

u1851:
	goto	l2495
u1850:
	line	289
	
l2491:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c
	clrf	((c:?_ldexp+3)),c

	goto	l788
	line	291
	
l2495:
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u1861
	decf	((c:ldexp@newexp+1)),c,w
	btfss	status,0
	goto	u1861
	goto	u1860

u1861:
	goto	l2509
u1860:
	line	293
	
l2497:
	btfsc	((c:ldexp@value+3)),c,7
	goto	u1870
	goto	u1871

u1871:
	goto	l2505
u1870:
	line	294
	
l2499:
	movlw	low(-3.4028234699999998e+038)
	movwf	((c:?_ldexp)),c
	movlw	high(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+2)),c
	movlw	high highword(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+3)),c
	goto	l788
	line	296
	
l2505:
	movlw	low(3.4028234699999998e+038)
	movwf	((c:?_ldexp)),c
	movlw	high(3.4028234699999998e+038)
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(3.4028234699999998e+038)
	movwf	((c:?_ldexp+2)),c
	movlw	high highword(3.4028234699999998e+038)
	movwf	((c:?_ldexp+3)),c
	goto	l788
	line	300
	
l2509:
	rlcf	((c:ldexp@newexp+1)),c,w
	rrcf	((c:ldexp@newexp+1)),c,w
	movwf	(??_ldexp+0+0+1)&0ffh,c
	rrcf	((c:ldexp@newexp)),c,w
	movwf	(??_ldexp+0+0)&0ffh,c
	movf	(0+((c:ldexp@value)+03h)),c,w
	xorwf	(??_ldexp+0+0),c,w
	andlw	not ((1<<7)-1)
	xorwf	(??_ldexp+0+0),c,w
	movwf	(0+((c:ldexp@value)+03h)),c
	line	301
	movff	(c:ldexp@newexp),??_ldexp+0+0
	movlw	01h
	andwf	(??_ldexp+0+0),c
	rrcf	(??_ldexp+0+0),c
	rrcf	(??_ldexp+0+0),c
	movf	(0+((c:ldexp@value)+02h)),c,w
	xorwf	(??_ldexp+0+0),c,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0+0),c,w
	movwf	(0+((c:ldexp@value)+02h)),c
	line	306
	
l2511:
	movff	(c:ldexp@value),(c:?_ldexp)
	movff	(c:ldexp@value+1),(c:?_ldexp+1)
	movff	(c:ldexp@value+2),(c:?_ldexp+2)
	movff	(c:ldexp@value+3),(c:?_ldexp+3)
	line	307
	
l788:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8316
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               4   13[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               4   17[BANK0 ] int 
;;  expon           2   21[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  4   13[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___altofl
;;		___fladd
;;		___flge
;;		___fltol
;;		_frexp
;; This function is called by:
;;		_format_double
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
	line	13
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:
;incstack = 0
	opt	stack 24
	line	18
	
l3345:
	movff	(floor@x),(c:frexp@value)
	movff	(floor@x+1),(c:frexp@value+1)
	movff	(floor@x+2),(c:frexp@value+2)
	movff	(floor@x+3),(c:frexp@value+3)
		movlw	low(floor@expon)
	movwf	((c:frexp@eptr)),c

	call	_frexp	;wreg free
	line	19
	
l3347:
	movlb	0	; () banked
	btfsc	((floor@expon+1))&0ffh,7
	goto	u2860
	goto	u2861

u2861:
	goto	l3355
u2860:
	line	20
	
l3349:; BSR set to: 0

	btfsc	((floor@x+3))&0ffh,7
	goto	u2870
	goto	u2871

u2871:
	goto	l755
u2870:
	line	21
	
l3351:; BSR set to: 0

	movlw	low(-1.0000000000000000)
	movwf	((?_floor))&0ffh
	movlw	high(-1.0000000000000000)
	movwf	((?_floor+1))&0ffh
	movlw	low highword(-1.0000000000000000)
	movwf	((?_floor+2))&0ffh
	movlw	high highword(-1.0000000000000000)
	movwf	((?_floor+3))&0ffh
	goto	l756
	
l755:; BSR set to: 0

	line	22
	clrf	((?_floor))&0ffh
	clrf	((?_floor+1))&0ffh
	clrf	((?_floor+2))&0ffh
	clrf	((?_floor+3))&0ffh

	goto	l756
	line	24
	
l3355:; BSR set to: 0

		movf	((floor@expon+1))&0ffh,w
	bnz	u2880
	movlw	29
	subwf	 ((floor@expon))&0ffh,w
	btfss	status,0
	goto	u2881
	goto	u2880

u2881:
	goto	l3359
u2880:
	line	25
	
l3357:; BSR set to: 0

	movff	(floor@x),(?_floor)
	movff	(floor@x+1),(?_floor+1)
	movff	(floor@x+2),(?_floor+2)
	movff	(floor@x+3),(?_floor+3)
	goto	l756
	line	26
	
l3359:; BSR set to: 0

	movff	(floor@x),(___fltol@f1)
	movff	(floor@x+1),(___fltol@f1+1)
	movff	(floor@x+2),(___fltol@f1+2)
	movff	(floor@x+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(___altofl@c)
	movff	1+?___fltol,(___altofl@c+1)
	movff	2+?___fltol,(___altofl@c+2)
	movff	3+?___fltol,(___altofl@c+3)
	
	call	___altofl	;wreg free
	movff	0+?___altofl,(floor@i)
	movff	1+?___altofl,(floor@i+1)
	movff	2+?___altofl,(floor@i+2)
	movff	3+?___altofl,(floor@i+3)
	
	line	27
	movff	(floor@x),(c:___flge@ff1)
	movff	(floor@x+1),(c:___flge@ff1+1)
	movff	(floor@x+2),(c:___flge@ff1+2)
	movff	(floor@x+3),(c:___flge@ff1+3)
	movff	(floor@i),(c:___flge@ff2)
	movff	(floor@i+1),(c:___flge@ff2+1)
	movff	(floor@i+2),(c:___flge@ff2+2)
	movff	(floor@i+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u2891
	goto	u2890
u2891:
	goto	l758
u2890:
	line	28
	
l3361:
	movff	(floor@i),(c:___fladd@f1)
	movff	(floor@i+1),(c:___fladd@f1+1)
	movff	(floor@i+2),(c:___fladd@f1+2)
	movff	(floor@i+3),(c:___fladd@f1+3)
	movlw	low(-1.0000000000000000)
	movwf	((c:___fladd@f2)),c
	movlw	high(-1.0000000000000000)
	movwf	((c:___fladd@f2+1)),c
	movlw	low highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+2)),c
	movlw	high highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+3)),c
	call	___fladd	;wreg free
	movff	0+?___fladd,(?_floor)
	movff	1+?___fladd,(?_floor+1)
	movff	2+?___fladd,(?_floor+2)
	movff	3+?___fladd,(?_floor+3)
	
	goto	l756
	
l758:
	line	29
	movff	(floor@i),(?_floor)
	movff	(floor@i+1),(?_floor+1)
	movff	(floor@i+2),(?_floor+2)
	movff	(floor@i+3),(?_floor+3)
	line	30
	
l756:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4220
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exp1            1   92[COMRAM] unsigned char 
;;  sign1           1   91[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0
;;      Totals:         2       8       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_floor
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
	line	43
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
	line	43
	global	__size_of___fltol
	__size_of___fltol	equ	__end_of___fltol-___fltol
	
___fltol:
;incstack = 0
	opt	stack 28
	line	47
	
l2353:
	movlb	0	; () banked
	rlcf	((___fltol@f1+2))&0ffh,w
	rlcf	((___fltol@f1+3))&0ffh,w
	movwf	((c:___fltol@exp1)),c
	movf	((c:___fltol@exp1)),c,w
	btfss	status,2
	goto	u1651
	goto	u1650
u1651:
	goto	l2357
u1650:
	line	48
	
l2355:; BSR set to: 0

	clrf	((?___fltol))&0ffh
	clrf	((?___fltol+1))&0ffh
	clrf	((?___fltol+2))&0ffh
	clrf	((?___fltol+3))&0ffh

	goto	l768
	line	49
	
l2357:; BSR set to: 0

	movff	(___fltol@f1),??___fltol+0+0
	movff	(___fltol@f1+1),??___fltol+0+0+1
	movff	(___fltol@f1+2),??___fltol+0+0+2
	movff	(___fltol@f1+3),??___fltol+0+0+3
	movlw	01Fh+1
	goto	u1660
u1665:
	bcf	status,0
	rrcf	(??___fltol+0+3)&0ffh
	rrcf	(??___fltol+0+2)&0ffh
	rrcf	(??___fltol+0+1)&0ffh
	rrcf	(??___fltol+0+0)&0ffh
u1660:
	decfsz	wreg
	goto	u1665
	movf	(??___fltol+0+0)&0ffh,w
	movwf	((c:___fltol@sign1)),c
	line	50
	
l2359:; BSR set to: 0

	bsf	(0+(23/8)+(___fltol@f1))&0ffh,(23)&7
	line	51
	
l2361:; BSR set to: 0

	movlw	0FFh
	andwf	((___fltol@f1))&0ffh
	movlw	0FFh
	andwf	((___fltol@f1+1))&0ffh
	movlw	0FFh
	andwf	((___fltol@f1+2))&0ffh
	movlw	0
	andwf	((___fltol@f1+3))&0ffh
	line	52
	
l2363:; BSR set to: 0

	movlw	(096h)&0ffh
	subwf	((c:___fltol@exp1)),c
	line	53
	
l2365:; BSR set to: 0

	btfsc	((c:___fltol@exp1)),c,7
	goto	u1670
	goto	u1671

u1671:
	goto	l2375
u1670:
	line	54
	
l2367:; BSR set to: 0

		movf	((c:___fltol@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u1681
	goto	u1680

u1681:
	goto	l2371
u1680:
	goto	l2355
	line	57
	
l2371:; BSR set to: 0

	bcf	status,0
	rrcf	((___fltol@f1+3))&0ffh
	rrcf	((___fltol@f1+2))&0ffh
	rrcf	((___fltol@f1+1))&0ffh
	rrcf	((___fltol@f1))&0ffh
	line	58
	
l2373:; BSR set to: 0

	incfsz	((c:___fltol@exp1)),c
	
	goto	l2371
	goto	l2383
	line	60
	
l2375:; BSR set to: 0

		movlw	020h-1
	cpfsgt	((c:___fltol@exp1)),c
	goto	u1691
	goto	u1690

u1691:
	goto	l2381
u1690:
	goto	l2355
	line	63
	
l2379:; BSR set to: 0

	bcf	status,0
	rlcf	((___fltol@f1))&0ffh
	rlcf	((___fltol@f1+1))&0ffh
	rlcf	((___fltol@f1+2))&0ffh
	rlcf	((___fltol@f1+3))&0ffh
	line	64
	decf	((c:___fltol@exp1)),c
	line	62
	
l2381:; BSR set to: 0

	movf	((c:___fltol@exp1)),c,w
	btfss	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l2379
u1700:
	line	67
	
l2383:; BSR set to: 0

	movf	((c:___fltol@sign1)),c,w
	btfsc	status,2
	goto	u1711
	goto	u1710
u1711:
	goto	l2387
u1710:
	line	68
	
l2385:; BSR set to: 0

	comf	((___fltol@f1+3))&0ffh
	comf	((___fltol@f1+2))&0ffh
	comf	((___fltol@f1+1))&0ffh
	negf	((___fltol@f1))&0ffh
	movlw	0
	addwfc	((___fltol@f1+1))&0ffh
	addwfc	((___fltol@f1+2))&0ffh
	addwfc	((___fltol@f1+3))&0ffh
	line	69
	
l2387:; BSR set to: 0

	movff	(___fltol@f1),(?___fltol)
	movff	(___fltol@f1+1),(?___fltol+1)
	movff	(___fltol@f1+2),(?___fltol+2)
	movff	(___fltol@f1+3),(?___fltol+3)
	line	70
	
l768:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    1[COMRAM] long 
;;  ff2             4    5[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_floor
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
	line	4
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
	line	4
	global	__size_of___flge
	__size_of___flge	equ	__end_of___flge-___flge
	
___flge:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	6
	
l2319:
	
	btfss	((c:___flge@ff1+3)),c,(31)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l2323
u1600:
	line	7
	
l2321:
	negf	((c:___flge@ff1)),c
	comf	((c:___flge@ff1+1)),c
	btfsc	status,0
	incf	((c:___flge@ff1+1)),c
	comf	((c:___flge@ff1+2)),c
	btfsc	status,0
	incf	((c:___flge@ff1+2)),c
	movlw	high highword(-2147483648)
	subfwb	((c:___flge@ff1+3)),c
	line	8
	
l2323:
	
	btfss	((c:___flge@ff2+3)),c,(31)&7
	goto	u1611
	goto	u1610
u1611:
	goto	l717
u1610:
	line	9
	
l2325:
	negf	((c:___flge@ff2)),c
	comf	((c:___flge@ff2+1)),c
	btfsc	status,0
	incf	((c:___flge@ff2+1)),c
	comf	((c:___flge@ff2+2)),c
	btfsc	status,0
	incf	((c:___flge@ff2+2)),c
	movlw	high highword(-2147483648)
	subfwb	((c:___flge@ff2+3)),c
	
l717:
	line	10
	movlw	0
	xorwf	((c:___flge@ff1)),c
	movlw	0
	xorwf	((c:___flge@ff1+1)),c
	movlw	0
	xorwf	((c:___flge@ff1+2)),c
	movlw	080h
	xorwf	((c:___flge@ff1+3)),c
	line	11
	movlw	0
	xorwf	((c:___flge@ff2)),c
	movlw	0
	xorwf	((c:___flge@ff2+1)),c
	movlw	0
	xorwf	((c:___flge@ff2+2)),c
	movlw	080h
	xorwf	((c:___flge@ff2+3)),c
	line	12
		movf	((c:___flge@ff2)),c,w
	subwf	((c:___flge@ff1)),c,w
	movf	((c:___flge@ff2+1)),c,w
	subwfb	((c:___flge@ff1+1)),c,w
	movf	((c:___flge@ff2+2)),c,w
	subwfb	((c:___flge@ff1+2)),c,w
	movf	((c:___flge@ff2+3)),c,w
	subwfb	((c:___flge@ff1+3)),c,w
	btfsc	status,0
	goto	u1621
	goto	u1620

u1621:
	goto	l2329
u1620:
	
l2327:
	bcf	status,0
	goto	l718
	
l2329:
	bsf	status,0
	line	13
	
l718:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___altofl

;; *************** function ___altofl *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       4       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
	line	36
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
	line	36
	global	__size_of___altofl
	__size_of___altofl	equ	__end_of___altofl-___altofl
	
___altofl:
;incstack = 0
	opt	stack 24
	line	40
	
l3227:; BSR set to: 0

	clrf	((___altofl@sign))&0ffh
	line	41
	
l3229:; BSR set to: 0

	btfsc	((___altofl@c+3))&0ffh,7
	goto	u2630
	goto	u2631

u2631:
	goto	l3235
u2630:
	line	42
	
l3231:; BSR set to: 0

	comf	((___altofl@c+3))&0ffh
	comf	((___altofl@c+2))&0ffh
	comf	((___altofl@c+1))&0ffh
	negf	((___altofl@c))&0ffh
	movlw	0
	addwfc	((___altofl@c+1))&0ffh
	addwfc	((___altofl@c+2))&0ffh
	addwfc	((___altofl@c+3))&0ffh
	line	43
	
l3233:; BSR set to: 0

	movlw	low(01h)
	movwf	((___altofl@sign))&0ffh
	line	45
	
l3235:; BSR set to: 0

	movff	(___altofl@c),(c:___flpack@arg)
	movff	(___altofl@c+1),(c:___flpack@arg+1)
	movff	(___altofl@c+2),(c:___flpack@arg+2)
	movff	(___altofl@c+3),(c:___flpack@arg+3)
	movlw	low(096h)
	movwf	((c:___flpack@exp)),c
	movff	(___altofl@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(?___altofl)
	movff	1+?___flpack,(?___altofl+1)
	movff	2+?___flpack,(?___altofl+2)
	movff	3+?___flpack,(?___altofl+3)
	
	line	46
	
l521:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___altofl
	__end_of___altofl:
	signat	___altofl,4220
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 20 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
;; Parameters:    Size  Location     Type
;;  f1              4   65[COMRAM] unsigned char 
;;  f2              4   69[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   65[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
	line	20
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
	line	20
	global	__size_of___flsub
	__size_of___flsub	equ	__end_of___flsub-___flsub
	
___flsub:
;incstack = 0
	opt	stack 26
	line	23
	
l3401:
	movf	((c:___flsub@f2)),c,w
iorwf	((c:___flsub@f2+1)),c,w
iorwf	((c:___flsub@f2+2)),c,w
iorwf	((c:___flsub@f2+3)),c,w
	btfsc	status,2
	goto	u2931
	goto	u2930

u2931:
	goto	l3405
u2930:
	line	24
	
l3403:
	movlw	0
	xorwf	((c:___flsub@f2)),c
	movlw	0
	xorwf	((c:___flsub@f2+1)),c
	movlw	0
	xorwf	((c:___flsub@f2+2)),c
	movlw	080h
	xorwf	((c:___flsub@f2+3)),c
	line	30
	
l3405:
	movff	(c:___flsub@f1),(c:___fladd@f1)
	movff	(c:___flsub@f1+1),(c:___fladd@f1+1)
	movff	(c:___flsub@f1+2),(c:___fladd@f1+2)
	movff	(c:___flsub@f1+3),(c:___fladd@f1+3)
	movff	(c:___flsub@f2),(c:___fladd@f2)
	movff	(c:___flsub@f2+1),(c:___fladd@f2+1)
	movff	(c:___flsub@f2+2),(c:___fladd@f2+2)
	movff	(c:___flsub@f2+3),(c:___fladd@f2+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:?___flsub)
	movff	1+?___fladd,(c:?___flsub+1)
	movff	2+?___fladd,(c:?___flsub+2)
	movff	3+?___fladd,(c:?___flsub+3)
	
	line	32
	
l764:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    1[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
	line	15
global __ptext20
__ptext20:
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
	line	15
	global	__size_of___flneg
	__size_of___flneg	equ	__end_of___flneg-___flneg
	
___flneg:
;incstack = 0
	opt	stack 26
	line	17
	
l2477:; BSR set to: 0

	movf	((c:___flneg@f1)),c,w
iorwf	((c:___flneg@f1+1)),c,w
iorwf	((c:___flneg@f1+2)),c,w
iorwf	((c:___flneg@f1+3)),c,w
	btfsc	status,2
	goto	u1821
	goto	u1820

u1821:
	goto	l2481
u1820:
	line	18
	
l2479:; BSR set to: 0

	movlw	0
	xorwf	((c:___flneg@f1)),c
	movlw	0
	xorwf	((c:___flneg@f1+1)),c
	movlw	0
	xorwf	((c:___flneg@f1+2)),c
	movlw	080h
	xorwf	((c:___flneg@f1+3)),c
	line	19
	
l2481:; BSR set to: 0

	movff	(c:___flneg@f1),(c:?___flneg)
	movff	(c:___flneg@f1+1),(c:?___flneg+1)
	movff	(c:___flneg@f1+2),(c:?___flneg+2)
	movff	(c:___flneg@f1+3),(c:?___flneg+3)
	line	20
	
l730:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
;; Parameters:    Size  Location     Type
;;  f1              4   11[COMRAM] unsigned char 
;;  f2              4   15[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  f3              4   19[COMRAM] unsigned char 
;;  sign            1   25[COMRAM] unsigned char 
;;  exp             1   24[COMRAM] unsigned char 
;;  cntr            1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   11[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
	line	54
global __ptext21
__ptext21:
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
	line	54
	global	__size_of___fldiv
	__size_of___fldiv	equ	__end_of___fldiv-___fldiv
	
___fldiv:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	63
	
l3365:
	rlcf	((c:___fldiv@f1+2)),c,w
	rlcf	((c:___fldiv@f1+3)),c,w
	movwf	((c:___fldiv@exp)),c
	movf	((c:___fldiv@exp)),c,w
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l3369
u2900:
	line	64
	
l3367:
	clrf	((c:?___fldiv)),c
	clrf	((c:?___fldiv+1)),c
	clrf	((c:?___fldiv+2)),c
	clrf	((c:?___fldiv+3)),c

	goto	l709
	line	65
	
l3369:
	rlcf	((c:___fldiv@f2+2)),c,w
	rlcf	((c:___fldiv@f2+3)),c,w
	movwf	((c:___fldiv@sign)),c
	movf	((c:___fldiv@sign)),c,w
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l3373
u2910:
	line	66
	
l3371:
	clrf	((c:?___fldiv)),c
	clrf	((c:?___fldiv+1)),c
	clrf	((c:?___fldiv+2)),c
	clrf	((c:?___fldiv+3)),c

	goto	l709
	line	67
	
l3373:
	movf	((c:___fldiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___fldiv@exp)),c
	line	68
	
l3375:
	movff	0+((c:___fldiv@f1)+03h),(c:___fldiv@sign)
	line	69
	movf	(0+((c:___fldiv@f2)+03h)),c,w
	xorwf	((c:___fldiv@sign)),c
	line	70
	movlw	(080h)&0ffh
	andwf	((c:___fldiv@sign)),c
	line	71
	
l3377:
	bsf	(0+(23/8)+(c:___fldiv@f1)),c,(23)&7
	line	72
	
l3379:
	movlw	0FFh
	andwf	((c:___fldiv@f1)),c
	movlw	0FFh
	andwf	((c:___fldiv@f1+1)),c
	movlw	0FFh
	andwf	((c:___fldiv@f1+2)),c
	movlw	0
	andwf	((c:___fldiv@f1+3)),c
	line	73
	bsf	(0+(23/8)+(c:___fldiv@f2)),c,(23)&7
	line	74
	
l3381:
	movlw	0FFh
	andwf	((c:___fldiv@f2)),c
	movlw	0FFh
	andwf	((c:___fldiv@f2+1)),c
	movlw	0FFh
	andwf	((c:___fldiv@f2+2)),c
	movlw	0
	andwf	((c:___fldiv@f2+3)),c
	line	75
	
l3383:
	movlw	low(020h)
	movwf	((c:___fldiv@cntr)),c
	line	77
	
l3385:
	bcf	status,0
	rlcf	((c:___fldiv@f3)),c
	rlcf	((c:___fldiv@f3+1)),c
	rlcf	((c:___fldiv@f3+2)),c
	rlcf	((c:___fldiv@f3+3)),c
	line	78
	
l3387:
		movf	((c:___fldiv@f2)),c,w
	subwf	((c:___fldiv@f1)),c,w
	movf	((c:___fldiv@f2+1)),c,w
	subwfb	((c:___fldiv@f1+1)),c,w
	movf	((c:___fldiv@f2+2)),c,w
	subwfb	((c:___fldiv@f1+2)),c,w
	movf	((c:___fldiv@f2+3)),c,w
	subwfb	((c:___fldiv@f1+3)),c,w
	btfss	status,0
	goto	u2921
	goto	u2920

u2921:
	goto	l3393
u2920:
	line	79
	
l3389:
	movf	((c:___fldiv@f2)),c,w
	subwf	((c:___fldiv@f1)),c
	movf	((c:___fldiv@f2+1)),c,w
	subwfb	((c:___fldiv@f1+1)),c
	movf	((c:___fldiv@f2+2)),c,w
	subwfb	((c:___fldiv@f1+2)),c
	movf	((c:___fldiv@f2+3)),c,w
	subwfb	((c:___fldiv@f1+3)),c
	line	80
	
l3391:
	bsf	(0+(0/8)+(c:___fldiv@f3)),c,(0)&7
	line	82
	
l3393:
	bcf	status,0
	rlcf	((c:___fldiv@f1)),c
	rlcf	((c:___fldiv@f1+1)),c
	rlcf	((c:___fldiv@f1+2)),c
	rlcf	((c:___fldiv@f1+3)),c
	line	83
	
l3395:
	decfsz	((c:___fldiv@cntr)),c
	
	goto	l3385
	line	84
	
l3397:
	movff	(c:___fldiv@f3),(c:___flpack@arg)
	movff	(c:___fldiv@f3+1),(c:___flpack@arg+1)
	movff	(c:___fldiv@f3+2),(c:___flpack@arg+2)
	movff	(c:___fldiv@f3+3),(c:___flpack@arg+3)
	movff	(c:___fldiv@exp),(c:___flpack@exp)
	movff	(c:___fldiv@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___fldiv)
	movff	1+?___flpack,(c:?___fldiv+1)
	movff	2+?___flpack,(c:?___fldiv+2)
	movff	3+?___flpack,(c:?___fldiv+3)
	
	line	85
	
l709:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	___lltofl

;; *************** function ___lltofl *****************
;; Defined at:
;;		line 30 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
;; Parameters:    Size  Location     Type
;;  c               4   11[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   11[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
	line	30
global __ptext22
__ptext22:
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
	line	30
	global	__size_of___lltofl
	__size_of___lltofl	equ	__end_of___lltofl-___lltofl
	
___lltofl:
;incstack = 0
	opt	stack 26
	line	32
	
l3425:; BSR set to: 0

	movff	(c:___lltofl@c),(c:___flpack@arg)
	movff	(c:___lltofl@c+1),(c:___flpack@arg+1)
	movff	(c:___lltofl@c+2),(c:___flpack@arg+2)
	movff	(c:___lltofl@c+3),(c:___flpack@arg+3)
	movlw	low(096h)
	movwf	((c:___flpack@exp)),c
	movlw	low(0)
	movwf	((c:___flpack@sign)),c
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___lltofl)
	movff	1+?___flpack,(c:?___lltofl+1)
	movff	2+?___flpack,(c:?___lltofl+2)
	movff	3+?___flpack,(c:?___lltofl+3)
	
	line	33
	
l925:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lltofl
	__end_of___lltofl:
	signat	___lltofl,4220
	global	_log10

;; *************** function _log10 *****************
;; Defined at:
;;		line 39 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               4   83[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   83[COMRAM] unsigned long 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___flmul
;;		_log
;; This function is called by:
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	39
global __ptext23
__ptext23:
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	39
	global	__size_of_log10
	__size_of_log10	equ	__end_of_log10-_log10
	
_log10:
;incstack = 0
	opt	stack 24
	line	41
	
l3489:
	movff	(c:log10@x),(c:log@x)
	movff	(c:log10@x+1),(c:log@x+1)
	movff	(c:log10@x+2),(c:log@x+2)
	movff	(c:log10@x+3),(c:log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(c:_log10$1030)
	movff	1+?_log,(c:_log10$1030+1)
	movff	2+?_log,(c:_log10$1030+2)
	movff	3+?_log,(c:_log10$1030+3)
	
	
l3491:
	movff	(c:_log10$1030),(c:___flmul@f1)
	movff	(c:_log10$1030+1),(c:___flmul@f1+1)
	movff	(c:_log10$1030+2),(c:___flmul@f1+2)
	movff	(c:_log10$1030+3),(c:___flmul@f1+3)
	movlw	low(0.43429448189999997)
	movwf	((c:___flmul@f2)),c
	movlw	high(0.43429448189999997)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(0.43429448189999997)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(0.43429448189999997)
	movwf	((c:___flmul@f2+3)),c
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:?_log10)
	movff	1+?___flmul,(c:?_log10+1)
	movff	2+?___flmul,(c:?_log10+2)
	movff	3+?___flmul,(c:?_log10+3)
	
	line	42
	
l949:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_log10
	__end_of_log10:
	signat	_log10,4220
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               4   77[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exponent        2   81[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   77[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtofl
;;		___fladd
;;		___flmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_log10
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	line	5
global __ptext24
__ptext24:
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:
;incstack = 0
	opt	stack 24
	line	24
	
l3429:
	btfsc	((c:log@x+3)),c,7
	goto	u2960
	goto	u2961

u2961:
	goto	l3433
u2960:
	line	26
	
l3431:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c
	clrf	((c:?_log+3)),c

	goto	l945
	line	28
	
l3433:
	movf	((c:log@x)),c,w
iorwf	((c:log@x+1)),c,w
iorwf	((c:log@x+2)),c,w
iorwf	((c:log@x+3)),c,w
	btfss	status,2
	goto	u2971
	goto	u2970

u2971:
	goto	l3437
u2970:
	line	30
	
l3435:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c
	clrf	((c:?_log+3)),c

	goto	l945
	line	32
	
l3437:
	movlw	low(2.0000000000000000)
	movwf	((c:___flmul@f2)),c
	movlw	high(2.0000000000000000)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(2.0000000000000000)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(2.0000000000000000)
	movwf	((c:___flmul@f2+3)),c
		movlw	low(log@exponent)
	movwf	((c:frexp@eptr)),c

	movff	(c:log@x),(c:frexp@value)
	movff	(c:log@x+1),(c:frexp@value+1)
	movff	(c:log@x+2),(c:frexp@value+2)
	movff	(c:log@x+3),(c:frexp@value+3)
	call	_frexp	;wreg free
	movff	0+?_frexp,(c:___flmul@f1)
	movff	1+?_frexp,(c:___flmul@f1+1)
	movff	2+?_frexp,(c:___flmul@f1+2)
	movff	3+?_frexp,(c:___flmul@f1+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@f1)
	movff	1+?___flmul,(c:___fladd@f1+1)
	movff	2+?___flmul,(c:___fladd@f1+2)
	movff	3+?___flmul,(c:___fladd@f1+3)
	
	movlw	low(-1.0000000000000000)
	movwf	((c:___fladd@f2)),c
	movlw	high(-1.0000000000000000)
	movwf	((c:___fladd@f2+1)),c
	movlw	low highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+2)),c
	movlw	high highword(-1.0000000000000000)
	movwf	((c:___fladd@f2+3)),c
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:log@x)
	movff	1+?___fladd,(c:log@x+1)
	movff	2+?___fladd,(c:log@x+2)
	movff	3+?___fladd,(c:log@x+3)
	
	line	33
	
l3439:
	decf	((c:log@exponent)),c
	btfss	status,0
	decf	((c:log@exponent+1)),c
	line	34
	
l3441:
	movff	(c:log@x),(c:eval_poly@x)
	movff	(c:log@x+1),(c:eval_poly@x+1)
	movff	(c:log@x+2),(c:eval_poly@x+2)
	movff	(c:log@x+3),(c:eval_poly@x+3)
		movlw	low(log@coeff)
	movwf	((c:eval_poly@d)),c

	movlw	high(08h)
	movwf	((c:eval_poly@n+1)),c
	movlw	low(08h)
	movwf	((c:eval_poly@n)),c
	call	_eval_poly	;wreg free
	movff	0+?_eval_poly,(c:log@x)
	movff	1+?_eval_poly,(c:log@x+1)
	movff	2+?_eval_poly,(c:log@x+2)
	movff	3+?_eval_poly,(c:log@x+3)
	
	line	35
	
l3443:
	movlw	low(0.69314718055994995)
	movwf	((c:___flmul@f2)),c
	movlw	high(0.69314718055994995)
	movwf	((c:___flmul@f2+1)),c
	movlw	low highword(0.69314718055994995)
	movwf	((c:___flmul@f2+2)),c
	movlw	high highword(0.69314718055994995)
	movwf	((c:___flmul@f2+3)),c
	movff	(c:log@exponent),(c:___awtofl@c)
	movff	(c:log@exponent+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(c:___flmul@f1)
	movff	1+?___awtofl,(c:___flmul@f1+1)
	movff	2+?___awtofl,(c:___flmul@f1+2)
	movff	3+?___awtofl,(c:___flmul@f1+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@f1)
	movff	1+?___flmul,(c:___fladd@f1+1)
	movff	2+?___flmul,(c:___fladd@f1+2)
	movff	3+?___flmul,(c:___fladd@f1+3)
	
	movff	(c:log@x),(c:___fladd@f2)
	movff	(c:log@x+1),(c:___fladd@f2+1)
	movff	(c:log@x+2),(c:___fladd@f2+2)
	movff	(c:log@x+3),(c:___fladd@f2+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:?_log)
	movff	1+?___fladd,(c:?_log+1)
	movff	2+?___fladd,(c:?_log+2)
	movff	3+?___fladd,(c:?_log+3)
	
	line	36
	
l945:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4220
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4    1[COMRAM] int 
;;  eptr            1    5[COMRAM] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    1[COMRAM] PTR int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	254
global __ptext25
__ptext25:
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:
;incstack = 0
	opt	stack 26
	line	256
	
l2333:
	movf	((c:frexp@value)),c,w
iorwf	((c:frexp@value+1)),c,w
iorwf	((c:frexp@value+2)),c,w
iorwf	((c:frexp@value+3)),c,w
	btfss	status,2
	goto	u1631
	goto	u1630

u1631:
	goto	l2341
u1630:
	line	257
	
l2335:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	258
	
l2337:
	clrf	((c:?_frexp)),c
	clrf	((c:?_frexp+1)),c
	clrf	((c:?_frexp+2)),c
	clrf	((c:?_frexp+3)),c

	goto	l784
	line	261
	
l2341:
	movf	(0+((c:frexp@value)+03h)),c,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0+0)&0ffh,c
	clrf	(??_frexp+0+0+1)&0ffh,c

	bcf	status,0
	rlcf	(??_frexp+0+0),c,f
	rlcf	(??_frexp+0+1),c,f
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	??_frexp+0+0,postinc2
	movff	??_frexp+0+1,postdec2

	line	262
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	btfsc	(0+((c:frexp@value)+02h)),c,7
	goto	u1641
	goto	u1640
u1641:
	movlw	1
	goto	u1646
u1640:
	movlw	0
u1646:
	iorwf	postinc2
	movlw	0
	iorwf	postdec2
	line	263
	
l2343:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(-126)
	addwf	postinc2
	movlw	high(-126)
	addwfc	postdec2
	line	268
	
l2345:
	movf	(0+((c:frexp@value)+03h)),c,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	(0+((c:frexp@value)+03h)),c
	line	269
	
l2347:
	bcf	(0+((c:frexp@value)+02h)),c,7
	line	273
	
l2349:
	movff	(c:frexp@value),(c:?_frexp)
	movff	(c:frexp@value+1),(c:?_frexp+1)
	movff	(c:frexp@value+2),(c:?_frexp+2)
	movff	(c:frexp@value+3),(c:?_frexp+3)
	line	274
	
l784:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8316
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               4   65[COMRAM] PTR int 
;;  d               1   69[COMRAM] PTR const 
;;		 -> exp@coeff(40), log@coeff(36), 
;;  n               2   70[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  res             4   73[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   65[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         7       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___fladd
;;		___flmul
;; This function is called by:
;;		_log
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
	line	4
global __ptext26
__ptext26:
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:
;incstack = 0
	opt	stack 24
	line	8
	
l3419:
	movf	((c:eval_poly@n)),c,w
	mullw	04h
	movf	((c:eval_poly@d)),c,w
	addwf	(prodl),c,w
	movwf	(??_eval_poly+0+0)&0ffh,c
	movff	(??_eval_poly+0+0),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:eval_poly@res)
	tblrd*+
	
	movff	tablat,(c:eval_poly@res+1)
	tblrd*+
	
	movff	tablat,(c:eval_poly@res+2)
	tblrd*-
	
	movff	tablat,(c:eval_poly@res+3)
	line	9
	goto	l3423
	line	10
	
l3421:
	movff	(c:eval_poly@res),(c:___flmul@f2)
	movff	(c:eval_poly@res+1),(c:___flmul@f2+1)
	movff	(c:eval_poly@res+2),(c:___flmul@f2+2)
	movff	(c:eval_poly@res+3),(c:___flmul@f2+3)
	movff	(c:eval_poly@x),(c:___flmul@f1)
	movff	(c:eval_poly@x+1),(c:___flmul@f1+1)
	movff	(c:eval_poly@x+2),(c:___flmul@f1+2)
	movff	(c:eval_poly@x+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@f1)
	movff	1+?___flmul,(c:___fladd@f1+1)
	movff	2+?___flmul,(c:___fladd@f1+2)
	movff	3+?___flmul,(c:___fladd@f1+3)
	
	decf	((c:eval_poly@n)),c
	btfss	status,0
	decf	((c:eval_poly@n+1)),c
	movf	((c:eval_poly@n)),c,w
	mullw	04h
	movf	((c:eval_poly@d)),c,w
	addwf	(prodl),c,w
	movwf	(??_eval_poly+0+0)&0ffh,c
	movff	(??_eval_poly+0+0),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(c:___fladd@f2)
	tblrd*+
	
	movff	tablat,(c:___fladd@f2+1)
	tblrd*+
	
	movff	tablat,(c:___fladd@f2+2)
	tblrd*-
	
	movff	tablat,(c:___fladd@f2+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:eval_poly@res)
	movff	1+?___fladd,(c:eval_poly@res+1)
	movff	2+?___fladd,(c:eval_poly@res+2)
	movff	3+?___fladd,(c:eval_poly@res+3)
	
	line	9
	
l3423:
	movf	((c:eval_poly@n)),c,w
iorwf	((c:eval_poly@n+1)),c,w
	btfss	status,2
	goto	u2951
	goto	u2950

u2951:
	goto	l3421
u2950:
	
l1031:
	line	11
	movff	(c:eval_poly@res),(c:?_eval_poly)
	movff	(c:eval_poly@res+1),(c:?_eval_poly+1)
	movff	(c:eval_poly@res+2),(c:?_eval_poly+2)
	movff	(c:eval_poly@res+3),(c:?_eval_poly+3)
	line	12
	
l1032:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12412
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
;; Parameters:    Size  Location     Type
;;  f1              4   26[COMRAM] int 
;;  f2              4   30[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    4   49[COMRAM] unsigned long 
;;  sign            1   48[COMRAM] unsigned char 
;;  exp             1   47[COMRAM] unsigned char 
;;  cntr            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[COMRAM] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:         13       0       0       0       0       0       0
;;      Totals:        27       0       0       0       0       0       0
;;Total ram usage:       27 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_log
;;		_log10
;;		_pow
;;		_eval_poly
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
	line	62
global __ptext27
__ptext27:
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
	line	62
	global	__size_of___flmul
	__size_of___flmul	equ	__end_of___flmul-___flmul
	
___flmul:
;incstack = 0
	opt	stack 27
	line	67
	
l3305:
	rlcf	((c:___flmul@f1+2)),c,w
	rlcf	((c:___flmul@f1+3)),c,w
	movwf	((c:___flmul@exp)),c
	movf	((c:___flmul@exp)),c,w
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l3309
u2830:
	line	68
	
l3307:
	clrf	((c:?___flmul)),c
	clrf	((c:?___flmul+1)),c
	clrf	((c:?___flmul+2)),c
	clrf	((c:?___flmul+3)),c

	goto	l724
	line	69
	
l3309:
	rlcf	((c:___flmul@f2+2)),c,w
	rlcf	((c:___flmul@f2+3)),c,w
	movwf	((c:___flmul@sign)),c
	movf	((c:___flmul@sign)),c,w
	btfss	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l3313
u2840:
	line	70
	
l3311:
	clrf	((c:?___flmul)),c
	clrf	((c:?___flmul+1)),c
	clrf	((c:?___flmul+2)),c
	clrf	((c:?___flmul+3)),c

	goto	l724
	line	71
	
l3313:
	movf	((c:___flmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___flmul@exp)),c
	line	72
	
l3315:
	movff	0+((c:___flmul@f1)+03h),(c:___flmul@sign)
	line	73
	movf	(0+((c:___flmul@f2)+03h)),c,w
	xorwf	((c:___flmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___flmul@sign)),c
	line	75
	
l3317:
	bsf	(0+(23/8)+(c:___flmul@f1)),c,(23)&7
	line	77
	
l3319:
	bsf	(0+(23/8)+(c:___flmul@f2)),c,(23)&7
	line	78
	movlw	0FFh
	andwf	((c:___flmul@f2)),c
	movlw	0FFh
	andwf	((c:___flmul@f2+1)),c
	movlw	0FFh
	andwf	((c:___flmul@f2+2)),c
	movlw	0
	andwf	((c:___flmul@f2+3)),c
	line	79
	
l3321:
	line	142
	movlw	0FFh
	andwf	((c:___flmul@f1)),c
	movlw	0FFh
	andwf	((c:___flmul@f1+1)),c
	movlw	0FFh
	andwf	((c:___flmul@f1+2)),c
	movlw	0
	andwf	((c:___flmul@f1+3)),c
	line	144
	
l3323:
	movf	((c:___flmul@f1)),c,w
	mulwf	((c:___flmul@f2)),c
	movff	prodh,prodl
	clrf	(prodh),c
	movff	prodl,(c:___flmul@f3_as_product)
	movff	prodh,(c:___flmul@f3_as_product+1)
	clrf	((c:___flmul@f3_as_product+2)),c
	clrf	((c:___flmul@f3_as_product+3)),c

	line	148
	
l3325:
	movf	((c:___flmul@f1)),c,w
	mulwf	(0+((c:___flmul@f2)+01h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movf	(0+((c:___flmul@f1)+01h)),c,w
	mulwf	((c:___flmul@f2)),c
	movf	(prodl),c,w
	addwf	(??___flmul+0+0),c,w
	movwf	(??___flmul+3+0)&0ffh,c
	movf	(prodh),c,w
	addwfc	(??___flmul+0+1),c,w
	movwf	1+(??___flmul+3+0)&0ffh,c
	
	movlw	0
	addwfc	(??___flmul+0+2),c,w
	movwf	2+(??___flmul+3+0)&0ffh,c

	movf	(??___flmul+3+0),c,w
	movwf	(??___flmul+6+0)&0ffh,c
	movf	(??___flmul+3+1),c,w
	movwf	1+(??___flmul+6+0)&0ffh,c
	
	movf	(??___flmul+3+2),c,w
	movwf	2+(??___flmul+6+0)&0ffh,c
	
	clrf	3+(??___flmul+6+0)&0ffh,c
	movf	(??___flmul+6+0),c,w
	addwf	((c:___flmul@f3_as_product)),c
	movf	(??___flmul+6+1),c,w
	addwfc	((c:___flmul@f3_as_product+1)),c
	movf	(??___flmul+6+2),c,w
	addwfc	((c:___flmul@f3_as_product+2)),c
	movf	(??___flmul+6+3),c,w
	addwfc	((c:___flmul@f3_as_product+3)),c

	line	149
	
l3327:
	movf	(0+((c:___flmul@f3_as_product)+01h)),c,w
	movwf	((c:___flmul@f3_as_product)),c
	movf	(1+((c:___flmul@f3_as_product)+01h)),c,w
	movwf	1+((c:___flmul@f3_as_product)),c
	
	movf	(2+((c:___flmul@f3_as_product)+01h)),c,w
	movwf	2+((c:___flmul@f3_as_product)),c
	
	clrf	3+((c:___flmul@f3_as_product)),c
	line	156
	
l3329:
	movf	((c:___flmul@f1)),c,w
	mulwf	(0+((c:___flmul@f2)+02h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movf	(0+((c:___flmul@f1)+01h)),c,w
	mulwf	(0+((c:___flmul@f2)+01h)),c
	movf	(prodl),c,w
	addwf	(??___flmul+0+0),c,w
	movwf	(??___flmul+3+0)&0ffh,c
	movf	(prodh),c,w
	addwfc	(??___flmul+0+1),c,w
	movwf	1+(??___flmul+3+0)&0ffh,c
	
	movlw	0
	addwfc	(??___flmul+0+2),c,w
	movwf	2+(??___flmul+3+0)&0ffh,c

	movf	(0+((c:___flmul@f1)+02h)),c,w
	mulwf	((c:___flmul@f2)),c
	movf	(prodl),c,w
	addwf	(??___flmul+3+0),c,w
	movwf	(??___flmul+6+0)&0ffh,c
	movf	(prodh),c,w
	addwfc	(??___flmul+3+1),c,w
	movwf	1+(??___flmul+6+0)&0ffh,c
	
	movlw	0
	addwfc	(??___flmul+3+2),c,w
	movwf	2+(??___flmul+6+0)&0ffh,c

	movf	(??___flmul+6+0),c,w
	movwf	(??___flmul+9+0)&0ffh,c
	movf	(??___flmul+6+1),c,w
	movwf	1+(??___flmul+9+0)&0ffh,c
	
	movf	(??___flmul+6+2),c,w
	movwf	2+(??___flmul+9+0)&0ffh,c
	
	clrf	3+(??___flmul+9+0)&0ffh,c
	movf	(??___flmul+9+0),c,w
	addwf	((c:___flmul@f3_as_product)),c
	movf	(??___flmul+9+1),c,w
	addwfc	((c:___flmul@f3_as_product+1)),c
	movf	(??___flmul+9+2),c,w
	addwfc	((c:___flmul@f3_as_product+2)),c
	movf	(??___flmul+9+3),c,w
	addwfc	((c:___flmul@f3_as_product+3)),c

	line	171
	
l3331:
	movf	(0+((c:___flmul@f1)+02h)),c,w
	mulwf	(0+((c:___flmul@f2)+01h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movlw	(___flmul@f3_as_product)&0ffh
	movwf	(??___flmul+3+0)&0ffh,c
	clrf	(??___flmul+3+0+1)&0ffh,c

	movlw	low(01h)
	addwf	(??___flmul+3+0),c,w
	movwf	c:fsr2l
	movlw	high(01h)
	addwfc	(??___flmul+3+1),c,w
	movwf	1+c:fsr2l
	movf	(??___flmul+0+0),c,w
	addwf	postinc2
	movf	(??___flmul+0+1),c,w
	addwfc	postinc2
	movf	(??___flmul+0+2),c,w
	addwfc	postinc2

	line	173
	
l3333:
	movf	(0+((c:___flmul@f1)+01h)),c,w
	mulwf	(0+((c:___flmul@f2)+02h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movlw	(___flmul@f3_as_product)&0ffh
	movwf	(??___flmul+3+0)&0ffh,c
	clrf	(??___flmul+3+0+1)&0ffh,c

	movlw	low(01h)
	addwf	(??___flmul+3+0),c,w
	movwf	c:fsr2l
	movlw	high(01h)
	addwfc	(??___flmul+3+1),c,w
	movwf	1+c:fsr2l
	movf	(??___flmul+0+0),c,w
	addwf	postinc2
	movf	(??___flmul+0+1),c,w
	addwfc	postinc2
	movf	(??___flmul+0+2),c,w
	addwfc	postinc2

	line	176
	
l3335:
	movf	(0+((c:___flmul@f1)+02h)),c,w
	mulwf	(0+((c:___flmul@f2)+02h)),c
	movff	prodl,??___flmul+0+0
	movff	prodh,??___flmul+0+0+1
	clrf	(??___flmul+0+0+2)&0ffh,c
	movlw	(___flmul@f3_as_product)&0ffh
	movwf	(??___flmul+3+0)&0ffh,c
	clrf	(??___flmul+3+0+1)&0ffh,c

	movlw	low(02h)
	addwf	(??___flmul+3+0),c,w
	movwf	c:fsr2l
	movlw	high(02h)
	addwfc	(??___flmul+3+1),c,w
	movwf	1+c:fsr2l
	movf	(??___flmul+0+0),c,w
	addwf	postinc2
	movf	(??___flmul+0+1),c,w
	addwfc	postinc2
	movf	(??___flmul+0+2),c,w
	addwfc	postinc2

	line	188
	
l3337:
	
	btfss	((c:___flmul@f3_as_product+3)),c,(31)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l726
u2850:
	line	189
	
l3339:
	bcf	status,0
	rrcf	((c:___flmul@f3_as_product+3)),c
	rrcf	((c:___flmul@f3_as_product+2)),c
	rrcf	((c:___flmul@f3_as_product+1)),c
	rrcf	((c:___flmul@f3_as_product)),c
	line	190
	incf	((c:___flmul@exp)),c
	line	191
	
l726:
	line	192
	bcf	status,0
	rrcf	((c:___flmul@f3_as_product+3)),c
	rrcf	((c:___flmul@f3_as_product+2)),c
	rrcf	((c:___flmul@f3_as_product+1)),c
	rrcf	((c:___flmul@f3_as_product)),c
	line	219
	
l3341:
	movff	(c:___flmul@f3_as_product),(c:___flpack@arg)
	movff	(c:___flmul@f3_as_product+1),(c:___flpack@arg+1)
	movff	(c:___flmul@f3_as_product+2),(c:___flpack@arg+2)
	movff	(c:___flmul@f3_as_product+3),(c:___flpack@arg+3)
	movff	(c:___flmul@exp),(c:___flpack@exp)
	movff	(c:___flmul@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___flmul)
	movff	1+?___flpack,(c:?___flmul+1)
	movff	2+?___flpack,(c:?___flmul+2)
	movff	3+?___flpack,(c:?___flmul+3)
	
	line	220
	
l724:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 88 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
;; Parameters:    Size  Location     Type
;;  f1              4   53[COMRAM] unsigned char 
;;  f2              4   57[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1   64[COMRAM] unsigned char 
;;  exp2            1   63[COMRAM] unsigned char 
;;  sign            1   62[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   53[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         8       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_floor
;;		___flsub
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
	line	88
global __ptext28
__ptext28:
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
	line	88
	global	__size_of___fladd
	__size_of___fladd	equ	__end_of___fladd-___fladd
	
___fladd:
;incstack = 0
	opt	stack 26
	line	92
	
l3239:
	rlcf	((c:___fladd@f1+2)),c,w
	rlcf	((c:___fladd@f1+3)),c,w
	movwf	((c:___fladd@exp1)),c
	line	93
	rlcf	((c:___fladd@f2+2)),c,w
	rlcf	((c:___fladd@f2+3)),c,w
	movwf	((c:___fladd@exp2)),c
	line	94
	movf	((c:___fladd@exp1)),c,w
	btfsc	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l677
u2640:
	
l3241:
		movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	btfsc	status,0
	goto	u2651
	goto	u2650

u2651:
	goto	l3245
u2650:
	
l3243:
	movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	movwf	(??___fladd+0+0)&0ffh,c
		movlw	021h-1
	cpfsgt	((??___fladd+0+0)),c
	goto	u2661
	goto	u2660

u2661:
	goto	l3245
u2660:
	
l677:
	line	95
	movff	(c:___fladd@f2),(c:?___fladd)
	movff	(c:___fladd@f2+1),(c:?___fladd+1)
	movff	(c:___fladd@f2+2),(c:?___fladd+2)
	movff	(c:___fladd@f2+3),(c:?___fladd+3)
	goto	l678
	line	96
	
l3245:
	movf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l681
u2670:
	
l3247:
		movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	btfsc	status,0
	goto	u2681
	goto	u2680

u2681:
	goto	l3251
u2680:
	
l3249:
	movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	movwf	(??___fladd+0+0)&0ffh,c
		movlw	021h-1
	cpfsgt	((??___fladd+0+0)),c
	goto	u2691
	goto	u2690

u2691:
	goto	l3251
u2690:
	
l681:
	line	97
	movff	(c:___fladd@f1),(c:?___fladd)
	movff	(c:___fladd@f1+1),(c:?___fladd+1)
	movff	(c:___fladd@f1+2),(c:?___fladd+2)
	movff	(c:___fladd@f1+3),(c:?___fladd+3)
	goto	l678
	line	98
	
l3251:
	movlw	low(06h)
	movwf	((c:___fladd@sign)),c
	line	99
	
l3253:
	
	btfss	((c:___fladd@f1+3)),c,(31)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l3257
u2700:
	line	100
	
l3255:
	bsf	(0+(7/8)+(c:___fladd@sign)),c,(7)&7
	line	101
	
l3257:
	
	btfss	((c:___fladd@f2+3)),c,(31)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l683
u2710:
	line	102
	
l3259:
	bsf	(0+(6/8)+(c:___fladd@sign)),c,(6)&7
	
l683:
	line	103
	bsf	(0+(23/8)+(c:___fladd@f1)),c,(23)&7
	line	104
	
l3261:
	movlw	0FFh
	andwf	((c:___fladd@f1)),c
	movlw	0FFh
	andwf	((c:___fladd@f1+1)),c
	movlw	0FFh
	andwf	((c:___fladd@f1+2)),c
	movlw	0
	andwf	((c:___fladd@f1+3)),c
	line	105
	
l3263:
	bsf	(0+(23/8)+(c:___fladd@f2)),c,(23)&7
	line	106
	movlw	0FFh
	andwf	((c:___fladd@f2)),c
	movlw	0FFh
	andwf	((c:___fladd@f2+1)),c
	movlw	0FFh
	andwf	((c:___fladd@f2+2)),c
	movlw	0
	andwf	((c:___fladd@f2+3)),c
	line	108
		movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	btfsc	status,0
	goto	u2721
	goto	u2720

u2721:
	goto	l3275
u2720:
	line	112
	
l3265:
	bcf	status,0
	rlcf	((c:___fladd@f2)),c
	rlcf	((c:___fladd@f2+1)),c
	rlcf	((c:___fladd@f2+2)),c
	rlcf	((c:___fladd@f2+3)),c
	line	113
	decf	((c:___fladd@exp2)),c
	line	114
	
l3267:
	movf	((c:___fladd@exp1)),c,w
xorwf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2731
	goto	u2730

u2731:
	goto	l3273
u2730:
	
l3269:
	decf	((c:___fladd@sign)),c
	movff	(c:___fladd@sign),??___fladd+0+0
	movlw	07h
	andwf	(??___fladd+0+0),c
	btfss	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l3265
u2740:
	goto	l3273
	line	116
	
l3271:
	bcf	status,0
	rrcf	((c:___fladd@f1+3)),c
	rrcf	((c:___fladd@f1+2)),c
	rrcf	((c:___fladd@f1+1)),c
	rrcf	((c:___fladd@f1)),c
	line	117
	incf	((c:___fladd@exp1)),c
	line	115
	
l3273:
	movf	((c:___fladd@exp2)),c,w
xorwf	((c:___fladd@exp1)),c,w
	btfss	status,2
	goto	u2751
	goto	u2750

u2751:
	goto	l3271
u2750:
	goto	l692
	line	119
	
l3275:
		movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	btfsc	status,0
	goto	u2761
	goto	u2760

u2761:
	goto	l692
u2760:
	line	123
	
l3277:
	bcf	status,0
	rlcf	((c:___fladd@f1)),c
	rlcf	((c:___fladd@f1+1)),c
	rlcf	((c:___fladd@f1+2)),c
	rlcf	((c:___fladd@f1+3)),c
	line	124
	decf	((c:___fladd@exp1)),c
	line	125
	
l3279:
	movf	((c:___fladd@exp1)),c,w
xorwf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2771
	goto	u2770

u2771:
	goto	l3285
u2770:
	
l3281:
	decf	((c:___fladd@sign)),c
	movff	(c:___fladd@sign),??___fladd+0+0
	movlw	07h
	andwf	(??___fladd+0+0),c
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l3277
u2780:
	goto	l3285
	line	127
	
l3283:
	bcf	status,0
	rrcf	((c:___fladd@f2+3)),c
	rrcf	((c:___fladd@f2+2)),c
	rrcf	((c:___fladd@f2+1)),c
	rrcf	((c:___fladd@f2)),c
	line	128
	incf	((c:___fladd@exp2)),c
	line	126
	
l3285:
	movf	((c:___fladd@exp2)),c,w
xorwf	((c:___fladd@exp1)),c,w
	btfss	status,2
	goto	u2791
	goto	u2790

u2791:
	goto	l3283
u2790:
	line	131
	
l692:
	
	btfss	((c:___fladd@sign)),c,(7)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l3289
u2800:
	line	133
	
l3287:
	movlw	0FFh
	xorwf	((c:___fladd@f1)),c
	movlw	0FFh
	xorwf	((c:___fladd@f1+1)),c
	movlw	0FFh
	xorwf	((c:___fladd@f1+2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f1+3)),c
	line	134
	movlw	low(01h)
	addwf	((c:___fladd@f1)),c
	movlw	0
	addwfc	((c:___fladd@f1+1)),c
	addwfc	((c:___fladd@f1+2)),c
	addwfc	((c:___fladd@f1+3)),c
	line	136
	
l3289:
	
	btfss	((c:___fladd@sign)),c,(6)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l3293
u2810:
	line	138
	
l3291:
	movlw	0FFh
	xorwf	((c:___fladd@f2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+1)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+3)),c
	line	139
	movlw	low(01h)
	addwf	((c:___fladd@f2)),c
	movlw	0
	addwfc	((c:___fladd@f2+1)),c
	addwfc	((c:___fladd@f2+2)),c
	addwfc	((c:___fladd@f2+3)),c
	line	141
	
l3293:
	clrf	((c:___fladd@sign)),c
	line	142
	movf	((c:___fladd@f1)),c,w
	addwf	((c:___fladd@f2)),c
	movf	((c:___fladd@f1+1)),c,w
	addwfc	((c:___fladd@f2+1)),c
	movf	((c:___fladd@f1+2)),c,w
	addwfc	((c:___fladd@f2+2)),c
	movf	((c:___fladd@f1+3)),c,w
	addwfc	((c:___fladd@f2+3)),c
	line	143
	
l3295:
	
	btfss	((c:___fladd@f2+3)),c,(31)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l3301
u2820:
	line	144
	
l3297:
	movlw	0FFh
	xorwf	((c:___fladd@f2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+1)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+2)),c
	movlw	0FFh
	xorwf	((c:___fladd@f2+3)),c
	line	145
	movlw	low(01h)
	addwf	((c:___fladd@f2)),c
	movlw	0
	addwfc	((c:___fladd@f2+1)),c
	addwfc	((c:___fladd@f2+2)),c
	addwfc	((c:___fladd@f2+3)),c
	line	146
	
l3299:
	movlw	low(01h)
	movwf	((c:___fladd@sign)),c
	line	148
	
l3301:
	movff	(c:___fladd@f2),(c:___flpack@arg)
	movff	(c:___fladd@f2+1),(c:___flpack@arg+1)
	movff	(c:___fladd@f2+2),(c:___flpack@arg+2)
	movff	(c:___fladd@f2+3),(c:___flpack@arg+3)
	movff	(c:___fladd@exp1),(c:___flpack@exp)
	movff	(c:___fladd@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___fladd)
	movff	1+?___flpack,(c:?___fladd+1)
	movff	2+?___flpack,(c:?___fladd+2)
	movff	3+?___flpack,(c:?___fladd+3)
	
	line	149
	
l678:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___awtofl

;; *************** function ___awtofl *****************
;; Defined at:
;;		line 31 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   11[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  f1              4    0        int 
;;  sign            1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   11[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_format_double
;;		_log
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
	line	31
global __ptext29
__ptext29:
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
	line	31
	global	__size_of___awtofl
	__size_of___awtofl	equ	__end_of___awtofl-___awtofl
	
___awtofl:
;incstack = 0
	opt	stack 25
	line	36
	
l3409:
	clrf	((c:___awtofl@sign)),c
	line	37
	
l3411:
	btfsc	((c:___awtofl@c+1)),c,7
	goto	u2940
	goto	u2941

u2941:
	goto	l3415
u2940:
	line	38
	
l3413:
	negf	((c:___awtofl@c)),c
	comf	((c:___awtofl@c+1)),c
	btfsc	status,0
	incf	((c:___awtofl@c+1)),c
	line	39
	incf	((c:___awtofl@sign)),c
	line	41
	
l3415:
	movff	(c:___awtofl@c),(c:___flpack@arg)
	movff	(c:___awtofl@c+1),(c:___flpack@arg+1)
	clrf	((c:___flpack@arg+2)),c
	clrf	((c:___flpack@arg+3)),c

	movlw	low(096h)
	movwf	((c:___flpack@exp)),c
	movff	(c:___awtofl@sign),(c:___flpack@sign)
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___awtofl)
	movff	1+?___flpack,(c:?___awtofl+1)
	movff	2+?___flpack,(c:?___awtofl+2)
	movff	3+?___flpack,(c:?___awtofl+3)
	
	line	42
	
l645:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awtofl
	__end_of___awtofl:
	signat	___awtofl,4220
	global	_calibrate

;; *************** function _calibrate *****************
;; Defined at:
;;		line 25 in file "../../../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   60[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___lwtofl
;;		_delay10ms
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_send
;;		_measure_freq
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"../../../src/measure.c"
	line	25
global __ptext30
__ptext30:
psect	text30
	file	"../../../src/measure.c"
	line	25
	global	__size_of_calibrate
	__size_of_calibrate	equ	__end_of_calibrate-_calibrate
	
_calibrate:
;incstack = 0
	opt	stack 24
	line	29
	
l3555:
;measure.c: 26: uint8_t i;
;measure.c: 29: lcd_clear();
	call	_lcd_clear	;wreg free
	line	31
	
l3557:
;measure.c: 31: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	32
	
l3559:
;measure.c: 32: put_str("Calibrating");
	movlw	(STR_17)&0ffh
	
	call	_put_str
	line	34
	
l3561:
;measure.c: 34: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	38
	
l3563:
;measure.c: 38: put_str("please wait...");
	movlw	(STR_18)&0ffh
	
	call	_put_str
	line	41
	
l3565:
;measure.c: 41: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	43
	
l3567:
;measure.c: 43: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F1)
	movff	1+?___lwtofl,(_F1+1)
	movff	2+?___lwtofl,(_F1+2)
	movff	3+?___lwtofl,(_F1+3)
	
	line	44
	
l3569:
;measure.c: 44: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	46
;measure.c: 46: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F1)
	movff	1+?___lwtofl,(_F1+1)
	movff	2+?___lwtofl,(_F1+2)
	movff	3+?___lwtofl,(_F1+3)
	
	line	47
	
l3571:
;measure.c: 47: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	49
	
l3573:
;measure.c: 49: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F2)
	movff	1+?___lwtofl,(_F2+1)
	movff	2+?___lwtofl,(_F2+2)
	movff	3+?___lwtofl,(_F2+3)
	
	line	50
	
l3575:
;measure.c: 50: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	52
	
l3577:
;measure.c: 52: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F2)
	movff	1+?___lwtofl,(_F2+1)
	movff	2+?___lwtofl,(_F2+2)
	movff	3+?___lwtofl,(_F2+3)
	
	line	53
	
l3579:
;measure.c: 53: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	56
	
l3581:
;measure.c: 56: lcd_gotoxy(11, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0Bh)&0ffh
	
	call	_lcd_gotoxy
	line	57
	
l3583:
;measure.c: 57: for(i = 0; i < 6; i++) {
	clrf	((c:calibrate@i)),c
	line	58
	
l3589:
;measure.c: 58: lcd_send(('='), 1);
	movlw	low(01h)
	movwf	((c:lcd_send@mode)),c
	movlw	(03Dh)&0ffh
	
	call	_lcd_send
	line	60
	
l3591:
;measure.c: 60: delay10ms(28);
	movlw	(01Ch)&0ffh
	
	call	_delay10ms
	line	57
	incf	((c:calibrate@i)),c
	
l3593:
		movlw	06h-1
	cpfsgt	((c:calibrate@i)),c
	goto	u3131
	goto	u3130

u3131:
	goto	l3589
u3130:
	line	66
	
l408:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_calibrate
	__end_of_calibrate:
	signat	_calibrate,88
	global	_put_str

;; *************** function _put_str *****************
;; Defined at:
;;		line 223 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_21(13), STR_20(10), STR_18(15), STR_17(12), 
;; Auto vars:     Size  Location     Type
;;  s               1    8[COMRAM] PTR const unsigned char 
;;		 -> STR_21(13), STR_20(10), STR_18(15), STR_17(12), 
;;  i               2    6[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_output_putch
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	223
global __ptext31
__ptext31:
psect	text31
	file	"../../../src/print.c"
	line	223
	global	__size_of_put_str
	__size_of_put_str	equ	__end_of_put_str-_put_str
	
_put_str:
;incstack = 0
	opt	stack 25
;put_str@s stored from wreg
	movwf	((c:put_str@s)),c
	line	226
	
l2729:
;print.c: 224: int i;
;print.c: 226: for(i = 0; s[i]; i++) {
	clrf	((c:put_str@i)),c
	clrf	((c:put_str@i+1)),c
	goto	l2735
	line	227
	
l2731:
;print.c: 227: output_putch(s[i]);
	movf	((c:put_str@s)),c,w
	addwf	((c:put_str@i)),c,w
	movwf	(??_put_str+0+0)&0ffh,c
	movff	(??_put_str+0+0),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_output_putch
	line	226
	
l2733:
	infsnz	((c:put_str@i)),c
	incf	((c:put_str@i+1)),c
	
l2735:
	movf	((c:put_str@s)),c,w
	addwf	((c:put_str@i)),c,w
	movwf	(??_put_str+0+0)&0ffh,c
	movff	(??_put_str+0+0),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u2151
	goto	u2150
u2151:
	goto	l2731
u2150:
	line	229
	
l41:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_put_str
	__end_of_put_str:
	signat	_put_str,4216
	global	_output_putch

;; *************** function _output_putch *****************
;; Defined at:
;;		line 210 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_put_str
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	line	210
global __ptext32
__ptext32:
psect	text32
	file	"../../../src/print.c"
	line	210
	global	__size_of_output_putch
	__size_of_output_putch	equ	__end_of_output_putch-_output_putch
	
_output_putch:
;incstack = 0
	opt	stack 25
;output_putch@c stored from wreg
	movwf	((c:output_putch@c)),c
	line	212
	
l2615:
;print.c: 212: lcd_send((c), 1);
	movlw	low(01h)
	movwf	((c:lcd_send@mode)),c
	movf	((c:output_putch@c)),c,w
	
	call	_lcd_send
	line	217
	
l35:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_output_putch
	__end_of_output_putch:
	signat	_output_putch,4216
	global	_measure_freq

;; *************** function _measure_freq *****************
;; Defined at:
;;		line 72 in file "../../../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   54[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   51[COMRAM] unsigned short 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_buffer_init
;;		_buffer_puts
;;		_format_number
;;		_lcd_gotoxy
;;		_print_buffer
;;		_timer0_read_ps
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"../../../src/measure.c"
	line	72
global __ptext33
__ptext33:
psect	text33
	file	"../../../src/measure.c"
	line	72
	global	__size_of_measure_freq
	__size_of_measure_freq	equ	__end_of_measure_freq-_measure_freq
	
_measure_freq:
;incstack = 0
	opt	stack 24
	line	75
	
l2781:
;measure.c: 73: uint16_t count;
;measure.c: 75: INTCON &= ~0b100;
	bcf	(0+(2/8)+(c:4082)),c,(2)&7	;volatile
	line	79
;measure.c: 79: TRISA &= ~0b00010000;
	bcf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	81
	
l2783:
;measure.c: 81: _delay((unsigned long)((20)*(16000000/4000.0)));
	movlw	104
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	228
u3337:
decfsz	wreg,f
	goto	u3337
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3337
	nop2

	line	84
	
l2785:
;measure.c: 84: TMR0 = 0x00;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	89
	
l2787:
;measure.c: 89: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3347:
decfsz	wreg,f
	goto	u3347
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3347

	line	90
	
l2789:
;measure.c: 90: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3357:
decfsz	wreg,f
	goto	u3357
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3357

	line	91
	
l2791:
;measure.c: 91: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3367:
decfsz	wreg,f
	goto	u3367
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3367

	line	92
	
l2793:
;measure.c: 92: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3377:
decfsz	wreg,f
	goto	u3377
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3377

	line	93
	
l2795:
;measure.c: 93: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3387:
decfsz	wreg,f
	goto	u3387
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3387

	line	94
	
l2797:
;measure.c: 94: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3397:
decfsz	wreg,f
	goto	u3397
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3397

	line	95
	
l2799:
;measure.c: 95: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3407:
decfsz	wreg,f
	goto	u3407
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3407

	line	96
	
l2801:
;measure.c: 96: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3417:
decfsz	wreg,f
	goto	u3417
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3417

	line	97
	
l2803:
;measure.c: 97: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3427:
decfsz	wreg,f
	goto	u3427
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3427

	line	98
	
l2805:
;measure.c: 98: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3437:
decfsz	wreg,f
	goto	u3437
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3437

	line	103
	
l2807:
;measure.c: 103: TRISA |= 0b00010000;
	bsf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	106
	
l2809:
;measure.c: 106: count = timer0_read_ps();
	call	_timer0_read_ps	;wreg free
	movff	0+?_timer0_read_ps,(c:measure_freq@count)
	movff	1+?_timer0_read_ps,(c:measure_freq@count+1)
	line	109
	
l2811:
;measure.c: 109: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	111
	
l2813:
;measure.c: 111: buffer_init();
	call	_buffer_init	;wreg free
	line	112
	
l2815:; BSR set to: 0

;measure.c: 112: buffer_puts("Freq=");
	movlw	(STR_19)&0ffh
	
	call	_buffer_puts
	line	113
	
l2817:; BSR set to: 0

;measure.c: 113: format_number(count, 10, 5);
	movff	(c:measure_freq@count),(c:format_number@n)
	movff	(c:measure_freq@count+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(05h)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	114
	
l2819:
;measure.c: 114: print_buffer();
	call	_print_buffer	;wreg free
	line	116
	
l2821:
;measure.c: 116: return count;
	movff	(c:measure_freq@count),(c:?_measure_freq)
	movff	(c:measure_freq@count+1),(c:?_measure_freq+1)
	line	117
	
l411:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_measure_freq
	__end_of_measure_freq:
	signat	_measure_freq,90
	global	_timer0_read_ps

;; *************** function _timer0_read_ps *****************
;; Defined at:
;;		line 63 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    6[COMRAM] unsigned int 
;;  prev            1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"../../../lib/timer.c"
	line	63
global __ptext34
__ptext34:
psect	text34
	file	"../../../lib/timer.c"
	line	63
	global	__size_of_timer0_read_ps
	__size_of_timer0_read_ps	equ	__end_of_timer0_read_ps-_timer0_read_ps
	
_timer0_read_ps:
;incstack = 0
	opt	stack 27
	line	64
	
l2617:
;timer.c: 64: uint8_t prev = TMR0;
	movff	(c:4054),(c:timer0_read_ps@prev)	;volatile
	line	65
;timer.c: 65: uint16_t count = 0;
	clrf	((c:timer0_read_ps@count)),c
	clrf	((c:timer0_read_ps@count+1)),c
	line	67
	
l2619:
;timer.c: 67: T0CON |= 0x20;
	bsf	(0+(5/8)+(c:4053)),c,(5)&7	;volatile
	line	69
;timer.c: 69: do {
	
l93:
	line	71
;timer.c: 71: T0CON |= 0x10;
	bsf	(0+(4/8)+(c:4053)),c,(4)&7	;volatile
	line	73
	
l2621:
;timer.c: 73: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	74
	
l2623:
;timer.c: 74: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	76
;timer.c: 76: T0CON &= ~0x10;
	bcf	(0+(4/8)+(c:4053)),c,(4)&7	;volatile
	line	78
	
l2625:
;timer.c: 78: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	79
	
l2627:
;timer.c: 79: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	81
;timer.c: 81: ++count;
	infsnz	((c:timer0_read_ps@count)),c
	incf	((c:timer0_read_ps@count+1)),c
	line	84
	
l2629:
;timer.c: 84: } while(prev == TMR0 && count <= 255);
	movf	((c:timer0_read_ps@prev)),c,w
	xorwf	((c:4054)),c,w	;volatile
	iorwf	((c:4054+1)),c,w	;volatile

	btfss	status,2
	goto	u2021
	goto	u2020
u2021:
	goto	l2633
u2020:
	
l2631:
		decf	((c:timer0_read_ps@count+1)),c,w
	btfss	status,0
	goto	u2031
	goto	u2030

u2031:
	goto	l93
u2030:
	line	86
	
l2633:
;timer.c: 86: count = ((prev << 8) + (256 - count));
	movf	((c:timer0_read_ps@prev)),c,w
	movwf	(??_timer0_read_ps+0+0+1)&0ffh,c
	clrf	(??_timer0_read_ps+0+0)&0ffh,c
	movf	((c:timer0_read_ps@count)),c,w
	subwf	(??_timer0_read_ps+0+0),c
	movf	((c:timer0_read_ps@count+1)),c,w
	subwfb	(??_timer0_read_ps+0+1),c
	movlw	low(0100h)
	addwf	(??_timer0_read_ps+0+0),c,w
	movwf	((c:timer0_read_ps@count)),c
	movlw	high(0100h)
	addwfc	(??_timer0_read_ps+0+1),c,w
	movwf	1+((c:timer0_read_ps@count)),c
	line	87
	
l2635:
;timer.c: 87: return count;
	movff	(c:timer0_read_ps@count),(c:?_timer0_read_ps)
	movff	(c:timer0_read_ps@count+1),(c:?_timer0_read_ps+1)
	line	88
	
l97:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer0_read_ps
	__end_of_timer0_read_ps:
	signat	_timer0_read_ps,90
	global	_print_buffer

;; *************** function _print_buffer *****************
;; Defined at:
;;		line 232 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	232
global __ptext35
__ptext35:
psect	text35
	file	"../../../src/print.c"
	line	232
	global	__size_of_print_buffer
	__size_of_print_buffer	equ	__end_of_print_buffer-_print_buffer
	
_print_buffer:
;incstack = 0
	opt	stack 27
	line	240
	
l44:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_print_buffer
	__end_of_print_buffer:
	signat	_print_buffer,88
	global	_lcd_gotoxy

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 135 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    5[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    6[COMRAM] unsigned char 
;;  row_offsets     4    7[COMRAM] unsigned char [4]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_print_unit
;;		_print_reading
;;		_print_indicator
;;		_main
;;		_calibrate
;;		_measure_freq
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	135
global __ptext36
__ptext36:
psect	text36
	file	"../../../lib/lcd44780.c"
	line	135
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:
;incstack = 0
	opt	stack 25
;lcd_gotoxy@col stored from wreg
	movwf	((c:lcd_gotoxy@col)),c
	line	137
	
l2559:
;lcd44780.c: 137: uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	movff	(lcd_gotoxy@F7646),(c:lcd_gotoxy@row_offsets)
	movff	(lcd_gotoxy@F7646+1),(c:lcd_gotoxy@row_offsets+1)
	movff	(lcd_gotoxy@F7646+2),(c:lcd_gotoxy@row_offsets+2)
	movff	(lcd_gotoxy@F7646+3),(c:lcd_gotoxy@row_offsets+3)
	line	146
	
l2561:
;lcd44780.c: 146: if(LCD_lines == 1) {
	movlb	0	; () banked
		decf	((_LCD_lines))&0ffh,w
	btfss	status,2
	goto	u1951
	goto	u1950

u1951:
	goto	l2565
u1950:
	line	147
	
l2563:; BSR set to: 0

;lcd44780.c: 147: row_offsets[1] = 0x14;
	movlw	low(014h)
	movwf	(0+((c:lcd_gotoxy@row_offsets)+01h)),c
	line	148
;lcd44780.c: 148: row_offsets[2] = 0x28;
	movlw	low(028h)
	movwf	(0+((c:lcd_gotoxy@row_offsets)+02h)),c
	line	149
;lcd44780.c: 149: row_offsets[3] = 0x3C;
	movlw	low(03Ch)
	movwf	(0+((c:lcd_gotoxy@row_offsets)+03h)),c
	line	156
	
l2565:; BSR set to: 0

;lcd44780.c: 150: }
;lcd44780.c: 156: lcd_command(0x80 | (col + row_offsets[row]));
	movf	((c:lcd_gotoxy@row)),c,w
	addlw	low(lcd_gotoxy@row_offsets)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	addwf	((c:lcd_gotoxy@col)),c,w
	iorlw	low(080h)
	
	call	_lcd_command
	line	157
	
l178:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
	signat	_lcd_gotoxy,8312
	global	_format_number

;; *************** function _format_number *****************
;; Defined at:
;;		line 15 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  n               2    8[COMRAM] unsigned int 
;;  base            1   10[COMRAM] unsigned char 
;;  pad             1   11[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;  buf            32   14[COMRAM] unsigned char [32]
;;  i               1   50[COMRAM] char 
;;  di              1   49[COMRAM] unsigned char 
;;  padchar         1   48[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:        37       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:        43       0       0       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_buffer_putch
;; This function is called by:
;;		_print_reading
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"../../../lib/format.c"
	line	15
global __ptext37
__ptext37:
psect	text37
	file	"../../../lib/format.c"
	line	15
	global	__size_of_format_number
	__size_of_format_number	equ	__end_of_format_number-_format_number
	
_format_number:
;incstack = 0
	opt	stack 26
	line	18
	
l2575:
;format.c: 16: char buf[8 * sizeof(long)];
;format.c: 17: uint8_t di;
;format.c: 18: int8_t i = 0;
	clrf	((c:format_number@i)),c
	line	19
	
l2577:
;format.c: 19: char padchar = ' ';
	movlw	low(020h)
	movwf	((c:format_number@padchar)),c
	line	21
	
l2579:
;format.c: 21: if(pad < 0) {
	btfsc	((c:format_number@pad)),c,7
	goto	u1970
	goto	u1971

u1971:
	goto	l2585
u1970:
	line	22
	
l2581:
;format.c: 22: pad = -pad;
	negf	((c:format_number@pad)),c
	line	23
	
l2583:
;format.c: 23: padchar = '0';
	movlw	low(030h)
	movwf	((c:format_number@padchar)),c
	line	35
	
l2585:
;format.c: 35: di = n % base;
	movff	(c:format_number@n),(c:___lwmod@dividend)
	movff	(c:format_number@n+1),(c:___lwmod@dividend+1)
	movff	(c:format_number@base),(c:___lwmod@divisor)
	clrf	((c:___lwmod@divisor+1)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	movwf	((c:format_number@di)),c
	line	36
	
l2587:
;format.c: 36: buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
		movlw	0Ah-1
	cpfsgt	((c:format_number@di)),c
	goto	u1981
	goto	u1980

u1981:
	goto	l2591
u1980:
	
l2589:
	movlw	low(037h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$148)),c
	clrf	1+((c:_format_number$148)),c
	movlw	high(037h)
	addwfc	1+((c:_format_number$148)),c
	goto	l2593
	
l2591:
	movlw	low(030h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$148)),c
	clrf	1+((c:_format_number$148)),c
	movlw	high(030h)
	addwfc	1+((c:_format_number$148)),c
	
l2593:
	movf	((c:format_number@i)),c,w
	addlw	low(format_number@buf)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_format_number$148),indf2

	
l2595:
	incf	((c:format_number@i)),c
	line	38
	
l2597:
;format.c: 38: n /= base;
	movff	(c:format_number@n),(c:___lwdiv@dividend)
	movff	(c:format_number@n+1),(c:___lwdiv@dividend+1)
	movff	(c:format_number@base),(c:___lwdiv@divisor)
	clrf	((c:___lwdiv@divisor+1)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:format_number@n)
	movff	1+?___lwdiv,(c:format_number@n+1)
	line	39
	
l2599:
;format.c: 39: } while(n > 0);
	movf	((c:format_number@n)),c,w
iorwf	((c:format_number@n+1)),c,w
	btfss	status,2
	goto	u1991
	goto	u1990

u1991:
	goto	l2585
u1990:
	goto	l2603
	line	41
	
l2601:
	movf	((c:format_number@padchar)),c,w
	
	call	_buffer_putch
	
l2603:
	decf	((c:format_number@pad)),c
	incf	((c:format_number@pad)),c,w
	movwf	(??_format_number+0+0)&0ffh,c
		movf	((c:format_number@i)),c,w
	xorlw	80h
	movwf	(??_format_number+1+0)&0ffh,c
	movf	((??_format_number+0+0)),c,w
	xorlw	80h
	subwf	(??_format_number+1+0)&0ffh,c,w
	btfss	status,0
	goto	u2001
	goto	u2000

u2001:
	goto	l2601
u2000:
	line	43
	
l2605:
;format.c: 43: for(; i > 0; i--) {
		movf	((c:format_number@i)),c,w
	xorlw	80h
	addlw	-(80h^01h)
	btfsc	status,0
	goto	u2011
	goto	u2010

u2011:
	goto	l2609
u2010:
	goto	l130
	line	44
	
l2609:
;format.c: 44: buffer_putch((char)buf[(int16_t)i - 1]);
	movff	(c:format_number@i),??_format_number+0+0
	movlw	0FFh
	addwf	(??_format_number+0+0),c
	movf	(??_format_number+0+0),c,w
	addlw	low(format_number@buf)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_buffer_putch
	line	43
	
l2611:; BSR set to: 0

	decf	((c:format_number@i)),c
	goto	l2605
	line	47
	
l130:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_format_number
	__end_of_format_number:
	signat	_format_number,12408
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    1[COMRAM] unsigned int 
;;  divisor         2    3[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_reading
;;		_format_number
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	8
global __ptext38
__ptext38:
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 26
	line	13
	
l2543:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u1921
	goto	u1920

u1921:
	goto	l992
u1920:
	line	14
	
l2545:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l2549
	line	16
	
l2547:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	line	15
	
l2549:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u1931
	goto	u1930
u1931:
	goto	l2547
u1930:
	line	20
	
l2551:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u1941
	goto	u1940

u1941:
	goto	l2555
u1940:
	line	21
	
l2553:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	line	22
	
l2555:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l2557:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l2551
	line	24
	
l992:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l999:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    1[COMRAM] unsigned int 
;;  divisor         2    3[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMRAM] unsigned int 
;;  counter         1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_reading
;;		_format_number
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	8
global __ptext39
__ptext39:
psect	text39
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 26
	line	14
	
l2521:
	clrf	((c:___lwdiv@quotient)),c
	clrf	((c:___lwdiv@quotient+1)),c
	line	15
	
l2523:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u1891
	goto	u1890

u1891:
	goto	l982
u1890:
	line	16
	
l2525:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l2529
	line	18
	
l2527:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	line	17
	
l2529:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u1901
	goto	u1900
u1901:
	goto	l2527
u1900:
	line	22
	
l2531:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l2533:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u1911
	goto	u1910

u1911:
	goto	l2539
u1910:
	line	24
	
l2535:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l2537:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	line	27
	
l2539:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l2541:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l2531
	line	29
	
l982:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l989:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_buffer_puts

;; *************** function _buffer_puts *****************
;; Defined at:
;;		line 56 in file "../../../lib/buffer.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     PTR const unsigned char 
;;		 -> STR_19(6), 
;; Auto vars:     Size  Location     Type
;;  x               1    4[COMRAM] PTR const unsigned char 
;;		 -> STR_19(6), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_buffer_putch
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	file	"../../../lib/buffer.c"
	line	56
global __ptext40
__ptext40:
psect	text40
	file	"../../../lib/buffer.c"
	line	56
	global	__size_of_buffer_puts
	__size_of_buffer_puts	equ	__end_of_buffer_puts-_buffer_puts
	
_buffer_puts:
;incstack = 0
	opt	stack 26
;buffer_puts@x stored from wreg
	movwf	((c:buffer_puts@x)),c
	line	57
	
l2641:; BSR set to: 0

;buffer.c: 57: while(*x) {
	goto	l2647
	line	58
	
l2643:; BSR set to: 0

;buffer.c: 58: buffer_putch(*x);
	movff	(c:buffer_puts@x),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_buffer_putch
	line	59
	
l2645:; BSR set to: 0

;buffer.c: 59: ++x;
	incf	((c:buffer_puts@x)),c
	line	57
	
l2647:; BSR set to: 0

	movff	(c:buffer_puts@x),tblptrl
	if	0	;There is only one active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l2643
u2040:
	line	62
	
l262:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_buffer_puts
	__end_of_buffer_puts:
	signat	_buffer_puts,4217
	global	_buffer_putch

;; *************** function _buffer_putch *****************
;; Defined at:
;;		line 30 in file "../../../lib/buffer.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_format_double
;;		_buffer_puts
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	line	30
global __ptext41
__ptext41:
psect	text41
	file	"../../../lib/buffer.c"
	line	30
	global	__size_of_buffer_putch
	__size_of_buffer_putch	equ	__end_of_buffer_putch-_buffer_putch
	
_buffer_putch:; BSR set to: 0

;incstack = 0
	opt	stack 26
;buffer_putch@ch stored from wreg
	movwf	((c:buffer_putch@ch)),c
	line	31
	
l2391:
;buffer.c: 31: if(16 - buffer.n <= 0)
	movlw	low(010h)
	movwf	(??_buffer_putch+0+0)&0ffh,c
	movlw	high(010h)
	movwf	1+(??_buffer_putch+0+0)&0ffh,c
	movlb	0	; () banked
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	subwf	(??_buffer_putch+0+0),c
	movlw	0
	subwfb	(??_buffer_putch+0+1),c
	btfsc	(??_buffer_putch+0+1),c,7
	goto	u1720
	movf	(??_buffer_putch+0+1),c,w
	bnz	u1721
	decf	(??_buffer_putch+0+0),c,w
	btfsc	status,0
	goto	u1721
	goto	u1720

u1721:
	goto	l2395
u1720:
	goto	l249
	line	33
	
l2395:; BSR set to: 0

;buffer.c: 33: buffer.x[buffer.n] = ch;
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_buffer_putch+0+0)&0ffh,c
	movf	((??_buffer_putch+0+0)),c,w
	addlw	low(_buffer)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:buffer_putch@ch),indf2

	line	34
	
l2397:; BSR set to: 0

;buffer.c: 34: buffer.n++;
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_buffer_putch+0+0)&0ffh,c
	incf	(??_buffer_putch+0+0),c
	swapf	(??_buffer_putch+0+0)&0ffh,c
	movf	(0+(_buffer+010h))&0ffh,w
	xorwf	(??_buffer_putch+0+0)&0ffh,c,w
	andlw	not (((1<<4)-1)<<4)
	xorwf	(??_buffer_putch+0+0)&0ffh,c,w
	movwf	(0+(_buffer+010h))&0ffh
	line	36
	
l249:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_buffer_putch
	__end_of_buffer_putch:
	signat	_buffer_putch,4217
	global	_buffer_init

;; *************** function _buffer_init *****************
;; Defined at:
;;		line 10 in file "../../../lib/buffer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	line	10
global __ptext42
__ptext42:
psect	text42
	file	"../../../lib/buffer.c"
	line	10
	global	__size_of_buffer_init
	__size_of_buffer_init	equ	__end_of_buffer_init-_buffer_init
	
_buffer_init:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	11
	
l2639:
;buffer.c: 11: buffer.p = 0;
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	movlb	0	; () banked
	andwf	(0+(_buffer+010h))&0ffh
	line	12
;buffer.c: 12: buffer.n = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	(0+(_buffer+010h))&0ffh
	line	13
	
l242:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_buffer_init
	__end_of_buffer_init:
	signat	_buffer_init,88
	global	_lcd_clear

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 287 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	287
global __ptext43
__ptext43:
psect	text43
	file	"../../../lib/lcd44780.c"
	line	287
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	288
	
l2777:
;lcd44780.c: 288: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	289
	
l2779:
;lcd44780.c: 289: _delay((unsigned long)((2)*(16000000/4000.0)));
	movlw	11
movwf	(??_lcd_clear+0+0)&0ffh,c,f
	movlw	98
u3447:
decfsz	wreg,f
	goto	u3447
	decfsz	(??_lcd_clear+0+0)&0ffh,c,f
	goto	u3447
	nop2

	line	291
	
l205:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
	signat	_lcd_clear,88
	global	_lcd_command

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 127 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_gotoxy
;;		_lcd_clear
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	line	127
global __ptext44
__ptext44:
psect	text44
	file	"../../../lib/lcd44780.c"
	line	127
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:
;incstack = 0
	opt	stack 25
;lcd_command@value stored from wreg
	movwf	((c:lcd_command@value)),c
	line	128
	
l2421:
;lcd44780.c: 128: lcd_send(value, 0);
	movlw	low(0)
	movwf	((c:lcd_send@mode)),c
	movf	((c:lcd_command@value)),c,w
	
	call	_lcd_send
	line	129
	
l172:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
	signat	_lcd_command,4216
	global	_lcd_send

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 103 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  mode            1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write4bits
;; This function is called by:
;;		_output_putch
;;		_lcd_command
;;		_lcd_puts
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
	line	103
global __ptext45
__ptext45:
psect	text45
	file	"../../../lib/lcd44780.c"
	line	103
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:
;incstack = 0
	opt	stack 26
;lcd_send@value stored from wreg
	movwf	((c:lcd_send@value)),c
	line	104
	
l2191:
;lcd44780.c: 104: if(mode) {
	movf	((c:lcd_send@mode)),c,w
	btfsc	status,2
	goto	u1361
	goto	u1360
u1361:
	goto	l2195
u1360:
	line	105
	
l2193:
;lcd44780.c: 105: LATB |= 0b0100;
	bsf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	106
;lcd44780.c: 106: } else {
	goto	l2197
	line	107
	
l2195:
;lcd44780.c: 107: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	116
	
l2197:
;lcd44780.c: 108: }
;lcd44780.c: 115: {
;lcd44780.c: 116: lcd_write4bits(value >> 4);
	swapf	((c:lcd_send@value)),c,w
	andlw	(0ffh shr 4) & 0ffh
	
	call	_lcd_write4bits
	line	117
	
l2199:
;lcd44780.c: 117: lcd_write4bits(value);
	movf	((c:lcd_send@value)),c,w
	
	call	_lcd_write4bits
	line	119
	
l169:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
	signat	_lcd_send,8312
	global	_lcd_write4bits

;; *************** function _lcd_write4bits *****************
;; Defined at:
;;		line 34 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2
	line	34
global __ptext46
__ptext46:
psect	text46
	file	"../../../lib/lcd44780.c"
	line	34
	global	__size_of_lcd_write4bits
	__size_of_lcd_write4bits	equ	__end_of_lcd_write4bits-_lcd_write4bits
	
_lcd_write4bits:
;incstack = 0
	opt	stack 26
;lcd_write4bits@value stored from wreg
	movwf	((c:lcd_write4bits@value)),c
	line	39
	
l2153:
;lcd44780.c: 39: LATB &= 0b00001111;
	movlw	(0Fh)&0ffh
	andwf	((c:3978)),c	;volatile
	line	40
;lcd44780.c: 40: LATB |= value << 4;
	swapf	((c:lcd_write4bits@value)),c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((c:3978)),c	;volatile
	line	55
	
l2155:
;lcd44780.c: 55: LATB |= 0b1000; _delay((unsigned long)((4)*(16000000/4000000.0))); LATB &= ~0b1000; _delay((unsigned long)((100)*(16000000/4000000.0)));;
	bsf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	movlw	5
u3457:
decfsz	wreg,f
	goto	u3457
	nop

	
l2157:
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	
l2159:
	movlw	133
u3467:
decfsz	wreg,f
	goto	u3467
	nop

	line	60
	
l164:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_write4bits
	__end_of_lcd_write4bits:
	signat	_lcd_write4bits,4216
	global	_delay10ms

;; *************** function _delay10ms *****************
;; Defined at:
;;		line 58 in file "../../../LC-meter.c"
;; Parameters:    Size  Location     Type
;;  period_10ms     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period_10ms     1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2
	file	"../../../LC-meter.c"
	line	58
global __ptext47
__ptext47:
psect	text47
	file	"../../../LC-meter.c"
	line	58
	global	__size_of_delay10ms
	__size_of_delay10ms	equ	__end_of_delay10ms-_delay10ms
	
_delay10ms:
;incstack = 0
	opt	stack 29
	line	62
	
l323:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay10ms
	__end_of_delay10ms:
	signat	_delay10ms,4216
	global	___lwtofl

;; *************** function ___lwtofl *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   56[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   56[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
global __ptext48
__ptext48:
psect	text48
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
	global	__size_of___lwtofl
	__size_of___lwtofl	equ	__end_of___lwtofl-___lwtofl
	
___lwtofl:
;incstack = 0
	opt	stack 27
	line	30
	
l3529:
	movff	(c:___lwtofl@c),(c:___flpack@arg)
	movff	(c:___lwtofl@c+1),(c:___flpack@arg+1)
	clrf	((c:___flpack@arg+2)),c
	clrf	((c:___flpack@arg+3)),c

	movlw	low(096h)
	movwf	((c:___flpack@exp)),c
	movlw	low(0)
	movwf	((c:___flpack@sign)),c
	call	___flpack	;wreg free
	movff	0+?___flpack,(c:?___lwtofl)
	movff	1+?___flpack,(c:?___lwtofl+1)
	movff	2+?___flpack,(c:?___lwtofl+2)
	movff	3+?___flpack,(c:?___lwtofl+3)
	
	line	31
	
l1004:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwtofl
	__end_of___lwtofl:
	signat	___lwtofl,4220
	global	___flpack

;; *************** function ___flpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
;; Parameters:    Size  Location     Type
;;  arg             4    1[COMRAM] unsigned long 
;;  exp             1    5[COMRAM] unsigned char 
;;  sign            1    6[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    1[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altofl
;;		___awtofl
;;		___fladd
;;		___fldiv
;;		___flmul
;;		___lltofl
;;		___lwtofl
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
global __ptext49
__ptext49:
psect	text49
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
	global	__size_of___flpack
	__size_of___flpack	equ	__end_of___flpack-___flpack
	
___flpack:
;incstack = 0
	opt	stack 27
	line	65
	
l3197:
	movf	((c:___flpack@exp)),c,w
	btfsc	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l656
u2550:
	
l3199:
	movf	((c:___flpack@arg)),c,w
iorwf	((c:___flpack@arg+1)),c,w
iorwf	((c:___flpack@arg+2)),c,w
iorwf	((c:___flpack@arg+3)),c,w
	btfss	status,2
	goto	u2561
	goto	u2560

u2561:
	goto	l3203
u2560:
	
l656:
	line	66
	clrf	((c:?___flpack)),c
	clrf	((c:?___flpack+1)),c
	clrf	((c:?___flpack+2)),c
	clrf	((c:?___flpack+3)),c

	goto	l657
	line	68
	
l3201:
	incf	((c:___flpack@exp)),c
	line	69
	bcf	status,0
	rrcf	((c:___flpack@arg+3)),c
	rrcf	((c:___flpack@arg+2)),c
	rrcf	((c:___flpack@arg+1)),c
	rrcf	((c:___flpack@arg)),c
	line	67
	
l3203:
	movlw	0
	andwf	((c:___flpack@arg)),c,w
	movwf	(??___flpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___flpack@arg+1)),c,w
	movwf	1+(??___flpack+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___flpack@arg+2)),c,w
	movwf	2+(??___flpack+0+0)&0ffh,c
	
	movlw	0FEh
	andwf	((c:___flpack@arg+3)),c,w
	movwf	3+(??___flpack+0+0)&0ffh,c
	movf	(??___flpack+0+0),c,w
iorwf	(??___flpack+0+1),c,w
iorwf	(??___flpack+0+2),c,w
iorwf	(??___flpack+0+3),c,w
	btfss	status,2
	goto	u2571
	goto	u2570

u2571:
	goto	l3201
u2570:
	goto	l661
	line	72
	
l3205:
	incf	((c:___flpack@exp)),c
	line	73
	
l3207:
	movlw	low(01h)
	addwf	((c:___flpack@arg)),c
	movlw	0
	addwfc	((c:___flpack@arg+1)),c
	addwfc	((c:___flpack@arg+2)),c
	addwfc	((c:___flpack@arg+3)),c
	line	74
	
l3209:
	bcf	status,0
	rrcf	((c:___flpack@arg+3)),c
	rrcf	((c:___flpack@arg+2)),c
	rrcf	((c:___flpack@arg+1)),c
	rrcf	((c:___flpack@arg)),c
	line	75
	
l661:
	line	71
	movlw	0
	andwf	((c:___flpack@arg)),c,w
	movwf	(??___flpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___flpack@arg+1)),c,w
	movwf	1+(??___flpack+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___flpack@arg+2)),c,w
	movwf	2+(??___flpack+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___flpack@arg+3)),c,w
	movwf	3+(??___flpack+0+0)&0ffh,c
	movf	(??___flpack+0+0),c,w
iorwf	(??___flpack+0+1),c,w
iorwf	(??___flpack+0+2),c,w
iorwf	(??___flpack+0+3),c,w
	btfss	status,2
	goto	u2581
	goto	u2580

u2581:
	goto	l3205
u2580:
	goto	l3213
	line	77
	
l3211:
	decf	((c:___flpack@exp)),c
	line	78
	bcf	status,0
	rlcf	((c:___flpack@arg)),c
	rlcf	((c:___flpack@arg+1)),c
	rlcf	((c:___flpack@arg+2)),c
	rlcf	((c:___flpack@arg+3)),c
	line	76
	
l3213:
	
	btfsc	((c:___flpack@arg+2)),c,(23)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l668
u2590:
	
l3215:
		movlw	02h-0
	cpfslt	((c:___flpack@exp)),c
	goto	u2601
	goto	u2600

u2601:
	goto	l3211
u2600:
	
l668:
	line	80
	
	btfsc	((c:___flpack@exp)),c,(0)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l669
u2610:
	line	81
	
l3217:
	movlw	0FFh
	andwf	((c:___flpack@arg)),c
	movlw	0FFh
	andwf	((c:___flpack@arg+1)),c
	movlw	07Fh
	andwf	((c:___flpack@arg+2)),c
	movlw	0FFh
	andwf	((c:___flpack@arg+3)),c
	
l669:
	line	82
	bcf status,0
	rrcf	((c:___flpack@exp)),c

	line	83
	movff	(c:___flpack@exp),??___flpack+0+0
	clrf	(??___flpack+0+0+1)&0ffh,c
	clrf	(??___flpack+0+0+2)&0ffh,c
	clrf	(??___flpack+0+0+3)&0ffh,c
	movff	??___flpack+0+0,??___flpack+0+3
	clrf	(??___flpack+0+2),c
	clrf	(??___flpack+0+1),c
	clrf	(??___flpack+0+0),c
	movf	(??___flpack+0+0),c,w
	iorwf	((c:___flpack@arg)),c
	movf	(??___flpack+0+1),c,w
	iorwf	((c:___flpack@arg+1)),c
	movf	(??___flpack+0+2),c,w
	iorwf	((c:___flpack@arg+2)),c
	movf	(??___flpack+0+3),c,w
	iorwf	((c:___flpack@arg+3)),c

	line	84
	
l3219:
	movf	((c:___flpack@sign)),c,w
	btfsc	status,2
	goto	u2621
	goto	u2620
u2621:
	goto	l3223
u2620:
	line	85
	
l3221:
	bsf	(0+(31/8)+(c:___flpack@arg)),c,(31)&7
	line	86
	
l3223:
	movff	(c:___flpack@arg),(c:?___flpack)
	movff	(c:___flpack@arg+1),(c:?___flpack+1)
	movff	(c:___flpack@arg+2),(c:?___flpack+2)
	movff	(c:___flpack@arg+3),(c:?___flpack+3)
	line	87
	
l657:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___flpack
	__end_of___flpack:
	signat	___flpack,12412
	global	_global_int

;; *************** function _global_int *****************
;; Defined at:
;;		line 81 in file "../../../LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"../../../LC-meter.c"
	line	81
	global	__size_of_global_int
	__size_of_global_int	equ	__end_of_global_int-_global_int
	
_global_int:
;incstack = 0
	opt	stack 24
	line	85
	
i2l3117:
;LC-meter.c: 85: if(PIR1 & 0x02) {
	
	btfss	((c:3998)),c,(1)&7	;volatile
	goto	i2u246_41
	goto	i2u246_40
i2u246_41:
	goto	i2l339
i2u246_40:
	line	86
	
i2l3119:
;LC-meter.c: 86: bres += 256;
	movlb	0	; () banked
	movlw	(0100h >> 8)
	addwf	((_bres+1))&0ffh	;volatile
	line	87
;LC-meter.c: 87: if(bres >= ((unsigned long)((double)((16000000) / 4) / 1000))) {
		movlw	160
	subwf	 ((_bres))&0ffh,w	;volatile
	movlw	15
	subwfb	((_bres+1))&0ffh,w	;volatile
	btfss	status,0
	goto	i2u247_41
	goto	i2u247_40

i2u247_41:
	goto	i2l3129
i2u247_40:
	line	88
	
i2l3121:; BSR set to: 0

;LC-meter.c: 88: bres -= ((unsigned long)((double)((16000000) / 4) / 1000));
	movlw	low(0FA0h)
	subwf	((_bres))&0ffh	;volatile
	movlw	high(0FA0h)
	subwfb	((_bres+1))&0ffh	;volatile
	line	89
	
i2l3123:; BSR set to: 0

;LC-meter.c: 89: msecpart++;
	infsnz	((_msecpart))&0ffh	;volatile
	incf	((_msecpart+1))&0ffh	;volatile
	line	90
	
i2l3125:; BSR set to: 0

;LC-meter.c: 90: LATC &= ~0b00000100; LATC |= (!!(msecpart >= 833)) << 2;;
	bcf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
		movlw	65
	subwf	 ((_msecpart))&0ffh,w	;volatile
	movlw	3
	subwfb	((_msecpart+1))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u248_41
	goto	i2u248_40

i2u248_41:
	clrf	(??_global_int+0+0)&0ffh,c
	incf	(??_global_int+0+0)&0ffh,c
	goto	i2u249_48
i2u248_40:
	clrf	(??_global_int+0+0)&0ffh,c
i2u249_48:
	bcf	status,0
	rlcf	(??_global_int+0+0),c
	bcf	status,0
	rlcf	(??_global_int+0+0),c,w
	iorwf	((c:3979)),c	;volatile
	line	92
;LC-meter.c: 92: if(msecpart >= 1000) {
		movlw	232
	movlb	0	; () banked
	subwf	 ((_msecpart))&0ffh,w	;volatile
	movlw	3
	subwfb	((_msecpart+1))&0ffh,w	;volatile
	btfss	status,0
	goto	i2u250_41
	goto	i2u250_40

i2u250_41:
	goto	i2l3129
i2u250_40:
	line	94
	
i2l3127:; BSR set to: 0

;LC-meter.c: 94: seconds++;
	movlw	low(01h)
	addwf	((_seconds))&0ffh	;volatile
	movlw	0
	addwfc	((_seconds+1))&0ffh	;volatile
	addwfc	((_seconds+2))&0ffh	;volatile
	addwfc	((_seconds+3))&0ffh	;volatile
	line	95
;LC-meter.c: 95: msecpart -= 1000;
	movlw	low(03E8h)
	subwf	((_msecpart))&0ffh	;volatile
	movlw	high(03E8h)
	subwfb	((_msecpart+1))&0ffh	;volatile
	line	99
	
i2l3129:; BSR set to: 0

;LC-meter.c: 96: }
;LC-meter.c: 97: }
;LC-meter.c: 99: PIR1 &= ~0b10;
	bcf	(0+(1/8)+(c:3998)),c,(1)&7	;volatile
	line	107
	
i2l339:
	retfie f
	opt stack 0
GLOBAL	__end_of_global_int
	__end_of_global_int:
	signat	_global_int,88
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	1
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end

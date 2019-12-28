opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 201502162209"

opt pagewidth 120

	opt pm

	processor	18F2450
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
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTA equ 0F80h ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTB equ 0F81h ;# 
# 2721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTC equ 0F82h ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTE equ 0F84h ;# 
# 3130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATA equ 0F89h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATB equ 0F8Ah ;# 
# 3397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATC equ 0F8Bh ;# 
# 3512 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISA equ 0F92h ;# 
# 3517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRA equ 0F92h ;# 
# 3709 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISB equ 0F93h ;# 
# 3714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRB equ 0F93h ;# 
# 3930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISC equ 0F94h ;# 
# 3935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRC equ 0F94h ;# 
# 4101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE1 equ 0F9Dh ;# 
# 4169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR1 equ 0F9Eh ;# 
# 4237 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR1 equ 0F9Fh ;# 
# 4305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE2 equ 0FA0h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR2 equ 0FA1h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR2 equ 0FA2h ;# 
# 4434 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON1 equ 0FA6h ;# 
# 4488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON2 equ 0FA7h ;# 
# 4494 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA equ 0FABh ;# 
# 4499 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA1 equ 0FABh ;# 
# 4703 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA equ 0FACh ;# 
# 4708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA1 equ 0FACh ;# 
# 5000 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG equ 0FADh ;# 
# 5005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG1 equ 0FADh ;# 
# 5011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG equ 0FAEh ;# 
# 5016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG1 equ 0FAEh ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG equ 0FAFh ;# 
# 5027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG1 equ 0FAFh ;# 
# 5033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRGH equ 0FB0h ;# 
# 5039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCON equ 0FB8h ;# 
# 5044 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCTL equ 0FB8h ;# 
# 5218 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCP1CON equ 0FBDh ;# 
# 5281 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1 equ 0FBEh ;# 
# 5287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1L equ 0FBEh ;# 
# 5293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1H equ 0FBFh ;# 
# 5299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON2 equ 0FC0h ;# 
# 5369 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON1 equ 0FC1h ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON0 equ 0FC2h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRES equ 0FC3h ;# 
# 5587 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESL equ 0FC3h ;# 
# 5593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESH equ 0FC4h ;# 
# 5599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T2CON equ 0FCAh ;# 
# 5669 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PR2 equ 0FCBh ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
MEMCON equ 0FCBh ;# 
# 5778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR2 equ 0FCCh ;# 
# 5784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T1CON equ 0FCDh ;# 
# 5888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1 equ 0FCEh ;# 
# 5894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1L equ 0FCEh ;# 
# 5900 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1H equ 0FCFh ;# 
# 5906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCON equ 0FD0h ;# 
# 6054 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WDTCON equ 0FD1h ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
HLVDCON equ 0FD2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LVDCON equ 0FD2h ;# 
# 6350 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
OSCCON equ 0FD3h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T0CON equ 0FD5h ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0 equ 0FD6h ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0L equ 0FD6h ;# 
# 6478 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0H equ 0FD7h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STATUS equ 0FD8h ;# 
# 6562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2 equ 0FD9h ;# 
# 6568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2L equ 0FD9h ;# 
# 6574 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2H equ 0FDAh ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW2 equ 0FDBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC2 equ 0FDCh ;# 
# 6592 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC2 equ 0FDDh ;# 
# 6598 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC2 equ 0FDEh ;# 
# 6604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF2 equ 0FDFh ;# 
# 6610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BSR equ 0FE0h ;# 
# 6616 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1 equ 0FE1h ;# 
# 6622 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1L equ 0FE1h ;# 
# 6628 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1H equ 0FE2h ;# 
# 6634 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW1 equ 0FE3h ;# 
# 6640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC1 equ 0FE4h ;# 
# 6646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC1 equ 0FE5h ;# 
# 6652 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC1 equ 0FE6h ;# 
# 6658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF1 equ 0FE7h ;# 
# 6664 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WREG equ 0FE8h ;# 
# 6670 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0 equ 0FE9h ;# 
# 6676 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0L equ 0FE9h ;# 
# 6682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0H equ 0FEAh ;# 
# 6688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW0 equ 0FEBh ;# 
# 6694 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC0 equ 0FECh ;# 
# 6700 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC0 equ 0FEDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC0 equ 0FEEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF0 equ 0FEFh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON3 equ 0FF0h ;# 
# 6809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON2 equ 0FF1h ;# 
# 6885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON equ 0FF2h ;# 
# 7021 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PROD equ 0FF3h ;# 
# 7027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODL equ 0FF3h ;# 
# 7033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODH equ 0FF4h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TABLAT equ 0FF5h ;# 
# 7047 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTR equ 0FF6h ;# 
# 7053 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRL equ 0FF6h ;# 
# 7059 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRH equ 0FF7h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRU equ 0FF8h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLAT equ 0FF9h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PC equ 0FF9h ;# 
# 7086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCL equ 0FF9h ;# 
# 7092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATH equ 0FFAh ;# 
# 7098 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATU equ 0FFBh ;# 
# 7104 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STKPTR equ 0FFCh ;# 
# 7177 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOS equ 0FFDh ;# 
# 7183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSL equ 0FFDh ;# 
# 7189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSH equ 0FFEh ;# 
# 7195 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTA equ 0F80h ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTB equ 0F81h ;# 
# 2721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTC equ 0F82h ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTE equ 0F84h ;# 
# 3130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATA equ 0F89h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATB equ 0F8Ah ;# 
# 3397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATC equ 0F8Bh ;# 
# 3512 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISA equ 0F92h ;# 
# 3517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRA equ 0F92h ;# 
# 3709 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISB equ 0F93h ;# 
# 3714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRB equ 0F93h ;# 
# 3930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISC equ 0F94h ;# 
# 3935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRC equ 0F94h ;# 
# 4101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE1 equ 0F9Dh ;# 
# 4169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR1 equ 0F9Eh ;# 
# 4237 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR1 equ 0F9Fh ;# 
# 4305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE2 equ 0FA0h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR2 equ 0FA1h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR2 equ 0FA2h ;# 
# 4434 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON1 equ 0FA6h ;# 
# 4488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON2 equ 0FA7h ;# 
# 4494 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA equ 0FABh ;# 
# 4499 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA1 equ 0FABh ;# 
# 4703 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA equ 0FACh ;# 
# 4708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA1 equ 0FACh ;# 
# 5000 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG equ 0FADh ;# 
# 5005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG1 equ 0FADh ;# 
# 5011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG equ 0FAEh ;# 
# 5016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG1 equ 0FAEh ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG equ 0FAFh ;# 
# 5027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG1 equ 0FAFh ;# 
# 5033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRGH equ 0FB0h ;# 
# 5039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCON equ 0FB8h ;# 
# 5044 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCTL equ 0FB8h ;# 
# 5218 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCP1CON equ 0FBDh ;# 
# 5281 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1 equ 0FBEh ;# 
# 5287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1L equ 0FBEh ;# 
# 5293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1H equ 0FBFh ;# 
# 5299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON2 equ 0FC0h ;# 
# 5369 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON1 equ 0FC1h ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON0 equ 0FC2h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRES equ 0FC3h ;# 
# 5587 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESL equ 0FC3h ;# 
# 5593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESH equ 0FC4h ;# 
# 5599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T2CON equ 0FCAh ;# 
# 5669 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PR2 equ 0FCBh ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
MEMCON equ 0FCBh ;# 
# 5778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR2 equ 0FCCh ;# 
# 5784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T1CON equ 0FCDh ;# 
# 5888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1 equ 0FCEh ;# 
# 5894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1L equ 0FCEh ;# 
# 5900 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1H equ 0FCFh ;# 
# 5906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCON equ 0FD0h ;# 
# 6054 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WDTCON equ 0FD1h ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
HLVDCON equ 0FD2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LVDCON equ 0FD2h ;# 
# 6350 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
OSCCON equ 0FD3h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T0CON equ 0FD5h ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0 equ 0FD6h ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0L equ 0FD6h ;# 
# 6478 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0H equ 0FD7h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STATUS equ 0FD8h ;# 
# 6562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2 equ 0FD9h ;# 
# 6568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2L equ 0FD9h ;# 
# 6574 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2H equ 0FDAh ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW2 equ 0FDBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC2 equ 0FDCh ;# 
# 6592 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC2 equ 0FDDh ;# 
# 6598 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC2 equ 0FDEh ;# 
# 6604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF2 equ 0FDFh ;# 
# 6610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BSR equ 0FE0h ;# 
# 6616 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1 equ 0FE1h ;# 
# 6622 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1L equ 0FE1h ;# 
# 6628 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1H equ 0FE2h ;# 
# 6634 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW1 equ 0FE3h ;# 
# 6640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC1 equ 0FE4h ;# 
# 6646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC1 equ 0FE5h ;# 
# 6652 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC1 equ 0FE6h ;# 
# 6658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF1 equ 0FE7h ;# 
# 6664 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WREG equ 0FE8h ;# 
# 6670 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0 equ 0FE9h ;# 
# 6676 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0L equ 0FE9h ;# 
# 6682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0H equ 0FEAh ;# 
# 6688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW0 equ 0FEBh ;# 
# 6694 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC0 equ 0FECh ;# 
# 6700 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC0 equ 0FEDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC0 equ 0FEEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF0 equ 0FEFh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON3 equ 0FF0h ;# 
# 6809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON2 equ 0FF1h ;# 
# 6885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON equ 0FF2h ;# 
# 7021 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PROD equ 0FF3h ;# 
# 7027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODL equ 0FF3h ;# 
# 7033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODH equ 0FF4h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TABLAT equ 0FF5h ;# 
# 7047 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTR equ 0FF6h ;# 
# 7053 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRL equ 0FF6h ;# 
# 7059 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRH equ 0FF7h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRU equ 0FF8h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLAT equ 0FF9h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PC equ 0FF9h ;# 
# 7086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCL equ 0FF9h ;# 
# 7092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATH equ 0FFAh ;# 
# 7098 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATU equ 0FFBh ;# 
# 7104 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STKPTR equ 0FFCh ;# 
# 7177 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOS equ 0FFDh ;# 
# 7183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSL equ 0FFDh ;# 
# 7189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSH equ 0FFEh ;# 
# 7195 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTA equ 0F80h ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTB equ 0F81h ;# 
# 2721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTC equ 0F82h ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTE equ 0F84h ;# 
# 3130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATA equ 0F89h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATB equ 0F8Ah ;# 
# 3397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATC equ 0F8Bh ;# 
# 3512 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISA equ 0F92h ;# 
# 3517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRA equ 0F92h ;# 
# 3709 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISB equ 0F93h ;# 
# 3714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRB equ 0F93h ;# 
# 3930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISC equ 0F94h ;# 
# 3935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRC equ 0F94h ;# 
# 4101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE1 equ 0F9Dh ;# 
# 4169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR1 equ 0F9Eh ;# 
# 4237 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR1 equ 0F9Fh ;# 
# 4305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE2 equ 0FA0h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR2 equ 0FA1h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR2 equ 0FA2h ;# 
# 4434 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON1 equ 0FA6h ;# 
# 4488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON2 equ 0FA7h ;# 
# 4494 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA equ 0FABh ;# 
# 4499 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA1 equ 0FABh ;# 
# 4703 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA equ 0FACh ;# 
# 4708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA1 equ 0FACh ;# 
# 5000 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG equ 0FADh ;# 
# 5005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG1 equ 0FADh ;# 
# 5011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG equ 0FAEh ;# 
# 5016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG1 equ 0FAEh ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG equ 0FAFh ;# 
# 5027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG1 equ 0FAFh ;# 
# 5033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRGH equ 0FB0h ;# 
# 5039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCON equ 0FB8h ;# 
# 5044 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCTL equ 0FB8h ;# 
# 5218 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCP1CON equ 0FBDh ;# 
# 5281 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1 equ 0FBEh ;# 
# 5287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1L equ 0FBEh ;# 
# 5293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1H equ 0FBFh ;# 
# 5299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON2 equ 0FC0h ;# 
# 5369 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON1 equ 0FC1h ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON0 equ 0FC2h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRES equ 0FC3h ;# 
# 5587 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESL equ 0FC3h ;# 
# 5593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESH equ 0FC4h ;# 
# 5599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T2CON equ 0FCAh ;# 
# 5669 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PR2 equ 0FCBh ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
MEMCON equ 0FCBh ;# 
# 5778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR2 equ 0FCCh ;# 
# 5784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T1CON equ 0FCDh ;# 
# 5888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1 equ 0FCEh ;# 
# 5894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1L equ 0FCEh ;# 
# 5900 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1H equ 0FCFh ;# 
# 5906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCON equ 0FD0h ;# 
# 6054 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WDTCON equ 0FD1h ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
HLVDCON equ 0FD2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LVDCON equ 0FD2h ;# 
# 6350 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
OSCCON equ 0FD3h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T0CON equ 0FD5h ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0 equ 0FD6h ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0L equ 0FD6h ;# 
# 6478 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0H equ 0FD7h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STATUS equ 0FD8h ;# 
# 6562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2 equ 0FD9h ;# 
# 6568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2L equ 0FD9h ;# 
# 6574 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2H equ 0FDAh ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW2 equ 0FDBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC2 equ 0FDCh ;# 
# 6592 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC2 equ 0FDDh ;# 
# 6598 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC2 equ 0FDEh ;# 
# 6604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF2 equ 0FDFh ;# 
# 6610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BSR equ 0FE0h ;# 
# 6616 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1 equ 0FE1h ;# 
# 6622 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1L equ 0FE1h ;# 
# 6628 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1H equ 0FE2h ;# 
# 6634 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW1 equ 0FE3h ;# 
# 6640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC1 equ 0FE4h ;# 
# 6646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC1 equ 0FE5h ;# 
# 6652 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC1 equ 0FE6h ;# 
# 6658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF1 equ 0FE7h ;# 
# 6664 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WREG equ 0FE8h ;# 
# 6670 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0 equ 0FE9h ;# 
# 6676 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0L equ 0FE9h ;# 
# 6682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0H equ 0FEAh ;# 
# 6688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW0 equ 0FEBh ;# 
# 6694 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC0 equ 0FECh ;# 
# 6700 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC0 equ 0FEDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC0 equ 0FEEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF0 equ 0FEFh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON3 equ 0FF0h ;# 
# 6809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON2 equ 0FF1h ;# 
# 6885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON equ 0FF2h ;# 
# 7021 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PROD equ 0FF3h ;# 
# 7027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODL equ 0FF3h ;# 
# 7033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODH equ 0FF4h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TABLAT equ 0FF5h ;# 
# 7047 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTR equ 0FF6h ;# 
# 7053 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRL equ 0FF6h ;# 
# 7059 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRH equ 0FF7h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRU equ 0FF8h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLAT equ 0FF9h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PC equ 0FF9h ;# 
# 7086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCL equ 0FF9h ;# 
# 7092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATH equ 0FFAh ;# 
# 7098 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATU equ 0FFBh ;# 
# 7104 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STKPTR equ 0FFCh ;# 
# 7177 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOS equ 0FFDh ;# 
# 7183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSL equ 0FFDh ;# 
# 7189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSH equ 0FFEh ;# 
# 7195 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTA equ 0F80h ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTB equ 0F81h ;# 
# 2721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTC equ 0F82h ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTE equ 0F84h ;# 
# 3130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATA equ 0F89h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATB equ 0F8Ah ;# 
# 3397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATC equ 0F8Bh ;# 
# 3512 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISA equ 0F92h ;# 
# 3517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRA equ 0F92h ;# 
# 3709 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISB equ 0F93h ;# 
# 3714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRB equ 0F93h ;# 
# 3930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISC equ 0F94h ;# 
# 3935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRC equ 0F94h ;# 
# 4101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE1 equ 0F9Dh ;# 
# 4169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR1 equ 0F9Eh ;# 
# 4237 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR1 equ 0F9Fh ;# 
# 4305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE2 equ 0FA0h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR2 equ 0FA1h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR2 equ 0FA2h ;# 
# 4434 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON1 equ 0FA6h ;# 
# 4488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON2 equ 0FA7h ;# 
# 4494 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA equ 0FABh ;# 
# 4499 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA1 equ 0FABh ;# 
# 4703 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA equ 0FACh ;# 
# 4708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA1 equ 0FACh ;# 
# 5000 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG equ 0FADh ;# 
# 5005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG1 equ 0FADh ;# 
# 5011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG equ 0FAEh ;# 
# 5016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG1 equ 0FAEh ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG equ 0FAFh ;# 
# 5027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG1 equ 0FAFh ;# 
# 5033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRGH equ 0FB0h ;# 
# 5039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCON equ 0FB8h ;# 
# 5044 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCTL equ 0FB8h ;# 
# 5218 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCP1CON equ 0FBDh ;# 
# 5281 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1 equ 0FBEh ;# 
# 5287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1L equ 0FBEh ;# 
# 5293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1H equ 0FBFh ;# 
# 5299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON2 equ 0FC0h ;# 
# 5369 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON1 equ 0FC1h ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON0 equ 0FC2h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRES equ 0FC3h ;# 
# 5587 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESL equ 0FC3h ;# 
# 5593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESH equ 0FC4h ;# 
# 5599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T2CON equ 0FCAh ;# 
# 5669 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PR2 equ 0FCBh ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
MEMCON equ 0FCBh ;# 
# 5778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR2 equ 0FCCh ;# 
# 5784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T1CON equ 0FCDh ;# 
# 5888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1 equ 0FCEh ;# 
# 5894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1L equ 0FCEh ;# 
# 5900 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1H equ 0FCFh ;# 
# 5906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCON equ 0FD0h ;# 
# 6054 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WDTCON equ 0FD1h ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
HLVDCON equ 0FD2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LVDCON equ 0FD2h ;# 
# 6350 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
OSCCON equ 0FD3h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T0CON equ 0FD5h ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0 equ 0FD6h ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0L equ 0FD6h ;# 
# 6478 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0H equ 0FD7h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STATUS equ 0FD8h ;# 
# 6562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2 equ 0FD9h ;# 
# 6568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2L equ 0FD9h ;# 
# 6574 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2H equ 0FDAh ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW2 equ 0FDBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC2 equ 0FDCh ;# 
# 6592 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC2 equ 0FDDh ;# 
# 6598 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC2 equ 0FDEh ;# 
# 6604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF2 equ 0FDFh ;# 
# 6610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BSR equ 0FE0h ;# 
# 6616 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1 equ 0FE1h ;# 
# 6622 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1L equ 0FE1h ;# 
# 6628 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1H equ 0FE2h ;# 
# 6634 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW1 equ 0FE3h ;# 
# 6640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC1 equ 0FE4h ;# 
# 6646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC1 equ 0FE5h ;# 
# 6652 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC1 equ 0FE6h ;# 
# 6658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF1 equ 0FE7h ;# 
# 6664 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WREG equ 0FE8h ;# 
# 6670 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0 equ 0FE9h ;# 
# 6676 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0L equ 0FE9h ;# 
# 6682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0H equ 0FEAh ;# 
# 6688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW0 equ 0FEBh ;# 
# 6694 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC0 equ 0FECh ;# 
# 6700 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC0 equ 0FEDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC0 equ 0FEEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF0 equ 0FEFh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON3 equ 0FF0h ;# 
# 6809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON2 equ 0FF1h ;# 
# 6885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON equ 0FF2h ;# 
# 7021 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PROD equ 0FF3h ;# 
# 7027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODL equ 0FF3h ;# 
# 7033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODH equ 0FF4h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TABLAT equ 0FF5h ;# 
# 7047 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTR equ 0FF6h ;# 
# 7053 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRL equ 0FF6h ;# 
# 7059 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRH equ 0FF7h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRU equ 0FF8h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLAT equ 0FF9h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PC equ 0FF9h ;# 
# 7086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCL equ 0FF9h ;# 
# 7092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATH equ 0FFAh ;# 
# 7098 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATU equ 0FFBh ;# 
# 7104 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STKPTR equ 0FFCh ;# 
# 7177 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOS equ 0FFDh ;# 
# 7183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSL equ 0FFDh ;# 
# 7189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSH equ 0FFEh ;# 
# 7195 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTA equ 0F80h ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTB equ 0F81h ;# 
# 2721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTC equ 0F82h ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTE equ 0F84h ;# 
# 3130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATA equ 0F89h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATB equ 0F8Ah ;# 
# 3397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATC equ 0F8Bh ;# 
# 3512 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISA equ 0F92h ;# 
# 3517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRA equ 0F92h ;# 
# 3709 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISB equ 0F93h ;# 
# 3714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRB equ 0F93h ;# 
# 3930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISC equ 0F94h ;# 
# 3935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRC equ 0F94h ;# 
# 4101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE1 equ 0F9Dh ;# 
# 4169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR1 equ 0F9Eh ;# 
# 4237 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR1 equ 0F9Fh ;# 
# 4305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE2 equ 0FA0h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR2 equ 0FA1h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR2 equ 0FA2h ;# 
# 4434 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON1 equ 0FA6h ;# 
# 4488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON2 equ 0FA7h ;# 
# 4494 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA equ 0FABh ;# 
# 4499 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA1 equ 0FABh ;# 
# 4703 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA equ 0FACh ;# 
# 4708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA1 equ 0FACh ;# 
# 5000 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG equ 0FADh ;# 
# 5005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG1 equ 0FADh ;# 
# 5011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG equ 0FAEh ;# 
# 5016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG1 equ 0FAEh ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG equ 0FAFh ;# 
# 5027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG1 equ 0FAFh ;# 
# 5033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRGH equ 0FB0h ;# 
# 5039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCON equ 0FB8h ;# 
# 5044 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCTL equ 0FB8h ;# 
# 5218 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCP1CON equ 0FBDh ;# 
# 5281 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1 equ 0FBEh ;# 
# 5287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1L equ 0FBEh ;# 
# 5293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1H equ 0FBFh ;# 
# 5299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON2 equ 0FC0h ;# 
# 5369 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON1 equ 0FC1h ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON0 equ 0FC2h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRES equ 0FC3h ;# 
# 5587 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESL equ 0FC3h ;# 
# 5593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESH equ 0FC4h ;# 
# 5599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T2CON equ 0FCAh ;# 
# 5669 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PR2 equ 0FCBh ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
MEMCON equ 0FCBh ;# 
# 5778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR2 equ 0FCCh ;# 
# 5784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T1CON equ 0FCDh ;# 
# 5888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1 equ 0FCEh ;# 
# 5894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1L equ 0FCEh ;# 
# 5900 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1H equ 0FCFh ;# 
# 5906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCON equ 0FD0h ;# 
# 6054 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WDTCON equ 0FD1h ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
HLVDCON equ 0FD2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LVDCON equ 0FD2h ;# 
# 6350 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
OSCCON equ 0FD3h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T0CON equ 0FD5h ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0 equ 0FD6h ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0L equ 0FD6h ;# 
# 6478 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0H equ 0FD7h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STATUS equ 0FD8h ;# 
# 6562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2 equ 0FD9h ;# 
# 6568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2L equ 0FD9h ;# 
# 6574 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2H equ 0FDAh ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW2 equ 0FDBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC2 equ 0FDCh ;# 
# 6592 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC2 equ 0FDDh ;# 
# 6598 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC2 equ 0FDEh ;# 
# 6604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF2 equ 0FDFh ;# 
# 6610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BSR equ 0FE0h ;# 
# 6616 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1 equ 0FE1h ;# 
# 6622 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1L equ 0FE1h ;# 
# 6628 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1H equ 0FE2h ;# 
# 6634 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW1 equ 0FE3h ;# 
# 6640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC1 equ 0FE4h ;# 
# 6646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC1 equ 0FE5h ;# 
# 6652 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC1 equ 0FE6h ;# 
# 6658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF1 equ 0FE7h ;# 
# 6664 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WREG equ 0FE8h ;# 
# 6670 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0 equ 0FE9h ;# 
# 6676 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0L equ 0FE9h ;# 
# 6682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0H equ 0FEAh ;# 
# 6688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW0 equ 0FEBh ;# 
# 6694 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC0 equ 0FECh ;# 
# 6700 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC0 equ 0FEDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC0 equ 0FEEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF0 equ 0FEFh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON3 equ 0FF0h ;# 
# 6809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON2 equ 0FF1h ;# 
# 6885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON equ 0FF2h ;# 
# 7021 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PROD equ 0FF3h ;# 
# 7027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODL equ 0FF3h ;# 
# 7033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODH equ 0FF4h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TABLAT equ 0FF5h ;# 
# 7047 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTR equ 0FF6h ;# 
# 7053 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRL equ 0FF6h ;# 
# 7059 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRH equ 0FF7h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRU equ 0FF8h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLAT equ 0FF9h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PC equ 0FF9h ;# 
# 7086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCL equ 0FF9h ;# 
# 7092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATH equ 0FFAh ;# 
# 7098 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATU equ 0FFBh ;# 
# 7104 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STKPTR equ 0FFCh ;# 
# 7177 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOS equ 0FFDh ;# 
# 7183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSL equ 0FFDh ;# 
# 7189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSH equ 0FFEh ;# 
# 7195 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTA equ 0F80h ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTB equ 0F81h ;# 
# 2721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTC equ 0F82h ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTE equ 0F84h ;# 
# 3130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATA equ 0F89h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATB equ 0F8Ah ;# 
# 3397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATC equ 0F8Bh ;# 
# 3512 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISA equ 0F92h ;# 
# 3517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRA equ 0F92h ;# 
# 3709 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISB equ 0F93h ;# 
# 3714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRB equ 0F93h ;# 
# 3930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISC equ 0F94h ;# 
# 3935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRC equ 0F94h ;# 
# 4101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE1 equ 0F9Dh ;# 
# 4169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR1 equ 0F9Eh ;# 
# 4237 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR1 equ 0F9Fh ;# 
# 4305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE2 equ 0FA0h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR2 equ 0FA1h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR2 equ 0FA2h ;# 
# 4434 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON1 equ 0FA6h ;# 
# 4488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON2 equ 0FA7h ;# 
# 4494 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA equ 0FABh ;# 
# 4499 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA1 equ 0FABh ;# 
# 4703 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA equ 0FACh ;# 
# 4708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA1 equ 0FACh ;# 
# 5000 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG equ 0FADh ;# 
# 5005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG1 equ 0FADh ;# 
# 5011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG equ 0FAEh ;# 
# 5016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG1 equ 0FAEh ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG equ 0FAFh ;# 
# 5027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG1 equ 0FAFh ;# 
# 5033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRGH equ 0FB0h ;# 
# 5039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCON equ 0FB8h ;# 
# 5044 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCTL equ 0FB8h ;# 
# 5218 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCP1CON equ 0FBDh ;# 
# 5281 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1 equ 0FBEh ;# 
# 5287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1L equ 0FBEh ;# 
# 5293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1H equ 0FBFh ;# 
# 5299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON2 equ 0FC0h ;# 
# 5369 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON1 equ 0FC1h ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON0 equ 0FC2h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRES equ 0FC3h ;# 
# 5587 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESL equ 0FC3h ;# 
# 5593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESH equ 0FC4h ;# 
# 5599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T2CON equ 0FCAh ;# 
# 5669 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PR2 equ 0FCBh ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
MEMCON equ 0FCBh ;# 
# 5778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR2 equ 0FCCh ;# 
# 5784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T1CON equ 0FCDh ;# 
# 5888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1 equ 0FCEh ;# 
# 5894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1L equ 0FCEh ;# 
# 5900 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1H equ 0FCFh ;# 
# 5906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCON equ 0FD0h ;# 
# 6054 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WDTCON equ 0FD1h ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
HLVDCON equ 0FD2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LVDCON equ 0FD2h ;# 
# 6350 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
OSCCON equ 0FD3h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T0CON equ 0FD5h ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0 equ 0FD6h ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0L equ 0FD6h ;# 
# 6478 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0H equ 0FD7h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STATUS equ 0FD8h ;# 
# 6562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2 equ 0FD9h ;# 
# 6568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2L equ 0FD9h ;# 
# 6574 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2H equ 0FDAh ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW2 equ 0FDBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC2 equ 0FDCh ;# 
# 6592 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC2 equ 0FDDh ;# 
# 6598 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC2 equ 0FDEh ;# 
# 6604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF2 equ 0FDFh ;# 
# 6610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BSR equ 0FE0h ;# 
# 6616 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1 equ 0FE1h ;# 
# 6622 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1L equ 0FE1h ;# 
# 6628 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1H equ 0FE2h ;# 
# 6634 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW1 equ 0FE3h ;# 
# 6640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC1 equ 0FE4h ;# 
# 6646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC1 equ 0FE5h ;# 
# 6652 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC1 equ 0FE6h ;# 
# 6658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF1 equ 0FE7h ;# 
# 6664 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WREG equ 0FE8h ;# 
# 6670 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0 equ 0FE9h ;# 
# 6676 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0L equ 0FE9h ;# 
# 6682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0H equ 0FEAh ;# 
# 6688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW0 equ 0FEBh ;# 
# 6694 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC0 equ 0FECh ;# 
# 6700 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC0 equ 0FEDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC0 equ 0FEEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF0 equ 0FEFh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON3 equ 0FF0h ;# 
# 6809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON2 equ 0FF1h ;# 
# 6885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON equ 0FF2h ;# 
# 7021 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PROD equ 0FF3h ;# 
# 7027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODL equ 0FF3h ;# 
# 7033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODH equ 0FF4h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TABLAT equ 0FF5h ;# 
# 7047 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTR equ 0FF6h ;# 
# 7053 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRL equ 0FF6h ;# 
# 7059 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRH equ 0FF7h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRU equ 0FF8h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLAT equ 0FF9h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PC equ 0FF9h ;# 
# 7086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCL equ 0FF9h ;# 
# 7092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATH equ 0FFAh ;# 
# 7098 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATU equ 0FFBh ;# 
# 7104 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STKPTR equ 0FFCh ;# 
# 7177 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOS equ 0FFDh ;# 
# 7183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSL equ 0FFDh ;# 
# 7189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSH equ 0FFEh ;# 
# 7195 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTA equ 0F80h ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTB equ 0F81h ;# 
# 2721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTC equ 0F82h ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTE equ 0F84h ;# 
# 3130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATA equ 0F89h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATB equ 0F8Ah ;# 
# 3397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATC equ 0F8Bh ;# 
# 3512 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISA equ 0F92h ;# 
# 3517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRA equ 0F92h ;# 
# 3709 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISB equ 0F93h ;# 
# 3714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRB equ 0F93h ;# 
# 3930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISC equ 0F94h ;# 
# 3935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRC equ 0F94h ;# 
# 4101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE1 equ 0F9Dh ;# 
# 4169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR1 equ 0F9Eh ;# 
# 4237 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR1 equ 0F9Fh ;# 
# 4305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE2 equ 0FA0h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR2 equ 0FA1h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR2 equ 0FA2h ;# 
# 4434 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON1 equ 0FA6h ;# 
# 4488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON2 equ 0FA7h ;# 
# 4494 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA equ 0FABh ;# 
# 4499 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA1 equ 0FABh ;# 
# 4703 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA equ 0FACh ;# 
# 4708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA1 equ 0FACh ;# 
# 5000 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG equ 0FADh ;# 
# 5005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG1 equ 0FADh ;# 
# 5011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG equ 0FAEh ;# 
# 5016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG1 equ 0FAEh ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG equ 0FAFh ;# 
# 5027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG1 equ 0FAFh ;# 
# 5033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRGH equ 0FB0h ;# 
# 5039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCON equ 0FB8h ;# 
# 5044 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCTL equ 0FB8h ;# 
# 5218 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCP1CON equ 0FBDh ;# 
# 5281 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1 equ 0FBEh ;# 
# 5287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1L equ 0FBEh ;# 
# 5293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1H equ 0FBFh ;# 
# 5299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON2 equ 0FC0h ;# 
# 5369 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON1 equ 0FC1h ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON0 equ 0FC2h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRES equ 0FC3h ;# 
# 5587 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESL equ 0FC3h ;# 
# 5593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESH equ 0FC4h ;# 
# 5599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T2CON equ 0FCAh ;# 
# 5669 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PR2 equ 0FCBh ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
MEMCON equ 0FCBh ;# 
# 5778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR2 equ 0FCCh ;# 
# 5784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T1CON equ 0FCDh ;# 
# 5888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1 equ 0FCEh ;# 
# 5894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1L equ 0FCEh ;# 
# 5900 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1H equ 0FCFh ;# 
# 5906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCON equ 0FD0h ;# 
# 6054 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WDTCON equ 0FD1h ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
HLVDCON equ 0FD2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LVDCON equ 0FD2h ;# 
# 6350 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
OSCCON equ 0FD3h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T0CON equ 0FD5h ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0 equ 0FD6h ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0L equ 0FD6h ;# 
# 6478 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0H equ 0FD7h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STATUS equ 0FD8h ;# 
# 6562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2 equ 0FD9h ;# 
# 6568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2L equ 0FD9h ;# 
# 6574 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2H equ 0FDAh ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW2 equ 0FDBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC2 equ 0FDCh ;# 
# 6592 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC2 equ 0FDDh ;# 
# 6598 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC2 equ 0FDEh ;# 
# 6604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF2 equ 0FDFh ;# 
# 6610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BSR equ 0FE0h ;# 
# 6616 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1 equ 0FE1h ;# 
# 6622 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1L equ 0FE1h ;# 
# 6628 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1H equ 0FE2h ;# 
# 6634 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW1 equ 0FE3h ;# 
# 6640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC1 equ 0FE4h ;# 
# 6646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC1 equ 0FE5h ;# 
# 6652 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC1 equ 0FE6h ;# 
# 6658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF1 equ 0FE7h ;# 
# 6664 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WREG equ 0FE8h ;# 
# 6670 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0 equ 0FE9h ;# 
# 6676 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0L equ 0FE9h ;# 
# 6682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0H equ 0FEAh ;# 
# 6688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW0 equ 0FEBh ;# 
# 6694 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC0 equ 0FECh ;# 
# 6700 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC0 equ 0FEDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC0 equ 0FEEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF0 equ 0FEFh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON3 equ 0FF0h ;# 
# 6809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON2 equ 0FF1h ;# 
# 6885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON equ 0FF2h ;# 
# 7021 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PROD equ 0FF3h ;# 
# 7027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODL equ 0FF3h ;# 
# 7033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODH equ 0FF4h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TABLAT equ 0FF5h ;# 
# 7047 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTR equ 0FF6h ;# 
# 7053 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRL equ 0FF6h ;# 
# 7059 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRH equ 0FF7h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRU equ 0FF8h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLAT equ 0FF9h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PC equ 0FF9h ;# 
# 7086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCL equ 0FF9h ;# 
# 7092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATH equ 0FFAh ;# 
# 7098 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATU equ 0FFBh ;# 
# 7104 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STKPTR equ 0FFCh ;# 
# 7177 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOS equ 0FFDh ;# 
# 7183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSL equ 0FFDh ;# 
# 7189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSH equ 0FFEh ;# 
# 7195 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRM equ 0F66h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRML equ 0F66h ;# 
# 134 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UFRMH equ 0F67h ;# 
# 173 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIR equ 0F68h ;# 
# 228 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UIE equ 0F69h ;# 
# 283 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIR equ 0F6Ah ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEIE equ 0F6Bh ;# 
# 383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
USTAT equ 0F6Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCON equ 0F6Dh ;# 
# 492 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UADDR equ 0F6Eh ;# 
# 555 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UCFG equ 0F6Fh ;# 
# 636 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP0 equ 0F70h ;# 
# 767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP1 equ 0F71h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP2 equ 0F72h ;# 
# 1029 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP3 equ 0F73h ;# 
# 1160 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP4 equ 0F74h ;# 
# 1291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP5 equ 0F75h ;# 
# 1422 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP6 equ 0F76h ;# 
# 1553 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP7 equ 0F77h ;# 
# 1684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP8 equ 0F78h ;# 
# 1771 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP9 equ 0F79h ;# 
# 1858 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP10 equ 0F7Ah ;# 
# 1945 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP11 equ 0F7Bh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP12 equ 0F7Ch ;# 
# 2119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP13 equ 0F7Dh ;# 
# 2206 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP14 equ 0F7Eh ;# 
# 2293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
UEP15 equ 0F7Fh ;# 
# 2380 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTA equ 0F80h ;# 
# 2541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTB equ 0F81h ;# 
# 2721 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTC equ 0F82h ;# 
# 2897 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PORTE equ 0F84h ;# 
# 3130 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATA equ 0F89h ;# 
# 3265 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATB equ 0F8Ah ;# 
# 3397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LATC equ 0F8Bh ;# 
# 3512 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISA equ 0F92h ;# 
# 3517 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRA equ 0F92h ;# 
# 3709 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISB equ 0F93h ;# 
# 3714 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRB equ 0F93h ;# 
# 3930 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TRISC equ 0F94h ;# 
# 3935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
DDRC equ 0F94h ;# 
# 4101 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE1 equ 0F9Dh ;# 
# 4169 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR1 equ 0F9Eh ;# 
# 4237 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR1 equ 0F9Fh ;# 
# 4305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIE2 equ 0FA0h ;# 
# 4348 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PIR2 equ 0FA1h ;# 
# 4391 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
IPR2 equ 0FA2h ;# 
# 4434 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON1 equ 0FA6h ;# 
# 4488 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
EECON2 equ 0FA7h ;# 
# 4494 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA equ 0FABh ;# 
# 4499 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCSTA1 equ 0FABh ;# 
# 4703 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA equ 0FACh ;# 
# 4708 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXSTA1 equ 0FACh ;# 
# 5000 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG equ 0FADh ;# 
# 5005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TXREG1 equ 0FADh ;# 
# 5011 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG equ 0FAEh ;# 
# 5016 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCREG1 equ 0FAEh ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG equ 0FAFh ;# 
# 5027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRG1 equ 0FAFh ;# 
# 5033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
SPBRGH equ 0FB0h ;# 
# 5039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCON equ 0FB8h ;# 
# 5044 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BAUDCTL equ 0FB8h ;# 
# 5218 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCP1CON equ 0FBDh ;# 
# 5281 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1 equ 0FBEh ;# 
# 5287 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1L equ 0FBEh ;# 
# 5293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
CCPR1H equ 0FBFh ;# 
# 5299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON2 equ 0FC0h ;# 
# 5369 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON1 equ 0FC1h ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADCON0 equ 0FC2h ;# 
# 5581 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRES equ 0FC3h ;# 
# 5587 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESL equ 0FC3h ;# 
# 5593 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
ADRESH equ 0FC4h ;# 
# 5599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T2CON equ 0FCAh ;# 
# 5669 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PR2 equ 0FCBh ;# 
# 5674 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
MEMCON equ 0FCBh ;# 
# 5778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR2 equ 0FCCh ;# 
# 5784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T1CON equ 0FCDh ;# 
# 5888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1 equ 0FCEh ;# 
# 5894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1L equ 0FCEh ;# 
# 5900 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR1H equ 0FCFh ;# 
# 5906 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
RCON equ 0FD0h ;# 
# 6054 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WDTCON equ 0FD1h ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
HLVDCON equ 0FD2h ;# 
# 6086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
LVDCON equ 0FD2h ;# 
# 6350 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
OSCCON equ 0FD3h ;# 
# 6397 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
T0CON equ 0FD5h ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0 equ 0FD6h ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0L equ 0FD6h ;# 
# 6478 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TMR0H equ 0FD7h ;# 
# 6484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STATUS equ 0FD8h ;# 
# 6562 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2 equ 0FD9h ;# 
# 6568 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2L equ 0FD9h ;# 
# 6574 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR2H equ 0FDAh ;# 
# 6580 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW2 equ 0FDBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC2 equ 0FDCh ;# 
# 6592 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC2 equ 0FDDh ;# 
# 6598 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC2 equ 0FDEh ;# 
# 6604 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF2 equ 0FDFh ;# 
# 6610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
BSR equ 0FE0h ;# 
# 6616 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1 equ 0FE1h ;# 
# 6622 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1L equ 0FE1h ;# 
# 6628 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR1H equ 0FE2h ;# 
# 6634 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW1 equ 0FE3h ;# 
# 6640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC1 equ 0FE4h ;# 
# 6646 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC1 equ 0FE5h ;# 
# 6652 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC1 equ 0FE6h ;# 
# 6658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF1 equ 0FE7h ;# 
# 6664 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
WREG equ 0FE8h ;# 
# 6670 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0 equ 0FE9h ;# 
# 6676 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0L equ 0FE9h ;# 
# 6682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
FSR0H equ 0FEAh ;# 
# 6688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PLUSW0 equ 0FEBh ;# 
# 6694 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PREINC0 equ 0FECh ;# 
# 6700 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTDEC0 equ 0FEDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
POSTINC0 equ 0FEEh ;# 
# 6712 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INDF0 equ 0FEFh ;# 
# 6718 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON3 equ 0FF0h ;# 
# 6809 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON2 equ 0FF1h ;# 
# 6885 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
INTCON equ 0FF2h ;# 
# 7021 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PROD equ 0FF3h ;# 
# 7027 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODL equ 0FF3h ;# 
# 7033 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PRODH equ 0FF4h ;# 
# 7039 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TABLAT equ 0FF5h ;# 
# 7047 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTR equ 0FF6h ;# 
# 7053 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRL equ 0FF6h ;# 
# 7059 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRH equ 0FF7h ;# 
# 7065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TBLPTRU equ 0FF8h ;# 
# 7073 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLAT equ 0FF9h ;# 
# 7080 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PC equ 0FF9h ;# 
# 7086 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCL equ 0FF9h ;# 
# 7092 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATH equ 0FFAh ;# 
# 7098 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
PCLATU equ 0FFBh ;# 
# 7104 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
STKPTR equ 0FFCh ;# 
# 7177 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOS equ 0FFDh ;# 
# 7183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSL equ 0FFDh ;# 
# 7189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
TOSH equ 0FFEh ;# 
# 7195 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f2450.h"
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
	FNCALL	_main,_ser_init
	FNCALL	_main,_ser_puts
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
	FNCALL	_measure_capacitance,_format_double
	FNCALL	_measure_capacitance,_format_xint32
	FNCALL	_measure_capacitance,_lcd_gotoxy
	FNCALL	_measure_capacitance,_measure_freq
	FNCALL	_measure_capacitance,_print_reading
	FNCALL	_measure_capacitance,_print_unit
	FNCALL	_measure_capacitance,_put_str
	FNCALL	_measure_capacitance,_ser_putch
	FNCALL	_measure_capacitance,_ser_puts
	FNCALL	_print_unit,_lcd_gotoxy
	FNCALL	_print_unit,_ser_puts
	FNCALL	_print_reading,___lwdiv
	FNCALL	_print_reading,___lwmod
	FNCALL	_print_reading,_format_number
	FNCALL	_print_reading,_lcd_gotoxy
	FNCALL	_print_reading,_lcd_puts
	FNCALL	_lcd_puts,_lcd_send
	FNCALL	_format_xint32,_buffer_putch
	FNCALL	_format_xint32,_format_number
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
	FNCALL	_lcd_begin,_lcd_command
	FNCALL	_lcd_begin,_lcd_write4bits
	FNCALL	_calibrate,___lwtofl
	FNCALL	_calibrate,_delay10ms
	FNCALL	_calibrate,_lcd_clear
	FNCALL	_calibrate,_lcd_gotoxy
	FNCALL	_calibrate,_lcd_send
	FNCALL	_calibrate,_measure_freq
	FNCALL	_calibrate,_put_str
	FNCALL	_calibrate,_ser_puts
	FNCALL	_put_str,_output_putch
	FNCALL	_output_putch,_lcd_send
	FNCALL	_output_putch,_ser_putch
	FNCALL	_measure_freq,_buffer_init
	FNCALL	_measure_freq,_buffer_puts
	FNCALL	_measure_freq,_format_number
	FNCALL	_measure_freq,_lcd_gotoxy
	FNCALL	_measure_freq,_print_buffer
	FNCALL	_measure_freq,_timer0_read_ps
	FNCALL	_print_buffer,_ser_putch
	FNCALL	_print_buffer,_ser_puts
	FNCALL	_ser_puts,_ser_putch
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
	global	lcd_gotoxy@F3583
	global	_mode
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"../../../lib/lcd44780.c"
	line	135

;initializer for lcd_gotoxy@F3583
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
	global	_txiptr
	global	_txoptr
	global	_txfifo
	global	_F2
	global	_F3
	global	_msecs
	global	_seconds
	global	_timer1of
	global	_blink
	global	_LCD_ctrl
	global	_LCD_lines
	global	_LCD_mode
	global	_rxiptr
	global	_rxoptr
	global	_ser_tmp
	global	_F1
	global	_rxfifo
	global	_buffer
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
	global	_RCREG
_RCREG	set	0xFAE
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_T0CON
_T0CON	set	0xFD5
	global	_T2CON
_T2CON	set	0xFCA
	global	_TMR2
_TMR2	set	0xFCC
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TXREG
_TXREG	set	0xFAD
	global	_BRGH
_BRGH	set	0x7D62
	global	_CREN
_CREN	set	0x7D5C
	global	_GIE
_GIE	set	0x7F97
	global	_PEIE
_PEIE	set	0x7F96
	global	_RCIF
_RCIF	set	0x7CF5
	global	_RX9
_RX9	set	0x7D5E
	global	_SPEN
_SPEN	set	0x7D5F
	global	_SYNC
_SYNC	set	0x7D64
	global	_TX9
_TX9	set	0x7D66
	global	_TXEN
_TXEN	set	0x7D65
	global	_TXIE
_TXIE	set	0x7CEC
	global	_TXIF
_TXIF	set	0x7CF4
psect	smallconst
	
STR_15:
	db	45
	db	32
	db	67	;'C'
	db	32
	db	40
	db	85	;'U'
	db	110	;'n'
	db	105	;'i'
	db	116	;'t'
	db	58	;':'
	db	32
	db	70	;'F'
	db	41
	db	32
	db	45
	db	0
	
STR_16:
	db	45
	db	32
	db	76	;'L'
	db	32
	db	40
	db	85	;'U'
	db	110	;'n'
	db	105	;'i'
	db	116	;'t'
	db	58	;':'
	db	32
	db	72	;'H'
	db	41
	db	32
	db	45
	db	0
	
STR_25:
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
	
STR_37:
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
	
STR_23:
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
	
STR_28:
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
	
STR_14:
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
	
STR_33:
	db	13
	db	10
	db	67	;'C'
	db	67	;'C'
	db	97	;'a'
	db	108	;'l'
	db	61	;'='
	db	0
	
STR_18:
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_30:
	db	13
	db	10
	db	70	;'F'
	db	49	;'1'
	db	61	;'='
	db	0
	
STR_31:
	db	13
	db	10
	db	70	;'F'
	db	50	;'2'
	db	61	;'='
	db	0
	
STR_32:
	db	13
	db	10
	db	70	;'F'
	db	51	;'3'
	db	61	;'='
	db	0
	
STR_27:
	db	70	;'F'
	db	114	;'r'
	db	101	;'e'
	db	113	;'q'
	db	61	;'='
	db	0
	
STR_35:
	db	67	;'C'
	db	105	;'i'
	db	110	;'n'
	db	61	;'='
	db	0
	
STR_29:
	db	118	;'v'
	db	97	;'a'
	db	114	;'r'
	db	61	;'='
	db	0
	
STR_21:
	db	82	;'R'
	db	67	;'C'
	db	52	;'4'
	db	61	;'='
	db	0
	
STR_11:
	db	45
	db	42
	db	45
	db	0
	
STR_9:
	db	13
	db	10
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
STR_19	equ	STR_18+0
STR_10	equ	STR_18+1
STR_20	equ	STR_18+1
STR_12	equ	STR_18+3
STR_13	equ	STR_9+0
STR_17	equ	STR_9+0
STR_22	equ	STR_9+0
STR_24	equ	STR_9+0
STR_26	equ	STR_9+0
STR_34	equ	STR_9+0
STR_36	equ	STR_9+0
; #config settings
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
global __CFG_PWRT$ON
__CFG_PWRT$ON equ 0x0
global __CFG_BORV$21
__CFG_BORV$21 equ 0x0
global __CFG_BOR$ON
__CFG_BOR$ON equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_STVREN$OFF
__CFG_STVREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"dist/default/production\LC_meter_18f2450_xc8.X.production.as"
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
	global	_txiptr
_txiptr:
       ds      1
	global	_txoptr
_txoptr:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_txfifo
_txfifo:
       ds      16
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
	global	_rxiptr
_rxiptr:
       ds      1
	global	_rxoptr
_rxoptr:
       ds      1
	global	_ser_tmp
_ser_tmp:
       ds      1
	global	_F1
_F1:
       ds      4
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"../../../lib/lcd44780.c"
	line	135
lcd_gotoxy@F3583:
       ds      4
psect	dataBANK0
	file	"../../../LC-meter.c"
	line	48
_mode:
       ds      1
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_rxfifo
_rxfifo:
       ds      16
	global	_buffer
_buffer:
       ds      17
	file	"dist/default/production\LC_meter_18f2450_xc8.X.production.as"
	line	#
psect	cinit
; Clear objects allocated to BANK1 (33 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	33
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (48 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	48
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (3 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
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
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_measure_capacitance$1122
_measure_capacitance$1122:	; 4 bytes @ 0x0
	ds   4
	global	_measure_capacitance$1123
_measure_capacitance$1123:	; 4 bytes @ 0x4
	ds   4
	global	_measure_capacitance$1124
_measure_capacitance$1124:	; 4 bytes @ 0x8
	ds   4
	global	measure_capacitance@unit
measure_capacitance@unit:	; 1 bytes @ 0xC
	ds   1
	global	measure_capacitance@var
measure_capacitance@var:	; 2 bytes @ 0xD
	ds   2
	global	measure_capacitance@Cin
measure_capacitance@Cin:	; 4 bytes @ 0xF
	ds   4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	_log10$1132
_log10$1132:	; 4 bytes @ 0x0
	ds   4
	global	?___fltol
?___fltol:	; 4 bytes @ 0x4
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x4
	ds   4
??___fltol:	; 0 bytes @ 0x8
	ds   4
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0xC
	ds   1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0xD
	ds   1
	global	?___altofl
?___altofl:	; 4 bytes @ 0xE
	global	measure_inductance@numerator
measure_inductance@numerator:	; 4 bytes @ 0xE
	global	___altofl@c
___altofl@c:	; 4 bytes @ 0xE
	ds   4
	global	___altofl@sign
___altofl@sign:	; 1 bytes @ 0x12
	global	measure_inductance@denominator
measure_inductance@denominator:	; 4 bytes @ 0x12
	ds   1
	global	?_floor
?_floor:	; 4 bytes @ 0x13
	global	floor@x
floor@x:	; 4 bytes @ 0x13
	ds   3
	global	_measure_inductance$1125
_measure_inductance$1125:	; 4 bytes @ 0x16
	ds   1
	global	floor@i
floor@i:	; 4 bytes @ 0x17
	ds   3
	global	_measure_inductance$1129
_measure_inductance$1129:	; 4 bytes @ 0x1A
	ds   1
	global	floor@expon
floor@expon:	; 2 bytes @ 0x1B
	ds   2
	global	?_exp
?_exp:	; 4 bytes @ 0x1D
	global	exp@x
exp@x:	; 4 bytes @ 0x1D
	ds   1
	global	_measure_inductance$1130
_measure_inductance$1130:	; 4 bytes @ 0x1E
	ds   3
	global	_exp$1135
_exp$1135:	; 4 bytes @ 0x21
	ds   1
	global	_measure_inductance$1131
_measure_inductance$1131:	; 4 bytes @ 0x22
	ds   3
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x25
	ds   1
	global	measure_inductance@unit
measure_inductance@unit:	; 1 bytes @ 0x26
	ds   1
	global	exp@sign
exp@sign:	; 1 bytes @ 0x27
	global	_measure_inductance$1126
_measure_inductance$1126:	; 4 bytes @ 0x27
	ds   1
	global	?_pow
?_pow:	; 4 bytes @ 0x28
	global	pow@x
pow@x:	; 4 bytes @ 0x28
	ds   3
	global	_measure_inductance$1127
_measure_inductance$1127:	; 4 bytes @ 0x2B
	ds   1
	global	pow@y
pow@y:	; 4 bytes @ 0x2C
	ds   3
	global	_measure_inductance$1128
_measure_inductance$1128:	; 4 bytes @ 0x2F
	ds   1
	global	_pow$1133
_pow$1133:	; 4 bytes @ 0x30
	ds   3
	global	measure_inductance@var
measure_inductance@var:	; 2 bytes @ 0x33
	ds   1
	global	_pow$1134
_pow$1134:	; 4 bytes @ 0x34
	ds   1
	global	measure_inductance@Lin
measure_inductance@Lin:	; 4 bytes @ 0x35
	ds   3
	global	pow@sign
pow@sign:	; 1 bytes @ 0x38
	ds   1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x39
	ds   4
?_format_double:	; 0 bytes @ 0x3D
	global	format_double@num
format_double@num:	; 4 bytes @ 0x3D
	ds   4
	global	_format_double$1120
_format_double$1120:	; 4 bytes @ 0x41
	ds   4
	global	_format_double$1121
_format_double$1121:	; 4 bytes @ 0x45
	ds   4
	global	format_double@weight
format_double@weight:	; 4 bytes @ 0x49
	ds   4
	global	format_double@digit
format_double@digit:	; 2 bytes @ 0x4D
	ds   2
	global	format_double@m
format_double@m:	; 2 bytes @ 0x4F
	ds   2
	global	_main$354
_main$354:	; 1 bytes @ 0x51
	ds   1
	global	main@new_mode
main@new_mode:	; 1 bytes @ 0x52
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_ser_puts:	; 0 bytes @ 0x0
?_lcd_puts:	; 0 bytes @ 0x0
?_ser_putch:	; 0 bytes @ 0x0
?_calibrate:	; 0 bytes @ 0x0
?_measure_capacitance:	; 0 bytes @ 0x0
?_measure_inductance:	; 0 bytes @ 0x0
?_print_unit:	; 0 bytes @ 0x0
?_print_indicator:	; 0 bytes @ 0x0
?_output_putch:	; 0 bytes @ 0x0
?_put_str:	; 0 bytes @ 0x0
?_print_buffer:	; 0 bytes @ 0x0
?_ser_init:	; 0 bytes @ 0x0
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
	ds   3
??_ser_putch:	; 0 bytes @ 0x3
??_buffer_putch:	; 0 bytes @ 0x3
??_ser_init:	; 0 bytes @ 0x3
??_timer0_init:	; 0 bytes @ 0x3
??_timer2_init:	; 0 bytes @ 0x3
??_lcd_write4bits:	; 0 bytes @ 0x3
??_lcd_init:	; 0 bytes @ 0x3
??_buffer_init:	; 0 bytes @ 0x3
??_delay10ms:	; 0 bytes @ 0x3
?___flge:	; 1 bit 
	global	?_timer0_read_ps
?_timer0_read_ps:	; 2 bytes @ 0x3
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x3
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x3
	global	?___flpack
?___flpack:	; 4 bytes @ 0x3
	global	?_frexp
?_frexp:	; 4 bytes @ 0x3
	global	?___flneg
?___flneg:	; 4 bytes @ 0x3
	global	ser_putch@c
ser_putch@c:	; 1 bytes @ 0x3
	global	lcd_write4bits@value
lcd_write4bits@value:	; 1 bytes @ 0x3
	global	lcd_init@fourbitmode
lcd_init@fourbitmode:	; 1 bytes @ 0x3
	global	_timer0_init$154
_timer0_init$154:	; 2 bytes @ 0x3
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x3
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x3
	global	___flpack@arg
___flpack@arg:	; 4 bytes @ 0x3
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x3
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x3
	global	frexp@value
frexp@value:	; 4 bytes @ 0x3
	ds   1
?_lcd_send:	; 0 bytes @ 0x4
??_ser_puts:	; 0 bytes @ 0x4
	global	ser_puts@s
ser_puts@s:	; 1 bytes @ 0x4
	global	timer2_init@ps
timer2_init@ps:	; 1 bytes @ 0x4
	global	lcd_send@mode
lcd_send@mode:	; 1 bytes @ 0x4
	global	_lcd_init$263
_lcd_init$263:	; 2 bytes @ 0x4
	ds   1
??_lcd_send:	; 0 bytes @ 0x5
??_print_buffer:	; 0 bytes @ 0x5
??_timer0_read_ps:	; 0 bytes @ 0x5
	global	lcd_send@value
lcd_send@value:	; 1 bytes @ 0x5
	global	buffer_putch@ch
buffer_putch@ch:	; 1 bytes @ 0x5
	global	_timer0_init$155
_timer0_init$155:	; 2 bytes @ 0x5
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x5
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x5
	ds   1
??_lcd_puts:	; 0 bytes @ 0x6
??_output_putch:	; 0 bytes @ 0x6
??_lcd_command:	; 0 bytes @ 0x6
??_buffer_puts:	; 0 bytes @ 0x6
	global	output_putch@c
output_putch@c:	; 1 bytes @ 0x6
	global	print_buffer@i
print_buffer@i:	; 1 bytes @ 0x6
	global	timer2_init@ps_mode
timer2_init@ps_mode:	; 1 bytes @ 0x6
	global	lcd_command@value
lcd_command@value:	; 1 bytes @ 0x6
	global	buffer_puts@x
buffer_puts@x:	; 1 bytes @ 0x6
	ds   1
?_lcd_gotoxy:	; 0 bytes @ 0x7
??_put_str:	; 0 bytes @ 0x7
??_lcd_clear:	; 0 bytes @ 0x7
?_lcd_begin:	; 0 bytes @ 0x7
??___flneg:	; 0 bytes @ 0x7
??___lwdiv:	; 0 bytes @ 0x7
??___lwmod:	; 0 bytes @ 0x7
	global	timer0_read_ps@prev
timer0_read_ps@prev:	; 1 bytes @ 0x7
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x7
	global	lcd_puts@i
lcd_puts@i:	; 1 bytes @ 0x7
	global	lcd_begin@dotsize
lcd_begin@dotsize:	; 1 bytes @ 0x7
	global	___flpack@exp
___flpack@exp:	; 1 bytes @ 0x7
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x7
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x7
	global	_timer0_init$156
_timer0_init$156:	; 2 bytes @ 0x7
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x7
	ds   1
??_lcd_gotoxy:	; 0 bytes @ 0x8
??_frexp:	; 0 bytes @ 0x8
??_lcd_begin:	; 0 bytes @ 0x8
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x8
	global	lcd_puts@string
lcd_puts@string:	; 1 bytes @ 0x8
	global	___flpack@sign
___flpack@sign:	; 1 bytes @ 0x8
	global	put_str@i
put_str@i:	; 2 bytes @ 0x8
	global	timer0_read_ps@count
timer0_read_ps@count:	; 2 bytes @ 0x8
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x8
	ds   1
??___flpack:	; 0 bytes @ 0x9
	global	lcd_begin@lines
lcd_begin@lines:	; 1 bytes @ 0x9
	global	_timer0_init$157
_timer0_init$157:	; 2 bytes @ 0x9
	global	lcd_gotoxy@row_offsets
lcd_gotoxy@row_offsets:	; 4 bytes @ 0x9
	ds   1
?_format_number:	; 0 bytes @ 0xA
	global	put_str@s
put_str@s:	; 1 bytes @ 0xA
	global	format_number@n
format_number@n:	; 2 bytes @ 0xA
	ds   1
??___flge:	; 0 bytes @ 0xB
	global	_timer0_init$158
_timer0_init$158:	; 2 bytes @ 0xB
	ds   1
	global	format_number@base
format_number@base:	; 1 bytes @ 0xC
	ds   1
??_print_unit:	; 0 bytes @ 0xD
??_print_indicator:	; 0 bytes @ 0xD
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0xD
	global	?___awtofl
?___awtofl:	; 4 bytes @ 0xD
	global	?___lltofl
?___lltofl:	; 4 bytes @ 0xD
	global	print_indicator@indicate
print_indicator@indicate:	; 1 bytes @ 0xD
	global	timer0_init@prescaler
timer0_init@prescaler:	; 1 bytes @ 0xD
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0xD
	global	___awtofl@c
___awtofl@c:	; 2 bytes @ 0xD
	global	___fldiv@f1
___fldiv@f1:	; 4 bytes @ 0xD
	global	___lltofl@c
___lltofl@c:	; 4 bytes @ 0xD
	ds   1
??_format_number:	; 0 bytes @ 0xE
	global	timer0_init@ps_mode
timer0_init@ps_mode:	; 1 bytes @ 0xE
	ds   2
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0x10
	ds   1
??___awtofl:	; 0 bytes @ 0x11
??___lltofl:	; 0 bytes @ 0x11
	global	___awtofl@sign
___awtofl@sign:	; 1 bytes @ 0x11
	global	___fldiv@f2
___fldiv@f2:	; 4 bytes @ 0x11
	ds   4
??___fldiv:	; 0 bytes @ 0x15
	global	___fldiv@f3
___fldiv@f3:	; 4 bytes @ 0x15
	ds   4
	global	___fldiv@cntr
___fldiv@cntr:	; 1 bytes @ 0x19
	ds   1
	global	___fldiv@exp
___fldiv@exp:	; 1 bytes @ 0x1A
	ds   1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x1B
	ds   1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x1C
	global	___flmul@f1
___flmul@f1:	; 4 bytes @ 0x1C
	ds   4
	global	___flmul@f2
___flmul@f2:	; 4 bytes @ 0x20
	ds   4
??___flmul:	; 0 bytes @ 0x24
	ds   12
	global	_format_number$199
_format_number$199:	; 2 bytes @ 0x30
	ds   1
	global	___flmul@exp
___flmul@exp:	; 1 bytes @ 0x31
	ds   1
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x32
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x32
	ds   1
	global	format_number@di
format_number@di:	; 1 bytes @ 0x33
	global	___flmul@f3_as_product
___flmul@f3_as_product:	; 4 bytes @ 0x33
	ds   1
	global	format_number@i
format_number@i:	; 1 bytes @ 0x34
	ds   1
?_print_reading:	; 0 bytes @ 0x35
?_format_xint32:	; 0 bytes @ 0x35
	global	?_measure_freq
?_measure_freq:	; 2 bytes @ 0x35
	global	print_reading@measurement
print_reading@measurement:	; 2 bytes @ 0x35
	global	format_xint32@x
format_xint32@x:	; 4 bytes @ 0x35
	ds   2
??_measure_freq:	; 0 bytes @ 0x37
??_print_reading:	; 0 bytes @ 0x37
	global	?___fladd
?___fladd:	; 4 bytes @ 0x37
	global	_print_reading$1116
_print_reading$1116:	; 2 bytes @ 0x37
	global	___fladd@f1
___fladd@f1:	; 4 bytes @ 0x37
	ds   1
	global	measure_freq@count
measure_freq@count:	; 2 bytes @ 0x38
	ds   1
??_format_xint32:	; 0 bytes @ 0x39
	global	_print_reading$1117
_print_reading$1117:	; 2 bytes @ 0x39
	ds   1
	global	?___lwtofl
?___lwtofl:	; 4 bytes @ 0x3A
	global	___lwtofl@c
___lwtofl@c:	; 2 bytes @ 0x3A
	ds   1
	global	___fladd@f2
___fladd@f2:	; 4 bytes @ 0x3B
	ds   3
??_calibrate:	; 0 bytes @ 0x3E
??___lwtofl:	; 0 bytes @ 0x3E
	global	calibrate@i
calibrate@i:	; 1 bytes @ 0x3E
	ds   1
??___fladd:	; 0 bytes @ 0x3F
	ds   1
	global	___fladd@sign
___fladd@sign:	; 1 bytes @ 0x40
	ds   1
	global	___fladd@exp2
___fladd@exp2:	; 1 bytes @ 0x41
	ds   1
	global	___fladd@exp1
___fladd@exp1:	; 1 bytes @ 0x42
	ds   1
	global	?___flsub
?___flsub:	; 4 bytes @ 0x43
	global	?_eval_poly
?_eval_poly:	; 4 bytes @ 0x43
	global	___flsub@f1
___flsub@f1:	; 4 bytes @ 0x43
	global	eval_poly@x
eval_poly@x:	; 4 bytes @ 0x43
	ds   4
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x47
	global	___flsub@f2
___flsub@f2:	; 4 bytes @ 0x47
	ds   1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x48
	ds   2
??_eval_poly:	; 0 bytes @ 0x4A
	ds   1
??___flsub:	; 0 bytes @ 0x4B
	global	eval_poly@res
eval_poly@res:	; 4 bytes @ 0x4B
	ds   4
	global	?_ldexp
?_ldexp:	; 4 bytes @ 0x4F
	global	?_log
?_log:	; 4 bytes @ 0x4F
	global	ldexp@value
ldexp@value:	; 4 bytes @ 0x4F
	global	log@x
log@x:	; 4 bytes @ 0x4F
	ds   4
??_log:	; 0 bytes @ 0x53
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x53
	global	log@exponent
log@exponent:	; 2 bytes @ 0x53
	ds   2
??_ldexp:	; 0 bytes @ 0x55
	global	?_log10
?_log10:	; 4 bytes @ 0x55
	global	log10@x
log10@x:	; 4 bytes @ 0x55
	ds   4
??_log10:	; 0 bytes @ 0x59
??_pow:	; 0 bytes @ 0x59
??_floor:	; 0 bytes @ 0x59
??_measure_capacitance:	; 0 bytes @ 0x59
??_measure_inductance:	; 0 bytes @ 0x59
??_exp:	; 0 bytes @ 0x59
??_format_double:	; 0 bytes @ 0x59
??_main:	; 0 bytes @ 0x59
??___altofl:	; 0 bytes @ 0x59
;!
;!Data Sizes:
;!    Strings     174
;!    Constant    76
;!    Data        5
;!    BSS         84
;!    Persistent  8
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     89      92
;!    BANK0           160     83     144
;!    BANK1           256     19      52
;!    BANK4           256      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 40
;!		 -> exp@coeff(CODE[40]), log@coeff(CODE[36]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(COMRAM[2]), floor@expon(BANK0[2]), 
;!
;!    main$354	PTR const unsigned char  size(1) Largest target is 16
;!		 -> STR_16(CODE[16]), STR_15(CODE[16]), 
;!
;!    buffer_puts@x	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_27(CODE[6]), 
;!
;!    lcd_puts@string	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_21(CODE[5]), STR_20(CODE[6]), STR_19(CODE[7]), STR_18(CODE[7]), 
;!		 -> STR_14(CODE[10]), STR_12(CODE[4]), STR_11(CODE[4]), STR_10(CODE[6]), 
;!
;!    ser_puts@s	PTR const unsigned char  size(1) Largest target is 16
;!		 -> STR_36(CODE[3]), STR_35(CODE[5]), STR_34(CODE[3]), STR_33(CODE[8]), 
;!		 -> STR_32(CODE[6]), STR_31(CODE[6]), STR_30(CODE[6]), STR_29(CODE[5]), 
;!		 -> STR_26(CODE[3]), STR_24(CODE[3]), STR_22(CODE[3]), STR_17(CODE[3]), 
;!		 -> STR_16(CODE[16]), STR_15(CODE[16]), STR_13(CODE[3]), STR_9(CODE[3]), 
;!
;!    put_str@s	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_37(CODE[13]), STR_28(CODE[10]), STR_25(CODE[15]), STR_23(CODE[12]), 
;!
;!    print_unit@units	PTR const unsigned char [8] size(1) Largest target is 3
;!		 -> STR_8(CODE[3]), STR_7(CODE[3]), STR_6(CODE[3]), STR_5(CODE[3]), 
;!		 -> STR_4(CODE[3]), STR_3(CODE[3]), STR_2(CODE[3]), STR_1(CODE[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _print_indicator->_lcd_gotoxy
;!    _print_unit->_lcd_gotoxy
;!    _print_reading->_format_number
;!    _lcd_puts->_lcd_send
;!    _format_xint32->_format_number
;!    _format_double->_log10
;!    _ldexp->_eval_poly
;!    ___fltol->_log10
;!    ___flsub->___fladd
;!    ___fldiv->___flpack
;!    ___lltofl->___flpack
;!    _log10->_log
;!    _log->_eval_poly
;!    _eval_poly->___fladd
;!    ___flmul->___fldiv
;!    ___fladd->___flmul
;!    ___awtofl->___flpack
;!    _lcd_begin->_lcd_command
;!    _calibrate->___lwtofl
;!    _put_str->_output_putch
;!    _output_putch->_lcd_send
;!    _measure_freq->_format_number
;!    _print_buffer->_ser_puts
;!    _ser_puts->_ser_putch
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
;!    _measure_capacitance->_format_double
;!    _format_double->_pow
;!    _pow->_exp
;!    _exp->_floor
;!    _floor->___altofl
;!    ___fltol->_log10
;!    ___altofl->___fltol
;!
;!Critical Paths under _global_int in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_measure_capacitance
;!
;!Critical Paths under _global_int in BANK1
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

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0  415507
;!                                             81 BANK0      2     2      0
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
;!                           _ser_init
;!                           _ser_puts
;!                        _timer0_init
;!                        _timer2_init
;! ---------------------------------------------------------------------------------
;! (1) _timer2_init                                          4     4      0      90
;!                                              3 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _timer0_init                                         12    12      0     297
;!                                              3 COMRAM    12    12      0
;! ---------------------------------------------------------------------------------
;! (1) _ser_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _print_indicator                                      1     1      0    2955
;!                                             13 COMRAM     1     1      0
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (1) _measure_inductance                                  55    55      0   41982
;!                                             14 BANK0     43    43      0
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
;! (1) _measure_capacitance                                 19    19      0  198658
;!                                              0 BANK1     19    19      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                           ___lwtofl
;!                      _format_double
;!                      _format_xint32
;!                         _lcd_gotoxy
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                            _put_str
;!                          _ser_putch
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (2) _print_unit                                           3     3      0    2491
;!                                             13 COMRAM     2     2      0
;!                         _lcd_gotoxy
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (2) _print_reading                                        6     4      2    7600
;!                                             53 COMRAM     6     4      2
;!                            ___lwdiv
;!                            ___lwmod
;!                      _format_number
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (2) _lcd_puts                                             3     3      0     979
;!                                              6 COMRAM     3     3      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (2) _format_xint32                                        4     0      4    3729
;!                                             53 COMRAM     4     0      4
;!                       _buffer_putch
;!                      _format_number
;! ---------------------------------------------------------------------------------
;! (2) _format_double                                       20    16      4  152787
;!                                             61 BANK0     20    16      4
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
;! (3) _pow                                                 21    13      8   85608
;!                                             40 BANK0     21    13      8
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___fltol
;!                           ___lltofl
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (4) _exp                                                 11     7      4   45695
;!                                             29 BANK0     11     7      4
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
;! (5) _ldexp                                                8     2      6     489
;!                                             79 COMRAM     8     2      6
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _floor                                               10     6      4   10644
;!                                             19 BANK0     10     6      4
;!                           ___altofl
;!                            ___fladd
;!                            ___fldiv (ARG)
;!                             ___flge
;!                            ___fltol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) ___fltol                                             10     6      4     882
;!                                              4 BANK0     10     6      4
;!                            ___fldiv (ARG)
;!                              _log10 (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flge                                               8     0      8    1978
;!                                              3 COMRAM     8     0      8
;! ---------------------------------------------------------------------------------
;! (6) ___altofl                                             5     1      4    2446
;!                                             14 BANK0      5     1      4
;!                           ___flpack
;!                            ___fltol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flsub                                              8     0      8    5269
;!                                             67 COMRAM     8     0      8
;!                           ___awtofl (ARG)
;!                            ___fladd
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___flneg                                              4     0      4     260
;!                                              3 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (2) ___fldiv                                             15     7      8    4021
;!                                             13 COMRAM    15     7      8
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (4) ___lltofl                                             4     0      4    2344
;!                                             13 COMRAM     4     0      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (3) _log10                                                8     4      4   33887
;!                                             85 COMRAM     4     0      4
;!                                              0 BANK0      4     4      0
;!                            ___flmul
;!                                _log
;! ---------------------------------------------------------------------------------
;! (4) _log                                                  6     2      4   26714
;!                                             79 COMRAM     6     2      4
;!                           ___awtofl
;!                            ___fladd
;!                            ___flmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (5) _frexp                                                7     2      5     582
;!                                              3 COMRAM     7     2      5
;! ---------------------------------------------------------------------------------
;! (5) _eval_poly                                           12     5      7   11855
;!                                             67 COMRAM    12     5      7
;!                            ___fladd
;!                            ___flmul
;! ---------------------------------------------------------------------------------
;! (2) ___flmul                                             28    20      8    6998
;!                                             28 COMRAM    27    19      8
;!                           ___awtofl (ARG)
;!                            ___fldiv (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___fladd                                             12     4      8    4213
;!                                             55 COMRAM    12     4      8
;!                           ___awtofl (ARG)
;!                            ___flmul (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___awtofl                                             9     5      4    2686
;!                                             13 COMRAM     5     1      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             3     3      0      46
;!                                              3 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_begin                                            3     2      1     860
;!                                              7 COMRAM     3     2      1
;!                        _lcd_command
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (1) _calibrate                                            1     1      0   13620
;!                                             62 COMRAM     1     1      0
;!                           ___lwtofl
;!                          _delay10ms
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                           _lcd_send
;!                       _measure_freq
;!                            _put_str
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (2) _put_str                                              4     4      0     952
;!                                              7 COMRAM     4     4      0
;!                       _output_putch
;! ---------------------------------------------------------------------------------
;! (3) _output_putch                                         1     1      0     702
;!                                              6 COMRAM     1     1      0
;!                           _lcd_send
;!                          _ser_putch
;! ---------------------------------------------------------------------------------
;! (2) _measure_freq                                         5     3      2    6191
;!                                             53 COMRAM     5     3      2
;!                        _buffer_init
;!                        _buffer_puts
;!                      _format_number
;!                         _lcd_gotoxy
;!                       _print_buffer
;!                     _timer0_read_ps
;! ---------------------------------------------------------------------------------
;! (3) _timer0_read_ps                                       7     5      2     167
;!                                              3 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (3) _print_buffer                                         2     2      0     645
;!                                              5 COMRAM     2     2      0
;!                          _ser_putch
;!                           _ser_puts
;! ---------------------------------------------------------------------------------
;! (1) _ser_puts                                             1     1      0     546
;!                                              4 COMRAM     1     1      0
;!                          _ser_putch
;! ---------------------------------------------------------------------------------
;! (2) _ser_putch                                            1     1      0      31
;!                                              3 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _lcd_gotoxy                                           6     5      1    1945
;!                                              7 COMRAM     6     5      1
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _format_number                                       43    39      4    3243
;!                                             10 COMRAM    43    39      4
;!                            ___lwdiv
;!                            ___lwmod
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     582
;!                                              3 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     591
;!                                              3 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) _buffer_puts                                          1     1      0     126
;!                                              6 COMRAM     1     1      0
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) _buffer_putch                                         3     3      0      31
;!                                              3 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _buffer_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_clear                                            1     1      0     640
;!                                              7 COMRAM     1     1      0
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _lcd_command                                          1     1      0     640
;!                                              6 COMRAM     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (3) _lcd_send                                             2     1      1     609
;!                                              4 COMRAM     2     1      1
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (4) _lcd_write4bits                                       1     1      0      31
;!                                              3 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _delay10ms                                            1     1      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwtofl                                             4     0      4    2669
;!                                             58 COMRAM     4     0      4
;!                           ___flpack
;!                       _measure_freq (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___flpack                                            10     4      6    2248
;!                                              3 COMRAM    10     4      6
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (8) _global_int                                           3     3      0       0
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
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
;!           _ser_putch
;!           _ser_puts
;!             _ser_putch
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
;!         _ser_putch
;!         _ser_puts
;!           _ser_putch
;!       _timer0_read_ps
;!     _put_str
;!       _output_putch
;!         _lcd_send
;!           _lcd_write4bits
;!         _ser_putch
;!     _ser_puts
;!       _ser_putch
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
;!           _ser_putch
;!           _ser_puts
;!             _ser_putch
;!         _timer0_read_ps
;!     _format_double
;!       ___awtofl
;!         ___flpack
;!       ___fldiv
;!         ___flpack
;!       ___flge
;!       ___flmul
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flpack (ARG)
;!         _frexp (ARG)
;!       ___flsub
;!         ___awtofl (ARG)
;!           ___flpack
;!         ___fladd (ARG)
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
;!         ___flmul (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
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
;!       _buffer_putch
;!       _floor
;!         ___altofl
;!           ___flpack
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
;!         ___fldiv (ARG)
;!           ___flpack
;!         ___flge (ARG)
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
;!         _frexp (ARG)
;!       _log10
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
;!       _pow
;!         ___flge
;!         ___flmul
;!           ___awtofl (ARG)
;!             ___flpack
;!           ___fldiv (ARG)
;!             ___flpack
;!           ___flpack (ARG)
;!           _frexp (ARG)
;!         ___flneg
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
;!         ___lltofl
;!           ___flpack
;!         _exp
;!           ___awtofl
;!             ___flpack
;!           ___fldiv
;!             ___flpack
;!           ___flge
;!           ___flmul
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flpack (ARG)
;!             _frexp (ARG)
;!           ___flneg
;!           ___flsub
;!             ___awtofl (ARG)
;!               ___flpack
;!             ___fladd (ARG)
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
;!             ___flmul (ARG)
;!               ___awtofl (ARG)
;!                 ___flpack
;!               ___fldiv (ARG)
;!                 ___flpack
;!               ___flpack (ARG)
;!               _frexp (ARG)
;!           ___fltol
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
;!           _floor
;!             ___altofl
;!               ___flpack
;!               ___fltol (ARG)
;!                 ___fldiv (ARG)
;!                   ___flpack
;!                 _log10 (ARG)
;!                   ___flmul
;!                     ___awtofl (ARG)
;!                       ___flpack
;!                     ___fldiv (ARG)
;!                       ___flpack
;!                     ___flpack (ARG)
;!                     _frexp (ARG)
;!                   _log
;!                     ___awtofl
;!                       ___flpack
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
;!                     _eval_poly
;!                       ___fladd
;!                         ___awtofl (ARG)
;!                           ___flpack
;!                         ___flmul (ARG)
;!                           ___awtofl (ARG)
;!                             ___flpack
;!                           ___fldiv (ARG)
;!                             ___flpack
;!                           ___flpack (ARG)
;!                           _frexp (ARG)
;!                         ___flpack (ARG)
;!                         _frexp (ARG)
;!                       ___flmul
;!                         ___awtofl (ARG)
;!                           ___flpack
;!                         ___fldiv (ARG)
;!                           ___flpack
;!                         ___flpack (ARG)
;!                         _frexp (ARG)
;!                     _frexp
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
;!             ___fldiv (ARG)
;!               ___flpack
;!             ___flge (ARG)
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
;!             _frexp (ARG)
;!           _ldexp
;!             _eval_poly (ARG)
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
;!           _log (ARG)
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
;!     _format_xint32
;!       _buffer_putch
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _buffer_putch
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
;!         _ser_putch
;!         _ser_puts
;!           _ser_putch
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
;!       _ser_puts
;!         _ser_putch
;!     _put_str
;!       _output_putch
;!         _lcd_send
;!           _lcd_write4bits
;!         _ser_putch
;!     _ser_putch
;!     _ser_puts
;!       _ser_putch
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
;!           _ser_putch
;!           _ser_puts
;!             _ser_putch
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
;!         _ser_putch
;!         _ser_puts
;!           _ser_putch
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
;!       _ser_puts
;!         _ser_putch
;!     _put_str
;!       _output_putch
;!         _lcd_send
;!           _lcd_write4bits
;!         _ser_putch
;!   _print_indicator
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_puts
;!       _lcd_send
;!         _lcd_write4bits
;!   _ser_init
;!   _ser_puts
;!     _ser_putch
;!   _timer0_init
;!   _timer2_init
;!
;! _global_int (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1FF      0       0      11        0.0%
;!BITBANK4           100      0       0       8        0.0%
;!BANK4              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100     13      34       7       20.3%
;!BIGRAM_1           100      0       0      10        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     53      90       5       90.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     59      5C       1       96.8%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     120       3        0.0%
;!DATA                 0      0     120      12        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 113 in file "../../../LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  new_mode        1   82[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    8
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
;;		_ser_init
;;		_ser_puts
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
	opt	stack 23
	line	114
	
l4634:
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
	
l4636:; BSR set to: 0

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
	
l4638:; BSR set to: 0

;LC-meter.c: 130: timer0_init(0b1000 | 0x20 | 0x40);
	movlw	(068h)&0ffh
	
	call	_timer0_init
	line	137
	
l4640:; BSR set to: 0

;LC-meter.c: 137: INTCON2 &= ~0b10000000;
	bcf	(0+(7/8)+(c:4081)),c,(7)&7	;volatile
	line	145
	
l4642:; BSR set to: 0

;LC-meter.c: 145: TRISC = 0b10111011;
	movlw	low(0BBh)
	movwf	((c:3988)),c	;volatile
	line	149
	
l4644:; BSR set to: 0

;LC-meter.c: 149: TRISC &= ~0b00000100;
	bcf	(0+(2/8)+(c:3988)),c,(2)&7	;volatile
	line	150
	
l4646:; BSR set to: 0

;LC-meter.c: 150: LATC &= ~0b00000100; LATC |= (!!(1)) << 2;;
	bcf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
	
l4648:; BSR set to: 0

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
	
l4650:
;LC-meter.c: 164: TRISC |= (1 << 4);
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	165
	
l4652:
;LC-meter.c: 165: TRISC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	167
	
l4654:
;LC-meter.c: 167: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	168
;LC-meter.c: 168: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	169
	
l4656:
;LC-meter.c: 169: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	170
	
l4658:
;LC-meter.c: 170: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	171
;LC-meter.c: 171: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	172
	
l4660:
;LC-meter.c: 172: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	173
	
l4662:
;LC-meter.c: 173: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	174
;LC-meter.c: 174: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	175
	
l4664:
;LC-meter.c: 175: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	178
;LC-meter.c: 178: ser_init();
	call	_ser_init	;wreg free
	line	185
	
l4666:; BSR set to: 0

;LC-meter.c: 185: INTCON |= 0xc0;
	movlw	(0C0h)&0ffh
	iorwf	((c:4082)),c	;volatile
	line	191
	
l4668:; BSR set to: 0

;LC-meter.c: 191: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	193
	
l4670:
;LC-meter.c: 193: lcd_puts("LC-meter ");
	movlw	(STR_14)&0ffh
	
	call	_lcd_puts
	line	194
	
l4672:
;LC-meter.c: 194: format_double( CCal);
	movff	(_CCal),(format_double@num)
	movff	(_CCal+1),(format_double@num+1)
	movff	(_CCal+2),(format_double@num+2)
	movff	(_CCal+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	200
	
l4674:
;LC-meter.c: 200: delay10ms(200);
	movlw	(0C8h)&0ffh
	
	call	_delay10ms
	line	203
	
l4676:
;LC-meter.c: 203: calibrate();
	call	_calibrate	;wreg free
	line	206
	
l4678:
;LC-meter.c: 206: lcd_clear();
	call	_lcd_clear	;wreg free
	line	215
	
l4680:
;LC-meter.c: 215: char new_mode = (!!(PORTC & 0b10000));
	
	btfsc	((c:3970)),c,(4)&7	;volatile
	goto	u3851
	goto	u3850
u3851:
	movlw	1
	goto	u3860
u3850:
	movlw	0
u3860:
	movlb	0	; () banked
	movwf	((main@new_mode))&0ffh
	line	217
	
l4682:; BSR set to: 0

;LC-meter.c: 217: if(new_mode != mode) {
	movf	((_mode))&0ffh,w
xorwf	((main@new_mode))&0ffh,w
	btfsc	status,2
	goto	u3871
	goto	u3870

u3871:
	goto	l4696
u3870:
	line	218
	
l4684:; BSR set to: 0

;LC-meter.c: 218: ser_puts(mode ? "- C (Unit: F) -" : "- L (Unit: H) -");
	movf	((_mode))&0ffh,w
	btfss	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l4688
u3880:
	
l4686:; BSR set to: 0

		movlw	low(STR_16)
	movwf	((_main$354))&0ffh

	goto	l4690
	
l4688:; BSR set to: 0

		movlw	low(STR_15)
	movwf	((_main$354))&0ffh

	
l4690:; BSR set to: 0

	movf	((_main$354))&0ffh,w
	
	call	_ser_puts
	line	219
	
l4692:
;LC-meter.c: 219: ser_puts("\r\n");
	movlw	(STR_17)&0ffh
	
	call	_ser_puts
	line	221
	
l4694:
;LC-meter.c: 221: mode = new_mode;
	movff	(main@new_mode),(_mode)
	line	224
	
l4696:
;LC-meter.c: 222: }
;LC-meter.c: 224: if(mode)
	movlb	0	; () banked
	movf	((_mode))&0ffh,w
	btfsc	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l4700
u3890:
	line	225
	
l4698:; BSR set to: 0

;LC-meter.c: 225: measure_capacitance();
	call	_measure_capacitance	;wreg free
	goto	l4702
	line	227
	
l4700:; BSR set to: 0

;LC-meter.c: 226: else
;LC-meter.c: 227: measure_inductance();
	call	_measure_inductance	;wreg free
	line	229
	
l4702:
;LC-meter.c: 229: print_indicator(1);
	movlw	(01h)&0ffh
	
	call	_print_indicator
	line	230
	
l4704:
;LC-meter.c: 230: delay10ms(30);
	movlw	(01Eh)&0ffh
	
	call	_delay10ms
	line	232
	
l4706:
;LC-meter.c: 232: print_indicator(0);
	movlw	(0)&0ffh
	
	call	_print_indicator
	line	233
	
l4708:
;LC-meter.c: 233: delay10ms(20);
	movlw	(014h)&0ffh
	
	call	_delay10ms
	line	234
;LC-meter.c: 234: }
	goto	l4680
	global	start
	goto	start
	opt stack 0
	line	235
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
;;  ps_mode         1    6[COMRAM] unsigned char 
;;  postscaler      1    0        unsigned char 
;;  ps              1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
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
	
l3272:; BSR set to: 0

;timer.c: 130: uint8_t ps = ps_mode & 0b1111;
	movf	((c:timer2_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer2_init@ps)),c
	line	131
	
l3274:; BSR set to: 0

	line	134
;timer.c: 134: T2CON &= ~0b01111111;
	movlw	(080h)&0ffh
	andwf	((c:4042)),c	;volatile
	line	136
;timer.c: 136: T2CON |= (postscaler & 0b1111) << 3;
	movf	((c:4042)),c,w	;volatile
	line	137
;timer.c: 137: T2CON |= (ps & 0b11);
	movf	((c:timer2_init@ps)),c,w
	andlw	low(03h)
	iorwf	((c:4042)),c	;volatile
	line	139
	
l3276:; BSR set to: 0

;timer.c: 139: TMR2 = 0;
	clrf	((c:4044)),c	;volatile
	line	141
	
l3278:; BSR set to: 0

;timer.c: 141: T2CON |= 0b100;
	bsf	(0+(2/8)+(c:4042)),c,(2)&7	;volatile
	line	144
	
l3280:; BSR set to: 0

;timer.c: 144: PIR1 &= ~0b10;
	bcf	(0+(1/8)+(c:3998)),c,(1)&7	;volatile
	line	145
;timer.c: 145: PIE1 = (!!(ps_mode & 0x80)) << 1;
	
	btfsc	((c:timer2_init@ps_mode)),c,(7)&7
	goto	u2421
	goto	u2420
u2421:
	clrf	(??_timer2_init+0+0)&0ffh,c
	incf	(??_timer2_init+0+0)&0ffh,c
	goto	u2438
u2420:
	clrf	(??_timer2_init+0+0)&0ffh,c
u2438:
	bcf	status,0
	rlcf	(??_timer2_init+0+0),c,w
	movwf	((c:3997)),c	;volatile
	line	146
	
l197:
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
;;  ps_mode         1   14[COMRAM] unsigned char 
;;  prescaler       1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:        12       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:        12       0       0       0
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
	
l3222:; BSR set to: 0

;timer.c: 28: uint8_t prescaler = ps_mode & 0b1111;
	movf	((c:timer0_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer0_init@prescaler)),c
	line	30
	
l3224:; BSR set to: 0

;timer.c: 30: TMR0 = 0;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	33
	
l3226:; BSR set to: 0

;timer.c: 33: T0CON |= (!!(ps_mode & 0x20)) ? 0x20 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(5)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l3230
u2360:
	
l3228:; BSR set to: 0

	clrf	((c:_timer0_init$154)),c
	clrf	((c:_timer0_init$154+1)),c
	goto	l3232
	
l3230:; BSR set to: 0

	movlw	high(020h)
	movwf	((c:_timer0_init$154+1)),c
	movlw	low(020h)
	movwf	((c:_timer0_init$154)),c
	
l3232:; BSR set to: 0

	movf	((c:_timer0_init$154)),c,w
	iorwf	((c:4053)),c	;volatile
	line	36
	
l3234:; BSR set to: 0

;timer.c: 36: T0CON |= (!!(ps_mode & 0x10)) ? 0x10 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(4)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l3238
u2370:
	
l3236:; BSR set to: 0

	clrf	((c:_timer0_init$155)),c
	clrf	((c:_timer0_init$155+1)),c
	goto	l3240
	
l3238:; BSR set to: 0

	movlw	high(010h)
	movwf	((c:_timer0_init$155+1)),c
	movlw	low(010h)
	movwf	((c:_timer0_init$155)),c
	
l3240:; BSR set to: 0

	movf	((c:_timer0_init$155)),c,w
	iorwf	((c:4053)),c	;volatile
	line	39
	
l3242:; BSR set to: 0

;timer.c: 39: T0CON |= (!!(ps_mode & 0x40)) ? 0x40 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(6)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l3246
u2380:
	
l3244:; BSR set to: 0

	clrf	((c:_timer0_init$156)),c
	clrf	((c:_timer0_init$156+1)),c
	goto	l3248
	
l3246:; BSR set to: 0

	movlw	high(040h)
	movwf	((c:_timer0_init$156+1)),c
	movlw	low(040h)
	movwf	((c:_timer0_init$156)),c
	
l3248:; BSR set to: 0

	movf	((c:_timer0_init$156)),c,w
	iorwf	((c:4053)),c	;volatile
	line	43
	
l3250:; BSR set to: 0

;timer.c: 43: T0CON &= (!!prescaler) ? ~0x08 : ~0x00;
	movf	((c:timer0_init@prescaler)),c,w
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l3254
u2390:
	
l3252:; BSR set to: 0

	setf	((c:_timer0_init$157)),c
	setf	((c:_timer0_init$157+1)),c
	goto	l3256
	
l3254:; BSR set to: 0

	movlw	high(-9)
	movwf	((c:_timer0_init$157+1)),c
	movlw	low(-9)
	movwf	((c:_timer0_init$157)),c
	
l3256:; BSR set to: 0

	movf	((c:_timer0_init$157)),c,w
	andwf	((c:4053)),c	;volatile
	line	45
	
l3258:; BSR set to: 0

;timer.c: 45: T0CON &= ~0b111;
	movlw	(0F8h)&0ffh
	andwf	((c:4053)),c	;volatile
	line	47
;timer.c: 47: if(prescaler > 0) {
	movf	((c:timer0_init@prescaler)),c,w
	btfsc	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l3262
u2400:
	line	48
	
l3260:; BSR set to: 0

;timer.c: 48: T0CON |= (prescaler - 1) & 0b111;
	decf	((c:timer0_init@prescaler)),c,w
	andlw	low(07h)
	iorwf	((c:4053)),c	;volatile
	line	58
	
l3262:; BSR set to: 0

;timer.c: 54: }
;timer.c: 58: INTCON &= ~0x40;
	bcf	(0+(6/8)+(c:4082)),c,(6)&7	;volatile
	line	59
	
l3264:; BSR set to: 0

;timer.c: 59: INTCON |= (!!(ps_mode & 0x80)) ? 0x20 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(7)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l3268
u2410:
	
l3266:; BSR set to: 0

	clrf	((c:_timer0_init$158)),c
	clrf	((c:_timer0_init$158+1)),c
	goto	l3270
	
l3268:; BSR set to: 0

	movlw	high(020h)
	movwf	((c:_timer0_init$158+1)),c
	movlw	low(020h)
	movwf	((c:_timer0_init$158)),c
	
l3270:; BSR set to: 0

	movf	((c:_timer0_init$158)),c,w
	iorwf	((c:4082)),c	;volatile
	line	60
	
l183:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer0_init
	__end_of_timer0_init:
	signat	_timer0_init,4216
	global	_ser_init

;; *************** function _ser_init *****************
;; Defined at:
;;		line 98 in file "../../../lib/ser.c"
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
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"../../../lib/ser.c"
	line	98
global __ptext3
__ptext3:
psect	text3
	file	"../../../lib/ser.c"
	line	98
	global	__size_of_ser_init
	__size_of_ser_init	equ	__end_of_ser_init-_ser_init
	
_ser_init:; BSR set to: 0

;incstack = 0
	opt	stack 29
	line	99
	
l3198:
;ser.c: 99: TRISC &= ~0x40;
	bcf	(0+(6/8)+(c:3988)),c,(6)&7	;volatile
	line	101
;ser.c: 101: TRISC |= 0x80;
	bsf	(0+(7/8)+(c:3988)),c,(7)&7	;volatile
	line	103
	
l3200:
;ser.c: 103: BRGH = 1;
	bsf	c:(32098/8),(32098)&7	;volatile
	line	109
	
l3202:
;ser.c: 109: SPBRG = ser_brg;
	movlw	low(019h)
	movwf	((c:4015)),c	;volatile
	line	112
	
l3204:
;ser.c: 112: TX9 = 0;
	bcf	c:(32102/8),(32102)&7	;volatile
	line	113
	
l3206:
;ser.c: 113: RX9 = 0;
	bcf	c:(32094/8),(32094)&7	;volatile
	line	115
	
l3208:
;ser.c: 115: SYNC = 0;
	bcf	c:(32100/8),(32100)&7	;volatile
	line	116
	
l3210:
;ser.c: 116: SPEN = 1;
	bsf	c:(32095/8),(32095)&7	;volatile
	line	117
	
l3212:
;ser.c: 117: CREN = 1;
	bsf	c:(32092/8),(32092)&7	;volatile
	line	118
	
l3214:
;ser.c: 118: TXIE = 0;
	bcf	c:(31980/8),(31980)&7	;volatile
	line	120
	
l3216:
;ser.c: 120: TXEN = 1;
	bsf	c:(32101/8),(32101)&7	;volatile
	line	121
	
l3218:
;ser.c: 121: PEIE = 1;
	bsf	c:(32662/8),(32662)&7	;volatile
	line	123
	
l3220:
;ser.c: 123: rxiptr = rxoptr = txiptr = txoptr = 0;
	clrf	((c:_txoptr)),c	;volatile
	clrf	((c:_txiptr)),c	;volatile
	movlb	0	; () banked
	clrf	((_rxoptr))&0ffh	;volatile
	clrf	((_rxiptr))&0ffh	;volatile
	line	124
	
l137:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ser_init
	__end_of_ser_init:
	signat	_ser_init,88
	global	_print_indicator

;; *************** function _print_indicator *****************
;; Defined at:
;;		line 184 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  indicate        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  indicate        1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
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
psect	text4,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	184
global __ptext4
__ptext4:
psect	text4
	file	"../../../src/print.c"
	line	184
	global	__size_of_print_indicator
	__size_of_print_indicator	equ	__end_of_print_indicator-_print_indicator
	
_print_indicator:; BSR set to: 0

;incstack = 0
	opt	stack 25
;print_indicator@indicate stored from wreg
	movwf	((c:print_indicator@indicate)),c
	line	198
	
l4384:
;print.c: 198: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	199
	
l4386:
;print.c: 199: if(indicate) {
	movf	((c:print_indicator@indicate)),c,w
	btfsc	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l4390
u3710:
	line	200
	
l4388:
;print.c: 200: lcd_puts("-*-");
	movlw	(STR_11)&0ffh
	
	call	_lcd_puts
	line	201
;print.c: 201: } else {
	goto	l36
	line	202
	
l4390:
;print.c: 202: lcd_puts("   ");
	movlw	(STR_12)&0ffh
	
	call	_lcd_puts
	line	205
	
l36:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_print_indicator
	__end_of_print_indicator:
	signat	_print_indicator,4216
	global	_measure_inductance

;; *************** function _measure_inductance *****************
;; Defined at:
;;		line 197 in file "../../../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Lin             4   53[BANK0 ] unsigned char 
;;  denominator     4   18[BANK0 ] unsigned char 
;;  numerator       4   14[BANK0 ] unsigned char 
;;  var             2   51[BANK0 ] unsigned int 
;;  unit            1   38[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         0      43       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      43       0       0
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
psect	text5,class=CODE,space=0,reloc=2
	file	"../../../src/measure.c"
	line	197
global __ptext5
__ptext5:
psect	text5
	file	"../../../src/measure.c"
	line	197
	global	__size_of_measure_inductance
	__size_of_measure_inductance	equ	__end_of_measure_inductance-_measure_inductance
	
_measure_inductance:
;incstack = 0
	opt	stack 24
	line	204
	
l4570:; BSR set to: 0

;measure.c: 198: uint8_t unit;
;measure.c: 199: uint16_t var;
;measure.c: 201: double Lin, numerator, denominator;
;measure.c: 204: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	205
	
l4572:
;measure.c: 205: put_str("Inductivity ");
	movlw	(STR_37)&0ffh
	
	call	_put_str
	line	207
	
l4574:
;measure.c: 207: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_inductance@var)
	movff	1+?_measure_freq,(measure_inductance@var+1)
	line	209
	
l4576:
;measure.c: 209: F3 = (double)var;
	movff	(measure_inductance@var),(c:___lwtofl@c)
	movff	(measure_inductance@var+1),(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F3)
	movff	1+?___lwtofl,(_F3+1)
	movff	2+?___lwtofl,(_F3+2)
	movff	3+?___lwtofl,(_F3+3)
	
	line	210
	
l4578:
;measure.c: 210: if(F3 > F1)
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
	goto	u3811
	goto	u3810
u3811:
	goto	l4582
u3810:
	line	211
	
l4580:
;measure.c: 211: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	212
	
l4582:
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_F2),(c:___flsub@f2)
	movff	(_F2+1),(c:___flsub@f2+1)
	movff	(_F2+2),(c:___flsub@f2+2)
	movff	(_F2+3),(c:___flsub@f2+3)
	movff	(_F2),(c:___flsub@f1)
	movff	(_F2+1),(c:___flsub@f1+1)
	movff	(_F2+2),(c:___flsub@f1+2)
	movff	(_F2+3),(c:___flsub@f1+3)
	call	___flsub	;wreg free
	movff	0+?___flsub,(_measure_inductance$1125)
	movff	1+?___flsub,(_measure_inductance$1125+1)
	movff	2+?___flsub,(_measure_inductance$1125+2)
	movff	3+?___flsub,(_measure_inductance$1125+3)
	
	
l4584:
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1125),(c:___flsub@f2)
	movff	(_measure_inductance$1125+1),(c:___flsub@f2+1)
	movff	(_measure_inductance$1125+2),(c:___flsub@f2+2)
	movff	(_measure_inductance$1125+3),(c:___flsub@f2+3)
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
	movff	0+?___flsub,(_measure_inductance$1126)
	movff	1+?___flsub,(_measure_inductance$1126+1)
	movff	2+?___flsub,(_measure_inductance$1126+2)
	movff	3+?___flsub,(_measure_inductance$1126+3)
	
	
l4586:
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
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
	movff	0+?___flsub,(_measure_inductance$1127)
	movff	1+?___flsub,(_measure_inductance$1127+1)
	movff	2+?___flsub,(_measure_inductance$1127+2)
	movff	3+?___flsub,(_measure_inductance$1127+3)
	
	
l4588:
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1126),(c:___flmul@f2)
	movff	(_measure_inductance$1126+1),(c:___flmul@f2+1)
	movff	(_measure_inductance$1126+2),(c:___flmul@f2+2)
	movff	(_measure_inductance$1126+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1127),(c:___flmul@f1)
	movff	(_measure_inductance$1127+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1127+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1127+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1128)
	movff	1+?___flmul,(_measure_inductance$1128+1)
	movff	2+?___flmul,(_measure_inductance$1128+2)
	movff	3+?___flmul,(_measure_inductance$1128+3)
	
	
l4590:
;measure.c: 212: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1128),(c:___flmul@f1)
	movff	(_measure_inductance$1128+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1128+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1128+3),(c:___flmul@f1+3)
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
	
	line	213
	
l4592:
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F1),(c:___flmul@f2)
	movff	(_F1+1),(c:___flmul@f2+1)
	movff	(_F1+2),(c:___flmul@f2+2)
	movff	(_F1+3),(c:___flmul@f2+3)
	movff	(_F1),(c:___flmul@f1)
	movff	(_F1+1),(c:___flmul@f1+1)
	movff	(_F1+2),(c:___flmul@f1+2)
	movff	(_F1+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1129)
	movff	1+?___flmul,(_measure_inductance$1129+1)
	movff	2+?___flmul,(_measure_inductance$1129+2)
	movff	3+?___flmul,(_measure_inductance$1129+3)
	
	
l4594:
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1129),(c:___flmul@f1)
	movff	(_measure_inductance$1129+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1129+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1129+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1126)
	movff	1+?___flmul,(_measure_inductance$1126+1)
	movff	2+?___flmul,(_measure_inductance$1126+2)
	movff	3+?___flmul,(_measure_inductance$1126+3)
	
	
l4596:
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1126),(c:___flmul@f1)
	movff	(_measure_inductance$1126+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1126+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1126+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1127)
	movff	1+?___flmul,(_measure_inductance$1127+1)
	movff	2+?___flmul,(_measure_inductance$1127+2)
	movff	3+?___flmul,(_measure_inductance$1127+3)
	
	
l4598:
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1127),(c:___flmul@f1)
	movff	(_measure_inductance$1127+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1127+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1127+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1128)
	movff	1+?___flmul,(_measure_inductance$1128+1)
	movff	2+?___flmul,(_measure_inductance$1128+2)
	movff	3+?___flmul,(_measure_inductance$1128+3)
	
	
l4600:
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F3),(c:___flmul@f2)
	movff	(_F3+1),(c:___flmul@f2+1)
	movff	(_F3+2),(c:___flmul@f2+2)
	movff	(_F3+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1128),(c:___flmul@f1)
	movff	(_measure_inductance$1128+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1128+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1128+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1130)
	movff	1+?___flmul,(_measure_inductance$1130+1)
	movff	2+?___flmul,(_measure_inductance$1130+2)
	movff	3+?___flmul,(_measure_inductance$1130+3)
	
	
l4602:
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_CCal),(c:___flmul@f2)
	movff	(_CCal+1),(c:___flmul@f2+1)
	movff	(_CCal+2),(c:___flmul@f2+2)
	movff	(_CCal+3),(c:___flmul@f2+3)
	movff	(_measure_inductance$1130),(c:___flmul@f1)
	movff	(_measure_inductance$1130+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1130+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1130+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_inductance$1131)
	movff	1+?___flmul,(_measure_inductance$1131+1)
	movff	2+?___flmul,(_measure_inductance$1131+2)
	movff	3+?___flmul,(_measure_inductance$1131+3)
	
	
l4604:
;measure.c: 213: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_measure_inductance$1131),(c:___flmul@f1)
	movff	(_measure_inductance$1131+1),(c:___flmul@f1+1)
	movff	(_measure_inductance$1131+2),(c:___flmul@f1+2)
	movff	(_measure_inductance$1131+3),(c:___flmul@f1+3)
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
	
	line	214
	
l4606:
;measure.c: 214: Lin = (numerator / denominator) * 1e+15l;
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
	
	line	216
;measure.c: 216: if(Lin > 999) {
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
	goto	u3821
	goto	u3820
u3821:
	goto	l4624
u3820:
	line	217
	
l4608:
;measure.c: 217: if(Lin > (999e+03l)) {
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
	goto	u3831
	goto	u3830
u3831:
	goto	l4620
u3830:
	line	218
	
l4610:
;measure.c: 218: if(Lin > (999e+06l)) {
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
	goto	u3841
	goto	u3840
u3841:
	goto	l4616
u3840:
	line	219
	
l4612:
;measure.c: 219: Lin = Lin / (1e+09l);
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
	
	line	220
	
l4614:
;measure.c: 220: unit = 0;
	movlb	0	; () banked
	clrf	((measure_inductance@unit))&0ffh
	line	221
;measure.c: 221: } else {
	goto	l4626
	line	222
	
l4616:
;measure.c: 222: Lin = Lin / (1e+06l);
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
	
	line	223
	
l4618:
;measure.c: 223: unit = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l4626
	line	226
	
l4620:
;measure.c: 226: Lin = Lin / 1e+03l;
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
	
	line	227
	
l4622:
;measure.c: 227: unit = 2;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l4626
	line	230
	
l4624:
;measure.c: 230: unit = 3;
	movlw	low(03h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	line	232
	
l4626:; BSR set to: 0

;measure.c: 232: Lin = Lin * 100;
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
	
	line	233
	
l4628:
;measure.c: 233: var = (uint16_t)Lin;
	movff	(measure_inductance@Lin),(___fltol@f1)
	movff	(measure_inductance@Lin+1),(___fltol@f1+1)
	movff	(measure_inductance@Lin+2),(___fltol@f1+2)
	movff	(measure_inductance@Lin+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_inductance@var)
	movff	1+?___fltol,(measure_inductance@var+1)
	line	235
	
l4630:; BSR set to: 0

;measure.c: 235: print_reading(var);
	movff	(measure_inductance@var),(c:print_reading@measurement)
	movff	(measure_inductance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	236
	
l4632:
;measure.c: 236: print_unit(unit);
	movlb	0	; () banked
	movf	((measure_inductance@unit))&0ffh,w
	
	call	_print_unit
	line	237
	
l568:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_measure_inductance
	__end_of_measure_inductance:
	signat	_measure_inductance,88
	global	_measure_capacitance

;; *************** function _measure_capacitance *****************
;; Defined at:
;;		line 119 in file "../../../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Cin             4   15[BANK1 ] unsigned char 
;;  var             2   13[BANK1 ] unsigned int 
;;  unit            1   12[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         0       0      19       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0      19       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;;		___lwtofl
;;		_format_double
;;		_format_xint32
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
;;		_ser_putch
;;		_ser_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	119
global __ptext6
__ptext6:
psect	text6
	file	"../../../src/measure.c"
	line	119
	global	__size_of_measure_capacitance
	__size_of_measure_capacitance	equ	__end_of_measure_capacitance-_measure_capacitance
	
_measure_capacitance:
;incstack = 0
	opt	stack 23
	line	127
	
l4486:; BSR set to: 0

;measure.c: 120: uint8_t unit;
;measure.c: 121: uint16_t var;
;measure.c: 123: double Cin;
;measure.c: 127: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	128
	
l4488:
;measure.c: 128: put_str("Capacity ");
	movlw	(STR_28)&0ffh
	
	call	_put_str
	line	130
	
l4490:
;measure.c: 130: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_capacitance@var)
	movff	1+?_measure_freq,(measure_capacitance@var+1)
	line	132
	
l4492:
;measure.c: 132: F3 = (double)var;
	movff	(measure_capacitance@var),(c:___lwtofl@c)
	movff	(measure_capacitance@var+1),(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F3)
	movff	1+?___lwtofl,(_F3+1)
	movff	2+?___lwtofl,(_F3+2)
	movff	3+?___lwtofl,(_F3+3)
	
	line	135
	
l4494:
;measure.c: 135: ser_puts("var=");
	movlw	(STR_29)&0ffh
	
	call	_ser_puts
	line	136
	
l4496:
;measure.c: 136: format_xint32(var);
	movff	(measure_capacitance@var),(c:format_xint32@x)
	movff	(measure_capacitance@var+1),(c:format_xint32@x+1)
	clrf	((c:format_xint32@x+2)),c
	clrf	((c:format_xint32@x+3)),c

	call	_format_xint32	;wreg free
	line	137
	
l4498:
;measure.c: 137: ser_puts("\r\nF1=");
	movlw	(STR_30)&0ffh
	
	call	_ser_puts
	line	138
	
l4500:
;measure.c: 138: format_double(F1);
	movff	(_F1),(format_double@num)
	movff	(_F1+1),(format_double@num+1)
	movff	(_F1+2),(format_double@num+2)
	movff	(_F1+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	139
	
l4502:
;measure.c: 139: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	140
	
l4504:
;measure.c: 140: format_xint32(*(uint32_t*)&F1);
	movff	(_F1),(c:format_xint32@x)
	movff	(_F1+1),(c:format_xint32@x+1)
	movff	(_F1+2),(c:format_xint32@x+2)
	movff	(_F1+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	141
	
l4506:
;measure.c: 141: ser_puts("\r\nF2=");
	movlw	(STR_31)&0ffh
	
	call	_ser_puts
	line	142
	
l4508:
;measure.c: 142: format_double(F2);
	movff	(_F2),(format_double@num)
	movff	(_F2+1),(format_double@num+1)
	movff	(_F2+2),(format_double@num+2)
	movff	(_F2+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	143
	
l4510:
;measure.c: 143: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	144
	
l4512:
;measure.c: 144: format_xint32(*(uint32_t*)&F2);
	movff	(_F2),(c:format_xint32@x)
	movff	(_F2+1),(c:format_xint32@x+1)
	movff	(_F2+2),(c:format_xint32@x+2)
	movff	(_F2+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	145
	
l4514:
;measure.c: 145: ser_puts("\r\nF3=");
	movlw	(STR_32)&0ffh
	
	call	_ser_puts
	line	146
	
l4516:
;measure.c: 146: format_double(F3);
	movff	(_F3),(format_double@num)
	movff	(_F3+1),(format_double@num+1)
	movff	(_F3+2),(format_double@num+2)
	movff	(_F3+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	147
	
l4518:
;measure.c: 147: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	148
	
l4520:
;measure.c: 148: format_xint32(*(uint32_t*)&F3);
	movff	(_F3),(c:format_xint32@x)
	movff	(_F3+1),(c:format_xint32@x+1)
	movff	(_F3+2),(c:format_xint32@x+2)
	movff	(_F3+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	149
	
l4522:
;measure.c: 149: ser_puts("\r\nCCal=");
	movlw	(STR_33)&0ffh
	
	call	_ser_puts
	line	150
	
l4524:
;measure.c: 150: format_double(CCal);
	movff	(_CCal),(format_double@num)
	movff	(_CCal+1),(format_double@num+1)
	movff	(_CCal+2),(format_double@num+2)
	movff	(_CCal+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	151
	
l4526:
;measure.c: 151: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	152
	
l4528:
;measure.c: 152: format_xint32(*(uint32_t*)&CCal);
	movff	(_CCal),(c:format_xint32@x)
	movff	(_CCal+1),(c:format_xint32@x+1)
	movff	(_CCal+2),(c:format_xint32@x+2)
	movff	(_CCal+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	153
	
l4530:
;measure.c: 153: ser_puts("\r\n");
	movlw	(STR_34)&0ffh
	
	call	_ser_puts
	line	157
;measure.c: 157: if(F3 > F1)
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
	goto	u3771
	goto	u3770
u3771:
	goto	l4534
u3770:
	line	158
	
l4532:
;measure.c: 158: F3 = F1;
	movff	(_F1),(_F3)
	movff	(_F1+1),(_F3+1)
	movff	(_F1+2),(_F3+2)
	movff	(_F1+3),(_F3+3)
	line	160
	
l4534:
;measure.c: 160: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
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
	movff	0+?___flsub,(_measure_capacitance$1122)
	movff	1+?___flsub,(_measure_capacitance$1122+1)
	movff	2+?___flsub,(_measure_capacitance$1122+2)
	movff	3+?___flsub,(_measure_capacitance$1122+3)
	
;measure.c: 160: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_capacitance$1122),(c:___flmul@f1)
	movff	(_measure_capacitance$1122+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$1122+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$1122+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$1123)
	movff	1+?___flmul,(_measure_capacitance$1123+1)
	movff	2+?___flmul,(_measure_capacitance$1123+2)
	movff	3+?___flmul,(_measure_capacitance$1123+3)
	
;measure.c: 160: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___flmul@f2)
	movff	(_F2+1),(c:___flmul@f2+1)
	movff	(_F2+2),(c:___flmul@f2+2)
	movff	(_F2+3),(c:___flmul@f2+3)
	movff	(_measure_capacitance$1123),(c:___flmul@f1)
	movff	(_measure_capacitance$1123+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$1123+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$1123+3),(c:___flmul@f1+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_measure_capacitance$1124)
	movff	1+?___flmul,(_measure_capacitance$1124+1)
	movff	2+?___flmul,(_measure_capacitance$1124+2)
	movff	3+?___flmul,(_measure_capacitance$1124+3)
	
;measure.c: 160: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_measure_capacitance$1124),(c:___flmul@f1)
	movff	(_measure_capacitance$1124+1),(c:___flmul@f1+1)
	movff	(_measure_capacitance$1124+2),(c:___flmul@f1+2)
	movff	(_measure_capacitance$1124+3),(c:___flmul@f1+3)
	movff	(_CCal),(c:___flmul@f2)
	movff	(_CCal+1),(c:___flmul@f2+1)
	movff	(_CCal+2),(c:___flmul@f2+2)
	movff	(_CCal+3),(c:___flmul@f2+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(measure_capacitance@Cin)
	movff	1+?___flmul,(measure_capacitance@Cin+1)
	movff	2+?___flmul,(measure_capacitance@Cin+2)
	movff	3+?___flmul,(measure_capacitance@Cin+3)
	
	line	164
	
l4536:
;measure.c: 164: ser_puts("Cin=");
	movlw	(STR_35)&0ffh
	
	call	_ser_puts
	line	165
	
l4538:
;measure.c: 165: format_double(Cin);
	movff	(measure_capacitance@Cin),(format_double@num)
	movff	(measure_capacitance@Cin+1),(format_double@num+1)
	movff	(measure_capacitance@Cin+2),(format_double@num+2)
	movff	(measure_capacitance@Cin+3),(format_double@num+3)
	call	_format_double	;wreg free
	line	166
;measure.c: 166: ser_putch(' ');
	movlw	(020h)&0ffh
	
	call	_ser_putch
	line	167
;measure.c: 167: format_xint32(*(uint32_t*)&Cin);
	movff	(measure_capacitance@Cin),(c:format_xint32@x)
	movff	(measure_capacitance@Cin+1),(c:format_xint32@x+1)
	movff	(measure_capacitance@Cin+2),(c:format_xint32@x+2)
	movff	(measure_capacitance@Cin+3),(c:format_xint32@x+3)
	call	_format_xint32	;wreg free
	line	168
	
l4540:
;measure.c: 168: ser_puts("\r\n");
	movlw	(STR_36)&0ffh
	
	call	_ser_puts
	line	170
	
l4542:
;measure.c: 170: if(Cin > 999) {
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
	goto	u3781
	goto	u3780
u3781:
	goto	l4560
u3780:
	line	171
	
l4544:
;measure.c: 171: if(Cin > (999e+03l)) {
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
	goto	u3791
	goto	u3790
u3791:
	goto	l4556
u3790:
	line	172
	
l4546:
;measure.c: 172: if(Cin > (999e+06l)) {
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
	goto	u3801
	goto	u3800
u3801:
	goto	l4552
u3800:
	line	173
	
l4548:
;measure.c: 173: Cin = Cin / (1e+09);
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
	
	line	174
	
l4550:
;measure.c: 174: unit = 4;
	movlw	low(04h)
	movlb	1	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	175
;measure.c: 175: } else {
	goto	l4562
	line	176
	
l4552:
;measure.c: 176: Cin = Cin / (1e+06);
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
	
	line	177
	
l4554:
;measure.c: 177: unit = 5;
	movlw	low(05h)
	movlb	1	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l4562
	line	180
	
l4556:
;measure.c: 180: Cin = Cin / 1e+03;
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
	
	line	181
	
l4558:
;measure.c: 181: unit = 6;
	movlw	low(06h)
	movlb	1	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	goto	l4562
	line	184
	
l4560:
;measure.c: 184: unit = 7;
	movlw	low(07h)
	movlb	1	; () banked
	movwf	((measure_capacitance@unit))&0ffh
	line	186
	
l4562:; BSR set to: 1

;measure.c: 186: Cin = Cin * 100;
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
	
	line	187
	
l4564:
;measure.c: 187: var = (uint16_t)Cin;
	movff	(measure_capacitance@Cin),(___fltol@f1)
	movff	(measure_capacitance@Cin+1),(___fltol@f1+1)
	movff	(measure_capacitance@Cin+2),(___fltol@f1+2)
	movff	(measure_capacitance@Cin+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(measure_capacitance@var)
	movff	1+?___fltol,(measure_capacitance@var+1)
	line	189
	
l4566:; BSR set to: 0

;measure.c: 189: print_reading(var);
	movff	(measure_capacitance@var),(c:print_reading@measurement)
	movff	(measure_capacitance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	190
	
l4568:
;measure.c: 190: print_unit(unit);
	movlb	1	; () banked
	movf	((measure_capacitance@unit))&0ffh,w
	
	call	_print_unit
	line	191
	
l558:
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
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : E/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_gotoxy
;;		_ser_puts
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	123
global __ptext7
__ptext7:
psect	text7
	file	"../../../src/print.c"
	line	123
	global	__size_of_print_unit
	__size_of_print_unit	equ	__end_of_print_unit-_print_unit
	
_print_unit:
;incstack = 0
	opt	stack 24
	line	132
	
l4282:
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
	movlb	1	; () banked
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
	line	139
	
l4284:
;print.c: 139: ser_puts("\r\n");
	movlw	(STR_9)&0ffh
	
	call	_ser_puts
	line	141
	
l28:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_print_unit
	__end_of_print_unit:
	signat	_print_unit,4216
	global	_print_reading

;; *************** function _print_reading *****************
;; Defined at:
;;		line 144 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  measurement     2   53[COMRAM] unsigned int 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         2       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         6       0       0       0
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
psect	text8,class=CODE,space=0,reloc=2
	line	144
global __ptext8
__ptext8:
psect	text8
	file	"../../../src/print.c"
	line	144
	global	__size_of_print_reading
	__size_of_print_reading	equ	__end_of_print_reading-_print_reading
	
_print_reading:
;incstack = 0
	opt	stack 24
	line	171
	
l4286:; BSR set to: 0

;print.c: 171: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	172
	
l4288:
;print.c: 172: lcd_puts("     ");
	movlw	(STR_10)&0ffh
	
	call	_lcd_puts
	line	173
	
l4290:
;print.c: 173: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	175
	
l4292:
;print.c: 175: format_number(measurement / 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwdiv@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:_print_reading$1116)
	movff	1+?___lwdiv,(c:_print_reading$1116+1)
	
l4294:
;print.c: 175: format_number(measurement / 100, 10, 0);
	movff	(c:_print_reading$1116),(c:format_number@n)
	movff	(c:_print_reading$1116+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	177
	
l4296:
;print.c: 177: format_number(measurement % 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwmod@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwmod@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:_print_reading$1117)
	movff	1+?___lwmod,(c:_print_reading$1117+1)
	
l4298:
;print.c: 177: format_number(measurement % 100, 10, 0);
	movff	(c:_print_reading$1117),(c:format_number@n)
	movff	(c:_print_reading$1117+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	180
	
l31:
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
;;		 -> STR_21(5), STR_20(6), STR_19(7), STR_18(7), 
;;		 -> STR_14(10), STR_12(4), STR_11(4), STR_10(6), 
;; Auto vars:     Size  Location     Type
;;  string          1    8[COMRAM] PTR const unsigned char 
;;		 -> STR_21(5), STR_20(6), STR_19(7), STR_18(7), 
;;		 -> STR_14(10), STR_12(4), STR_11(4), STR_10(6), 
;;  i               1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
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
psect	text9,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	163
global __ptext9
__ptext9:
psect	text9
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
	
l4148:
;lcd44780.c: 164: uint8_t i;
;lcd44780.c: 165: for(i = 0; string[i]; i++) lcd_send((string[i]), 1);
	clrf	((c:lcd_puts@i)),c
	goto	l4154
	
l4150:
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
	
l4152:
	incf	((c:lcd_puts@i)),c
	
l4154:
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
	goto	u3531
	goto	u3530
u3531:
	goto	l4150
u3530:
	line	166
	
l277:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4216
	global	_format_xint32

;; *************** function _format_xint32 *****************
;; Defined at:
;;		line 51 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  x               4   53[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_buffer_putch
;;		_format_number
;; This function is called by:
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"../../../lib/format.c"
	line	51
global __ptext10
__ptext10:
psect	text10
	file	"../../../lib/format.c"
	line	51
	global	__size_of_format_xint32
	__size_of_format_xint32	equ	__end_of_format_xint32-_format_xint32
	
_format_xint32:
;incstack = 0
	opt	stack 26
	line	52
	
l4308:
;format.c: 52: buffer_putch('0');
	movlw	(030h)&0ffh
	
	call	_buffer_putch
	line	53
;format.c: 53: buffer_putch('x');
	movlw	(078h)&0ffh
	
	call	_buffer_putch
	line	54
;format.c: 54: format_number((uint16_t)(x >> 16), 16, -4);
	movff	0+((c:format_xint32@x)+02h),(c:format_number@n)
	movff	1+((c:format_xint32@x)+02h),(c:format_number@n+1)
	movlw	low(010h)
	movwf	((c:format_number@base)),c
	movlw	low(-4)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	55
;format.c: 55: format_number((uint16_t)(x & 0xffff), 16, -4);
	movff	(c:format_xint32@x),(c:format_number@n)
	movff	(c:format_xint32@x+1),(c:format_number@n+1)
	movlw	low(010h)
	movwf	((c:format_number@base)),c
	movlw	low(-4)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	56
	
l226:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_format_xint32
	__end_of_format_xint32:
	signat	_format_xint32,4216
	global	_format_double

;; *************** function _format_double *****************
;; Defined at:
;;		line 77 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  num             4   61[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  weight          4   73[BANK0 ] unsigned long 
;;  m               2   79[BANK0 ] short 
;;  digit           2   77[BANK0 ] short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       4       0       0
;;      Locals:         0      16       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      20       0       0
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
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
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
	opt	stack 23
	line	78
	
l4310:
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
	goto	l4330
	line	83
	
l4312:
;format.c: 83: double weight = pow(10.0l, m);
	movff	(format_double@m),(c:___awtofl@c)
	movff	(format_double@m+1),(c:___awtofl@c+1)
	call	___awtofl	;wreg free
	movff	0+?___awtofl,(_format_double$1120)
	movff	1+?___awtofl,(_format_double$1120+1)
	movff	2+?___awtofl,(_format_double$1120+2)
	movff	3+?___awtofl,(_format_double$1120+3)
	
	
l4314:
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
	movff	(_format_double$1120),(pow@y)
	movff	(_format_double$1120+1),(pow@y+1)
	movff	(_format_double$1120+2),(pow@y+2)
	movff	(_format_double$1120+3),(pow@y+3)
	call	_pow	;wreg free
	movff	0+?_pow,(format_double@weight)
	movff	1+?_pow,(format_double@weight+1)
	movff	2+?_pow,(format_double@weight+2)
	movff	3+?_pow,(format_double@weight+3)
	
	line	84
	
l4316:; BSR set to: 0

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
	movff	0+?_floor,(_format_double$1121)
	movff	1+?_floor,(_format_double$1121+1)
	movff	2+?_floor,(_format_double$1121+2)
	movff	3+?_floor,(_format_double$1121+3)
	
	
l4318:
;format.c: 84: digit = (short)floor(num / weight);
	movff	(_format_double$1121),(___fltol@f1)
	movff	(_format_double$1121+1),(___fltol@f1+1)
	movff	(_format_double$1121+2),(___fltol@f1+2)
	movff	(_format_double$1121+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(format_double@digit)
	movff	1+?___fltol,(format_double@digit+1)
	line	85
	
l4320:; BSR set to: 0

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
	
l4322:
;format.c: 86: buffer_putch((char)('0' + digit));
	movlb	0	; () banked
	movf	((format_double@digit))&0ffh,w
	addlw	low(030h)
	
	call	_buffer_putch
	line	87
	
l4324:; BSR set to: 1

;format.c: 87: if(m == 0)
	movlb	0	; () banked
	movf	((format_double@m))&0ffh,w
iorwf	((format_double@m+1))&0ffh,w
	btfss	status,2
	goto	u3691
	goto	u3690

u3691:
	goto	l4328
u3690:
	line	88
	
l4326:; BSR set to: 0

;format.c: 88: buffer_putch('.');
	movlw	(02Eh)&0ffh
	
	call	_buffer_putch
	line	89
	
l4328:
;format.c: 89: m--;
	movlb	0	; () banked
	decf	((format_double@m))&0ffh
	btfss	status,0
	decf	((format_double@m+1))&0ffh
	line	82
	
l4330:; BSR set to: 0

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
	goto	u3701
	goto	u3700
u3701:
	goto	l4312
u3700:
	line	91
	
l240:
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
;;  x               4   40[BANK0 ] short 
;;  y               4   44[BANK0 ] short 
;; Auto vars:     Size  Location     Type
;;  yi              4   57[BANK0 ] unsigned long 
;;  sign            1   56[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   40[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       8       0       0
;;      Locals:         0      13       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      21       0       0
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
	opt	stack 23
	line	7
	
l4238:; BSR set to: 0

	clrf	((pow@sign))&0ffh
	line	10
	
l4240:; BSR set to: 0

	movf	((pow@x))&0ffh,w
iorwf	((pow@x+1))&0ffh,w
iorwf	((pow@x+2))&0ffh,w
iorwf	((pow@x+3))&0ffh,w
	btfss	status,2
	goto	u3621
	goto	u3620

u3621:
	goto	l4244
u3620:
	line	11
	
l4242:; BSR set to: 0

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
	
l1156:
	line	14
	movlb	0	; () banked
	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l1157
	line	16
	
l4244:; BSR set to: 0

	movf	((pow@y))&0ffh,w
iorwf	((pow@y+1))&0ffh,w
iorwf	((pow@y+2))&0ffh,w
iorwf	((pow@y+3))&0ffh,w
	btfss	status,2
	goto	u3631
	goto	u3630

u3631:
	goto	l4250
u3630:
	line	17
	
l4246:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((?_pow))&0ffh
	movlw	high(1.0000000000000000)
	movwf	((?_pow+1))&0ffh
	movlw	low highword(1.0000000000000000)
	movwf	((?_pow+2))&0ffh
	movlw	high highword(1.0000000000000000)
	movwf	((?_pow+3))&0ffh
	goto	l1157
	line	18
	
l4250:; BSR set to: 0

	btfsc	((pow@x+3))&0ffh,7
	goto	u3640
	goto	u3641

u3641:
	goto	l4260
u3640:
	line	19
	
l4252:; BSR set to: 0

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
	bnz	u3650
movf	((pow@y+1))&0ffh,w
xorwf	(1+?___lltofl),c,w
	bnz	u3650
movf	((pow@y+2))&0ffh,w
xorwf	(2+?___lltofl),c,w
	bnz	u3650
movf	((pow@y+3))&0ffh,w
xorwf	(3+?___lltofl),c,w
	btfsc	status,2
	goto	u3651
	goto	u3650

u3651:
	goto	l4256
u3650:
	line	22
	
l4254:; BSR set to: 0

	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh
	clrf	((?_pow+3))&0ffh

	goto	l1157
	line	24
	
l4256:; BSR set to: 0

	movf	((pow@yi))&0ffh,w
	andlw	low(01h)
	movwf	((pow@sign))&0ffh
	line	25
	
l4258:; BSR set to: 0

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
	
l4260:; BSR set to: 0

	movff	(pow@x),(c:log@x)
	movff	(pow@x+1),(c:log@x+1)
	movff	(pow@x+2),(c:log@x+2)
	movff	(pow@x+3),(c:log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(_pow$1133)
	movff	1+?_log,(_pow$1133+1)
	movff	2+?_log,(_pow$1133+2)
	movff	3+?_log,(_pow$1133+3)
	
	
l4262:
	movff	(_pow$1133),(c:___flmul@f1)
	movff	(_pow$1133+1),(c:___flmul@f1+1)
	movff	(_pow$1133+2),(c:___flmul@f1+2)
	movff	(_pow$1133+3),(c:___flmul@f1+3)
	movff	(pow@y),(c:___flmul@f2)
	movff	(pow@y+1),(c:___flmul@f2+1)
	movff	(pow@y+2),(c:___flmul@f2+2)
	movff	(pow@y+3),(c:___flmul@f2+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(_pow$1134)
	movff	1+?___flmul,(_pow$1134+1)
	movff	2+?___flmul,(_pow$1134+2)
	movff	3+?___flmul,(_pow$1134+3)
	
	
l4264:
	movff	(_pow$1134),(exp@x)
	movff	(_pow$1134+1),(exp@x+1)
	movff	(_pow$1134+2),(exp@x+2)
	movff	(_pow$1134+3),(exp@x+3)
	call	_exp	;wreg free
	movff	0+?_exp,(pow@x)
	movff	1+?_exp,(pow@x+1)
	movff	2+?_exp,(pow@x+2)
	movff	3+?_exp,(pow@x+3)
	
	line	28
	
l4266:
	movlb	0	; () banked
	movf	((pow@sign))&0ffh,w
	btfsc	status,2
	goto	u3661
	goto	u3660
u3661:
	goto	l1161
u3660:
	line	29
	
l4268:; BSR set to: 0

	movff	(pow@x),(c:___flneg@f1)
	movff	(pow@x+1),(c:___flneg@f1+1)
	movff	(pow@x+2),(c:___flneg@f1+2)
	movff	(pow@x+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(?_pow)
	movff	1+?___flneg,(?_pow+1)
	movff	2+?___flneg,(?_pow+2)
	movff	3+?___flneg,(?_pow+3)
	
	goto	l1157
	
l1161:; BSR set to: 0

	line	30
	movff	(pow@x),(?_pow)
	movff	(pow@x+1),(?_pow+1)
	movff	(pow@x+2),(?_pow+2)
	movff	(pow@x+3),(?_pow+3)
	line	31
	
l1157:; BSR set to: 0

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
;;  x               4   29[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   37[BANK0 ] int 
;;  sign            1   39[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   29[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       4       0       0
;;      Locals:         0       7       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      11       0       0
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
	opt	stack 23
	line	31
	
l4098:
	movlb	0	; () banked
	movf	((exp@x))&0ffh,w
iorwf	((exp@x+1))&0ffh,w
iorwf	((exp@x+2))&0ffh,w
iorwf	((exp@x+3))&0ffh,w
	btfss	status,2
	goto	u3441
	goto	u3440

u3441:
	goto	l4104
u3440:
	line	32
	
l4100:; BSR set to: 0

	movlw	low(1.0000000000000000)
	movwf	((?_exp))&0ffh
	movlw	high(1.0000000000000000)
	movwf	((?_exp+1))&0ffh
	movlw	low highword(1.0000000000000000)
	movwf	((?_exp+2))&0ffh
	movlw	high highword(1.0000000000000000)
	movwf	((?_exp+3))&0ffh
	goto	l1183
	line	34
	
l4104:; BSR set to: 0

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
	goto	u3451
	goto	u3450
u3451:
	goto	l4110
u3450:
	line	36
	
l4106:
	movlw	low(3.4028234699999998e+038)
	movlb	0	; () banked
	movwf	((?_exp))&0ffh
	movlw	high(3.4028234699999998e+038)
	movwf	((?_exp+1))&0ffh
	movlw	low highword(3.4028234699999998e+038)
	movwf	((?_exp+2))&0ffh
	movlw	high highword(3.4028234699999998e+038)
	movwf	((?_exp+3))&0ffh
	goto	l1183
	line	38
	
l4110:
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
	goto	u3461
	goto	u3460
u3461:
	goto	l4114
u3460:
	line	40
	
l4112:
	movlb	0	; () banked
	clrf	((?_exp))&0ffh
	clrf	((?_exp+1))&0ffh
	clrf	((?_exp+2))&0ffh
	clrf	((?_exp+3))&0ffh

	goto	l1183
	line	43
	
l4114:
	movlb	0	; () banked
	btfsc	((exp@x+3))&0ffh,7
	goto	u3471
	goto	u3470

u3471:
	movlw	1
	goto	u3480
u3470:
	movlw	0
u3480:
	movwf	((exp@sign))&0ffh
	line	44
	
l4116:; BSR set to: 0

	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3491
	goto	u3490
u3491:
	goto	l4120
u3490:
	line	45
	
l4118:; BSR set to: 0

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
	
l4120:; BSR set to: 0

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
	
l4122:
	movff	(exp@x),(floor@x)
	movff	(exp@x+1),(floor@x+1)
	movff	(exp@x+2),(floor@x+2)
	movff	(exp@x+3),(floor@x+3)
	call	_floor	;wreg free
	movff	0+?_floor,(_exp$1135)
	movff	1+?_floor,(_exp$1135+1)
	movff	2+?_floor,(_exp$1135+2)
	movff	3+?_floor,(_exp$1135+3)
	
	
l4124:
	movff	(_exp$1135),(___fltol@f1)
	movff	(_exp$1135+1),(___fltol@f1+1)
	movff	(_exp$1135+2),(___fltol@f1+2)
	movff	(_exp$1135+3),(___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(exp@exponent)
	movff	1+?___fltol,(exp@exponent+1)
	line	48
	
l4126:; BSR set to: 0

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
	
l4128:
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
	
l4130:
	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l1187
u3500:
	line	52
	
l4132:; BSR set to: 0

		incf	((exp@x))&0ffh,w
	bnz	u3511
	incf	((exp@x+1))&0ffh,w
	bnz	u3511
	movlw	127
	xorwf	((exp@x+2))&0ffh,w
	bnz	u3511
	movlw	127
	xorwf	((exp@x+3))&0ffh,w
	btfss	status,2
	goto	u3511
	goto	u3510

u3511:
	goto	l4136
u3510:
	line	53
	
l4134:; BSR set to: 0

	clrf	((?_exp))&0ffh
	clrf	((?_exp+1))&0ffh
	clrf	((?_exp+2))&0ffh
	clrf	((?_exp+3))&0ffh

	goto	l1183
	line	54
	
l4136:; BSR set to: 0

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
	
	goto	l1183
	line	55
	
l1187:; BSR set to: 0

	line	56
	movff	(exp@x),(?_exp)
	movff	(exp@x+1),(?_exp+1)
	movff	(exp@x+2),(?_exp+2)
	movff	(exp@x+3),(?_exp+3)
	line	57
	
l1183:
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
;;  value           4   79[COMRAM] unsigned char 
;;  newexp          2   83[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   79[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         6       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         8       0       0       0
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
	opt	stack 25
	line	279
	
l3982:
	movf	((c:ldexp@value)),c,w
iorwf	((c:ldexp@value+1)),c,w
iorwf	((c:ldexp@value+2)),c,w
iorwf	((c:ldexp@value+3)),c,w
	btfss	status,2
	goto	u3281
	goto	u3280

u3281:
	goto	l3986
u3280:
	line	280
	
l3984:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c
	clrf	((c:?_ldexp+3)),c

	goto	l925
	line	282
	
l3986:
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
	goto	u3291
	goto	u3290
u3291:
	movlw	1
	goto	u3296
u3290:
	movlw	0
u3296:
	addwf	((c:ldexp@newexp)),c
	movlw	0
	addwfc	((c:ldexp@newexp+1)),c
	line	287
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u3300
	goto	u3301

u3301:
	goto	l3992
u3300:
	line	289
	
l3988:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c
	clrf	((c:?_ldexp+3)),c

	goto	l925
	line	291
	
l3992:
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u3311
	decf	((c:ldexp@newexp+1)),c,w
	btfss	status,0
	goto	u3311
	goto	u3310

u3311:
	goto	l4006
u3310:
	line	293
	
l3994:
	btfsc	((c:ldexp@value+3)),c,7
	goto	u3320
	goto	u3321

u3321:
	goto	l4002
u3320:
	line	294
	
l3996:
	movlw	low(-3.4028234699999998e+038)
	movwf	((c:?_ldexp)),c
	movlw	high(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+2)),c
	movlw	high highword(-3.4028234699999998e+038)
	movwf	((c:?_ldexp+3)),c
	goto	l925
	line	296
	
l4002:
	movlw	low(3.4028234699999998e+038)
	movwf	((c:?_ldexp)),c
	movlw	high(3.4028234699999998e+038)
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(3.4028234699999998e+038)
	movwf	((c:?_ldexp+2)),c
	movlw	high highword(3.4028234699999998e+038)
	movwf	((c:?_ldexp+3)),c
	goto	l925
	line	300
	
l4006:
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
	
l4008:
	movff	(c:ldexp@value),(c:?_ldexp)
	movff	(c:ldexp@value+1),(c:?_ldexp+1)
	movff	(c:ldexp@value+2),(c:?_ldexp+2)
	movff	(c:ldexp@value+3),(c:?_ldexp+3)
	line	307
	
l925:
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
;;  x               4   19[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  i               4   23[BANK0 ] int 
;;  expon           2   27[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  4   19[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       4       0       0
;;      Locals:         0       6       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0      10       0       0
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
	opt	stack 23
	line	18
	
l3900:
	movff	(floor@x),(c:frexp@value)
	movff	(floor@x+1),(c:frexp@value+1)
	movff	(floor@x+2),(c:frexp@value+2)
	movff	(floor@x+3),(c:frexp@value+3)
		movlw	low(floor@expon)
	movwf	((c:frexp@eptr)),c

	call	_frexp	;wreg free
	line	19
	
l3902:
	movlb	0	; () banked
	btfsc	((floor@expon+1))&0ffh,7
	goto	u3180
	goto	u3181

u3181:
	goto	l3910
u3180:
	line	20
	
l3904:; BSR set to: 0

	btfsc	((floor@x+3))&0ffh,7
	goto	u3190
	goto	u3191

u3191:
	goto	l892
u3190:
	line	21
	
l3906:; BSR set to: 0

	movlw	low(-1.0000000000000000)
	movwf	((?_floor))&0ffh
	movlw	high(-1.0000000000000000)
	movwf	((?_floor+1))&0ffh
	movlw	low highword(-1.0000000000000000)
	movwf	((?_floor+2))&0ffh
	movlw	high highword(-1.0000000000000000)
	movwf	((?_floor+3))&0ffh
	goto	l893
	
l892:; BSR set to: 0

	line	22
	clrf	((?_floor))&0ffh
	clrf	((?_floor+1))&0ffh
	clrf	((?_floor+2))&0ffh
	clrf	((?_floor+3))&0ffh

	goto	l893
	line	24
	
l3910:; BSR set to: 0

		movf	((floor@expon+1))&0ffh,w
	bnz	u3200
	movlw	29
	subwf	 ((floor@expon))&0ffh,w
	btfss	status,0
	goto	u3201
	goto	u3200

u3201:
	goto	l3914
u3200:
	line	25
	
l3912:; BSR set to: 0

	movff	(floor@x),(?_floor)
	movff	(floor@x+1),(?_floor+1)
	movff	(floor@x+2),(?_floor+2)
	movff	(floor@x+3),(?_floor+3)
	goto	l893
	line	26
	
l3914:; BSR set to: 0

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
	goto	u3211
	goto	u3210
u3211:
	goto	l895
u3210:
	line	28
	
l3916:
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
	
	goto	l893
	
l895:
	line	29
	movff	(floor@i),(?_floor)
	movff	(floor@i+1),(?_floor+1)
	movff	(floor@i+2),(?_floor+2)
	movff	(floor@i+3),(?_floor+3)
	line	30
	
l893:
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
;;  f1              4    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  exp1            1   13[BANK0 ] unsigned char 
;;  sign1           1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       4       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0      10       0       0
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
	
l3840:
	movlb	0	; () banked
	rlcf	((___fltol@f1+2))&0ffh,w
	rlcf	((___fltol@f1+3))&0ffh,w
	movwf	((___fltol@exp1))&0ffh
	movf	((___fltol@exp1))&0ffh,w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l3844
u3090:
	line	48
	
l3842:; BSR set to: 0

	clrf	((?___fltol))&0ffh
	clrf	((?___fltol+1))&0ffh
	clrf	((?___fltol+2))&0ffh
	clrf	((?___fltol+3))&0ffh

	goto	l905
	line	49
	
l3844:; BSR set to: 0

	movff	(___fltol@f1),??___fltol+0+0
	movff	(___fltol@f1+1),??___fltol+0+0+1
	movff	(___fltol@f1+2),??___fltol+0+0+2
	movff	(___fltol@f1+3),??___fltol+0+0+3
	movlw	01Fh+1
	goto	u3100
u3105:
	bcf	status,0
	rrcf	(??___fltol+0+3)&0ffh
	rrcf	(??___fltol+0+2)&0ffh
	rrcf	(??___fltol+0+1)&0ffh
	rrcf	(??___fltol+0+0)&0ffh
u3100:
	decfsz	wreg
	goto	u3105
	movf	(??___fltol+0+0)&0ffh,w
	movwf	((___fltol@sign1))&0ffh
	line	50
	
l3846:; BSR set to: 0

	bsf	(0+(23/8)+(___fltol@f1))&0ffh,(23)&7
	line	51
	
l3848:; BSR set to: 0

	movlw	0FFh
	andwf	((___fltol@f1))&0ffh
	movlw	0FFh
	andwf	((___fltol@f1+1))&0ffh
	movlw	0FFh
	andwf	((___fltol@f1+2))&0ffh
	movlw	0
	andwf	((___fltol@f1+3))&0ffh
	line	52
	
l3850:; BSR set to: 0

	movlw	(096h)&0ffh
	subwf	((___fltol@exp1))&0ffh
	line	53
	
l3852:; BSR set to: 0

	btfsc	((___fltol@exp1))&0ffh,7
	goto	u3110
	goto	u3111

u3111:
	goto	l3862
u3110:
	line	54
	
l3854:; BSR set to: 0

		movf	((___fltol@exp1))&0ffh,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u3121
	goto	u3120

u3121:
	goto	l3858
u3120:
	goto	l3842
	line	57
	
l3858:; BSR set to: 0

	bcf	status,0
	rrcf	((___fltol@f1+3))&0ffh
	rrcf	((___fltol@f1+2))&0ffh
	rrcf	((___fltol@f1+1))&0ffh
	rrcf	((___fltol@f1))&0ffh
	line	58
	
l3860:; BSR set to: 0

	incfsz	((___fltol@exp1))&0ffh
	
	goto	l3858
	goto	l3870
	line	60
	
l3862:; BSR set to: 0

		movlw	020h-1
	cpfsgt	((___fltol@exp1))&0ffh
	goto	u3131
	goto	u3130

u3131:
	goto	l3868
u3130:
	goto	l3842
	line	63
	
l3866:; BSR set to: 0

	bcf	status,0
	rlcf	((___fltol@f1))&0ffh
	rlcf	((___fltol@f1+1))&0ffh
	rlcf	((___fltol@f1+2))&0ffh
	rlcf	((___fltol@f1+3))&0ffh
	line	64
	decf	((___fltol@exp1))&0ffh
	line	62
	
l3868:; BSR set to: 0

	movf	((___fltol@exp1))&0ffh,w
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l3866
u3140:
	line	67
	
l3870:; BSR set to: 0

	movf	((___fltol@sign1))&0ffh,w
	btfsc	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l3874
u3150:
	line	68
	
l3872:; BSR set to: 0

	comf	((___fltol@f1+3))&0ffh
	comf	((___fltol@f1+2))&0ffh
	comf	((___fltol@f1+1))&0ffh
	negf	((___fltol@f1))&0ffh
	movlw	0
	addwfc	((___fltol@f1+1))&0ffh
	addwfc	((___fltol@f1+2))&0ffh
	addwfc	((___fltol@f1+3))&0ffh
	line	69
	
l3874:; BSR set to: 0

	movff	(___fltol@f1),(?___fltol)
	movff	(___fltol@f1+1),(?___fltol+1)
	movff	(___fltol@f1+2),(?___fltol+2)
	movff	(___fltol@f1+3),(?___fltol+3)
	line	70
	
l905:; BSR set to: 0

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
;;  ff1             4    3[COMRAM] long 
;;  ff2             4    7[COMRAM] long 
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         8       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         8       0       0       0
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
	
l3806:
	
	btfss	((c:___flge@ff1+3)),c,(31)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l3810
u3040:
	line	7
	
l3808:
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
	
l3810:
	
	btfss	((c:___flge@ff2+3)),c,(31)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l854
u3050:
	line	9
	
l3812:
	negf	((c:___flge@ff2)),c
	comf	((c:___flge@ff2+1)),c
	btfsc	status,0
	incf	((c:___flge@ff2+1)),c
	comf	((c:___flge@ff2+2)),c
	btfsc	status,0
	incf	((c:___flge@ff2+2)),c
	movlw	high highword(-2147483648)
	subfwb	((c:___flge@ff2+3)),c
	
l854:
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
	goto	u3061
	goto	u3060

u3061:
	goto	l3816
u3060:
	
l3814:
	bcf	status,0
	goto	l855
	
l3816:
	bsf	status,0
	line	13
	
l855:
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
;;  c               4   14[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   14[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       4       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       5       0       0
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
	opt	stack 23
	line	40
	
l3688:; BSR set to: 0

	clrf	((___altofl@sign))&0ffh
	line	41
	
l3690:; BSR set to: 0

	btfsc	((___altofl@c+3))&0ffh,7
	goto	u2810
	goto	u2811

u2811:
	goto	l3696
u2810:
	line	42
	
l3692:; BSR set to: 0

	comf	((___altofl@c+3))&0ffh
	comf	((___altofl@c+2))&0ffh
	comf	((___altofl@c+1))&0ffh
	negf	((___altofl@c))&0ffh
	movlw	0
	addwfc	((___altofl@c+1))&0ffh
	addwfc	((___altofl@c+2))&0ffh
	addwfc	((___altofl@c+3))&0ffh
	line	43
	
l3694:; BSR set to: 0

	movlw	low(01h)
	movwf	((___altofl@sign))&0ffh
	line	45
	
l3696:; BSR set to: 0

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
	
l658:
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
;;  f1              4   67[COMRAM] unsigned char 
;;  f2              4   71[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   67[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         8       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         8       0       0       0
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
	
l3956:
	movf	((c:___flsub@f2)),c,w
iorwf	((c:___flsub@f2+1)),c,w
iorwf	((c:___flsub@f2+2)),c,w
iorwf	((c:___flsub@f2+3)),c,w
	btfsc	status,2
	goto	u3251
	goto	u3250

u3251:
	goto	l3960
u3250:
	line	24
	
l3958:
	movlw	0
	xorwf	((c:___flsub@f2)),c
	movlw	0
	xorwf	((c:___flsub@f2+1)),c
	movlw	0
	xorwf	((c:___flsub@f2+2)),c
	movlw	080h
	xorwf	((c:___flsub@f2+3)),c
	line	30
	
l3960:
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
	
l901:
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
;;  f1              4    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
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
	opt	stack 25
	line	17
	
l3974:; BSR set to: 0

	movf	((c:___flneg@f1)),c,w
iorwf	((c:___flneg@f1+1)),c,w
iorwf	((c:___flneg@f1+2)),c,w
iorwf	((c:___flneg@f1+3)),c,w
	btfsc	status,2
	goto	u3271
	goto	u3270

u3271:
	goto	l3978
u3270:
	line	18
	
l3976:; BSR set to: 0

	movlw	0
	xorwf	((c:___flneg@f1)),c
	movlw	0
	xorwf	((c:___flneg@f1+1)),c
	movlw	0
	xorwf	((c:___flneg@f1+2)),c
	movlw	080h
	xorwf	((c:___flneg@f1+3)),c
	line	19
	
l3978:; BSR set to: 0

	movff	(c:___flneg@f1),(c:?___flneg)
	movff	(c:___flneg@f1+1),(c:?___flneg+1)
	movff	(c:___flneg@f1+2),(c:?___flneg+2)
	movff	(c:___flneg@f1+3),(c:?___flneg+3)
	line	20
	
l867:; BSR set to: 0

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
;;  f1              4   13[COMRAM] unsigned char 
;;  f2              4   17[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  f3              4   21[COMRAM] unsigned char 
;;  sign            1   27[COMRAM] unsigned char 
;;  exp             1   26[COMRAM] unsigned char 
;;  cntr            1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   13[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         8       0       0       0
;;      Locals:         7       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:        15       0       0       0
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
	
l3920:
	rlcf	((c:___fldiv@f1+2)),c,w
	rlcf	((c:___fldiv@f1+3)),c,w
	movwf	((c:___fldiv@exp)),c
	movf	((c:___fldiv@exp)),c,w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l3924
u3220:
	line	64
	
l3922:
	clrf	((c:?___fldiv)),c
	clrf	((c:?___fldiv+1)),c
	clrf	((c:?___fldiv+2)),c
	clrf	((c:?___fldiv+3)),c

	goto	l846
	line	65
	
l3924:
	rlcf	((c:___fldiv@f2+2)),c,w
	rlcf	((c:___fldiv@f2+3)),c,w
	movwf	((c:___fldiv@sign)),c
	movf	((c:___fldiv@sign)),c,w
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l3928
u3230:
	line	66
	
l3926:
	clrf	((c:?___fldiv)),c
	clrf	((c:?___fldiv+1)),c
	clrf	((c:?___fldiv+2)),c
	clrf	((c:?___fldiv+3)),c

	goto	l846
	line	67
	
l3928:
	movf	((c:___fldiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___fldiv@exp)),c
	line	68
	
l3930:
	movff	0+((c:___fldiv@f1)+03h),(c:___fldiv@sign)
	line	69
	movf	(0+((c:___fldiv@f2)+03h)),c,w
	xorwf	((c:___fldiv@sign)),c
	line	70
	movlw	(080h)&0ffh
	andwf	((c:___fldiv@sign)),c
	line	71
	
l3932:
	bsf	(0+(23/8)+(c:___fldiv@f1)),c,(23)&7
	line	72
	
l3934:
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
	
l3936:
	movlw	0FFh
	andwf	((c:___fldiv@f2)),c
	movlw	0FFh
	andwf	((c:___fldiv@f2+1)),c
	movlw	0FFh
	andwf	((c:___fldiv@f2+2)),c
	movlw	0
	andwf	((c:___fldiv@f2+3)),c
	line	75
	
l3938:
	movlw	low(020h)
	movwf	((c:___fldiv@cntr)),c
	line	77
	
l3940:
	bcf	status,0
	rlcf	((c:___fldiv@f3)),c
	rlcf	((c:___fldiv@f3+1)),c
	rlcf	((c:___fldiv@f3+2)),c
	rlcf	((c:___fldiv@f3+3)),c
	line	78
	
l3942:
		movf	((c:___fldiv@f2)),c,w
	subwf	((c:___fldiv@f1)),c,w
	movf	((c:___fldiv@f2+1)),c,w
	subwfb	((c:___fldiv@f1+1)),c,w
	movf	((c:___fldiv@f2+2)),c,w
	subwfb	((c:___fldiv@f1+2)),c,w
	movf	((c:___fldiv@f2+3)),c,w
	subwfb	((c:___fldiv@f1+3)),c,w
	btfss	status,0
	goto	u3241
	goto	u3240

u3241:
	goto	l3948
u3240:
	line	79
	
l3944:
	movf	((c:___fldiv@f2)),c,w
	subwf	((c:___fldiv@f1)),c
	movf	((c:___fldiv@f2+1)),c,w
	subwfb	((c:___fldiv@f1+1)),c
	movf	((c:___fldiv@f2+2)),c,w
	subwfb	((c:___fldiv@f1+2)),c
	movf	((c:___fldiv@f2+3)),c,w
	subwfb	((c:___fldiv@f1+3)),c
	line	80
	
l3946:
	bsf	(0+(0/8)+(c:___fldiv@f3)),c,(0)&7
	line	82
	
l3948:
	bcf	status,0
	rlcf	((c:___fldiv@f1)),c
	rlcf	((c:___fldiv@f1+1)),c
	rlcf	((c:___fldiv@f1+2)),c
	rlcf	((c:___fldiv@f1+3)),c
	line	83
	
l3950:
	decfsz	((c:___fldiv@cntr)),c
	
	goto	l3940
	line	84
	
l3952:
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
	
l846:
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
;;  c               4   13[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   13[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
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
	opt	stack 25
	line	32
	
l4038:; BSR set to: 0

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
	
l1062:
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
;;  x               4   85[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   85[COMRAM] unsigned long 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:         0       4       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       4       0       0
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
	opt	stack 23
	line	41
	
l4232:
	movff	(c:log10@x),(c:log@x)
	movff	(c:log10@x+1),(c:log@x+1)
	movff	(c:log10@x+2),(c:log@x+2)
	movff	(c:log10@x+3),(c:log@x+3)
	call	_log	;wreg free
	movff	0+?_log,(_log10$1132)
	movff	1+?_log,(_log10$1132+1)
	movff	2+?_log,(_log10$1132+2)
	movff	3+?_log,(_log10$1132+3)
	
	
l4234:
	movff	(_log10$1132),(c:___flmul@f1)
	movff	(_log10$1132+1),(c:___flmul@f1+1)
	movff	(_log10$1132+2),(c:___flmul@f1+2)
	movff	(_log10$1132+3),(c:___flmul@f1+3)
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
	
l1086:
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
;;  x               4   79[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exponent        2   83[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   79[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         6       0       0       0
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
	opt	stack 23
	line	24
	
l4042:
	btfsc	((c:log@x+3)),c,7
	goto	u3360
	goto	u3361

u3361:
	goto	l4046
u3360:
	line	26
	
l4044:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c
	clrf	((c:?_log+3)),c

	goto	l1082
	line	28
	
l4046:
	movf	((c:log@x)),c,w
iorwf	((c:log@x+1)),c,w
iorwf	((c:log@x+2)),c,w
iorwf	((c:log@x+3)),c,w
	btfss	status,2
	goto	u3371
	goto	u3370

u3371:
	goto	l4050
u3370:
	line	30
	
l4048:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c
	clrf	((c:?_log+3)),c

	goto	l1082
	line	32
	
l4050:
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
	
l4052:
	decf	((c:log@exponent)),c
	btfss	status,0
	decf	((c:log@exponent+1)),c
	line	34
	
l4054:
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
	
l4056:
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
	
l1082:
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
;;  value           4    3[COMRAM] int 
;;  eptr            1    7[COMRAM] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] PTR int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         5       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         7       0       0       0
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
	opt	stack 25
	line	256
	
l3820:
	movf	((c:frexp@value)),c,w
iorwf	((c:frexp@value+1)),c,w
iorwf	((c:frexp@value+2)),c,w
iorwf	((c:frexp@value+3)),c,w
	btfss	status,2
	goto	u3071
	goto	u3070

u3071:
	goto	l3828
u3070:
	line	257
	
l3822:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	258
	
l3824:
	clrf	((c:?_frexp)),c
	clrf	((c:?_frexp+1)),c
	clrf	((c:?_frexp+2)),c
	clrf	((c:?_frexp+3)),c

	goto	l921
	line	261
	
l3828:
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
	goto	u3081
	goto	u3080
u3081:
	movlw	1
	goto	u3086
u3080:
	movlw	0
u3086:
	iorwf	postinc2
	movlw	0
	iorwf	postdec2
	line	263
	
l3830:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(-126)
	addwf	postinc2
	movlw	high(-126)
	addwfc	postdec2
	line	268
	
l3832:
	movf	(0+((c:frexp@value)+03h)),c,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	(0+((c:frexp@value)+03h)),c
	line	269
	
l3834:
	bcf	(0+((c:frexp@value)+02h)),c,7
	line	273
	
l3836:
	movff	(c:frexp@value),(c:?_frexp)
	movff	(c:frexp@value+1),(c:?_frexp+1)
	movff	(c:frexp@value+2),(c:?_frexp+2)
	movff	(c:frexp@value+3),(c:?_frexp+3)
	line	274
	
l921:
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
;;  x               4   67[COMRAM] PTR int 
;;  d               1   71[COMRAM] PTR const 
;;		 -> exp@coeff(40), log@coeff(36), 
;;  n               2   72[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  res             4   75[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   67[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         7       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:        12       0       0       0
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
	opt	stack 23
	line	8
	
l4012:
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
	goto	l4016
	line	10
	
l4014:
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
	
l4016:
	movf	((c:eval_poly@n)),c,w
iorwf	((c:eval_poly@n+1)),c,w
	btfss	status,2
	goto	u3331
	goto	u3330

u3331:
	goto	l4014
u3330:
	
l1168:
	line	11
	movff	(c:eval_poly@res),(c:?_eval_poly)
	movff	(c:eval_poly@res+1),(c:?_eval_poly+1)
	movff	(c:eval_poly@res+2),(c:?_eval_poly+2)
	movff	(c:eval_poly@res+3),(c:?_eval_poly+3)
	line	12
	
l1169:
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
;;  f1              4   28[COMRAM] int 
;;  f2              4   32[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    4   51[COMRAM] unsigned long 
;;  sign            1   50[COMRAM] unsigned char 
;;  exp             1   49[COMRAM] unsigned char 
;;  cntr            1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  4   28[COMRAM] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         8       0       0       0
;;      Locals:         6       0       0       0
;;      Temps:         13       0       0       0
;;      Totals:        27       0       0       0
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
	
l3766:
	rlcf	((c:___flmul@f1+2)),c,w
	rlcf	((c:___flmul@f1+3)),c,w
	movwf	((c:___flmul@exp)),c
	movf	((c:___flmul@exp)),c,w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l3770
u3010:
	line	68
	
l3768:
	clrf	((c:?___flmul)),c
	clrf	((c:?___flmul+1)),c
	clrf	((c:?___flmul+2)),c
	clrf	((c:?___flmul+3)),c

	goto	l861
	line	69
	
l3770:
	rlcf	((c:___flmul@f2+2)),c,w
	rlcf	((c:___flmul@f2+3)),c,w
	movwf	((c:___flmul@sign)),c
	movf	((c:___flmul@sign)),c,w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l3774
u3020:
	line	70
	
l3772:
	clrf	((c:?___flmul)),c
	clrf	((c:?___flmul+1)),c
	clrf	((c:?___flmul+2)),c
	clrf	((c:?___flmul+3)),c

	goto	l861
	line	71
	
l3774:
	movf	((c:___flmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___flmul@exp)),c
	line	72
	
l3776:
	movff	0+((c:___flmul@f1)+03h),(c:___flmul@sign)
	line	73
	movf	(0+((c:___flmul@f2)+03h)),c,w
	xorwf	((c:___flmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___flmul@sign)),c
	line	75
	
l3778:
	bsf	(0+(23/8)+(c:___flmul@f1)),c,(23)&7
	line	77
	
l3780:
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
	
l3782:
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
	
l3784:
	movf	((c:___flmul@f1)),c,w
	mulwf	((c:___flmul@f2)),c
	movff	prodh,prodl
	clrf	(prodh),c
	movff	prodl,(c:___flmul@f3_as_product)
	movff	prodh,(c:___flmul@f3_as_product+1)
	clrf	((c:___flmul@f3_as_product+2)),c
	clrf	((c:___flmul@f3_as_product+3)),c

	line	148
	
l3786:
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
	
l3788:
	movf	(0+((c:___flmul@f3_as_product)+01h)),c,w
	movwf	((c:___flmul@f3_as_product)),c
	movf	(1+((c:___flmul@f3_as_product)+01h)),c,w
	movwf	1+((c:___flmul@f3_as_product)),c
	
	movf	(2+((c:___flmul@f3_as_product)+01h)),c,w
	movwf	2+((c:___flmul@f3_as_product)),c
	
	clrf	3+((c:___flmul@f3_as_product)),c
	line	156
	
l3790:
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
	
l3792:
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
	
l3794:
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
	
l3796:
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
	
l3798:
	
	btfss	((c:___flmul@f3_as_product+3)),c,(31)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l863
u3030:
	line	189
	
l3800:
	bcf	status,0
	rrcf	((c:___flmul@f3_as_product+3)),c
	rrcf	((c:___flmul@f3_as_product+2)),c
	rrcf	((c:___flmul@f3_as_product+1)),c
	rrcf	((c:___flmul@f3_as_product)),c
	line	190
	incf	((c:___flmul@exp)),c
	line	191
	
l863:
	line	192
	bcf	status,0
	rrcf	((c:___flmul@f3_as_product+3)),c
	rrcf	((c:___flmul@f3_as_product+2)),c
	rrcf	((c:___flmul@f3_as_product+1)),c
	rrcf	((c:___flmul@f3_as_product)),c
	line	219
	
l3802:
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
	
l861:
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
;;  f1              4   55[COMRAM] unsigned char 
;;  f2              4   59[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1   66[COMRAM] unsigned char 
;;  exp2            1   65[COMRAM] unsigned char 
;;  sign            1   64[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   55[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         8       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:        12       0       0       0
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
	
l3700:
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
	goto	u2821
	goto	u2820
u2821:
	goto	l814
u2820:
	
l3702:
		movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	btfsc	status,0
	goto	u2831
	goto	u2830

u2831:
	goto	l3706
u2830:
	
l3704:
	movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	movwf	(??___fladd+0+0)&0ffh,c
		movlw	021h-1
	cpfsgt	((??___fladd+0+0)),c
	goto	u2841
	goto	u2840

u2841:
	goto	l3706
u2840:
	
l814:
	line	95
	movff	(c:___fladd@f2),(c:?___fladd)
	movff	(c:___fladd@f2+1),(c:?___fladd+1)
	movff	(c:___fladd@f2+2),(c:?___fladd+2)
	movff	(c:___fladd@f2+3),(c:?___fladd+3)
	goto	l815
	line	96
	
l3706:
	movf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l818
u2850:
	
l3708:
		movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	btfsc	status,0
	goto	u2861
	goto	u2860

u2861:
	goto	l3712
u2860:
	
l3710:
	movf	((c:___fladd@exp2)),c,w
	subwf	((c:___fladd@exp1)),c,w
	movwf	(??___fladd+0+0)&0ffh,c
		movlw	021h-1
	cpfsgt	((??___fladd+0+0)),c
	goto	u2871
	goto	u2870

u2871:
	goto	l3712
u2870:
	
l818:
	line	97
	movff	(c:___fladd@f1),(c:?___fladd)
	movff	(c:___fladd@f1+1),(c:?___fladd+1)
	movff	(c:___fladd@f1+2),(c:?___fladd+2)
	movff	(c:___fladd@f1+3),(c:?___fladd+3)
	goto	l815
	line	98
	
l3712:
	movlw	low(06h)
	movwf	((c:___fladd@sign)),c
	line	99
	
l3714:
	
	btfss	((c:___fladd@f1+3)),c,(31)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l3718
u2880:
	line	100
	
l3716:
	bsf	(0+(7/8)+(c:___fladd@sign)),c,(7)&7
	line	101
	
l3718:
	
	btfss	((c:___fladd@f2+3)),c,(31)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l820
u2890:
	line	102
	
l3720:
	bsf	(0+(6/8)+(c:___fladd@sign)),c,(6)&7
	
l820:
	line	103
	bsf	(0+(23/8)+(c:___fladd@f1)),c,(23)&7
	line	104
	
l3722:
	movlw	0FFh
	andwf	((c:___fladd@f1)),c
	movlw	0FFh
	andwf	((c:___fladd@f1+1)),c
	movlw	0FFh
	andwf	((c:___fladd@f1+2)),c
	movlw	0
	andwf	((c:___fladd@f1+3)),c
	line	105
	
l3724:
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
	goto	u2901
	goto	u2900

u2901:
	goto	l3736
u2900:
	line	112
	
l3726:
	bcf	status,0
	rlcf	((c:___fladd@f2)),c
	rlcf	((c:___fladd@f2+1)),c
	rlcf	((c:___fladd@f2+2)),c
	rlcf	((c:___fladd@f2+3)),c
	line	113
	decf	((c:___fladd@exp2)),c
	line	114
	
l3728:
	movf	((c:___fladd@exp1)),c,w
xorwf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2911
	goto	u2910

u2911:
	goto	l3734
u2910:
	
l3730:
	decf	((c:___fladd@sign)),c
	movff	(c:___fladd@sign),??___fladd+0+0
	movlw	07h
	andwf	(??___fladd+0+0),c
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l3726
u2920:
	goto	l3734
	line	116
	
l3732:
	bcf	status,0
	rrcf	((c:___fladd@f1+3)),c
	rrcf	((c:___fladd@f1+2)),c
	rrcf	((c:___fladd@f1+1)),c
	rrcf	((c:___fladd@f1)),c
	line	117
	incf	((c:___fladd@exp1)),c
	line	115
	
l3734:
	movf	((c:___fladd@exp2)),c,w
xorwf	((c:___fladd@exp1)),c,w
	btfss	status,2
	goto	u2931
	goto	u2930

u2931:
	goto	l3732
u2930:
	goto	l829
	line	119
	
l3736:
		movf	((c:___fladd@exp1)),c,w
	subwf	((c:___fladd@exp2)),c,w
	btfsc	status,0
	goto	u2941
	goto	u2940

u2941:
	goto	l829
u2940:
	line	123
	
l3738:
	bcf	status,0
	rlcf	((c:___fladd@f1)),c
	rlcf	((c:___fladd@f1+1)),c
	rlcf	((c:___fladd@f1+2)),c
	rlcf	((c:___fladd@f1+3)),c
	line	124
	decf	((c:___fladd@exp1)),c
	line	125
	
l3740:
	movf	((c:___fladd@exp1)),c,w
xorwf	((c:___fladd@exp2)),c,w
	btfsc	status,2
	goto	u2951
	goto	u2950

u2951:
	goto	l3746
u2950:
	
l3742:
	decf	((c:___fladd@sign)),c
	movff	(c:___fladd@sign),??___fladd+0+0
	movlw	07h
	andwf	(??___fladd+0+0),c
	btfss	status,2
	goto	u2961
	goto	u2960
u2961:
	goto	l3738
u2960:
	goto	l3746
	line	127
	
l3744:
	bcf	status,0
	rrcf	((c:___fladd@f2+3)),c
	rrcf	((c:___fladd@f2+2)),c
	rrcf	((c:___fladd@f2+1)),c
	rrcf	((c:___fladd@f2)),c
	line	128
	incf	((c:___fladd@exp2)),c
	line	126
	
l3746:
	movf	((c:___fladd@exp2)),c,w
xorwf	((c:___fladd@exp1)),c,w
	btfss	status,2
	goto	u2971
	goto	u2970

u2971:
	goto	l3744
u2970:
	line	131
	
l829:
	
	btfss	((c:___fladd@sign)),c,(7)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l3750
u2980:
	line	133
	
l3748:
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
	
l3750:
	
	btfss	((c:___fladd@sign)),c,(6)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l3754
u2990:
	line	138
	
l3752:
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
	
l3754:
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
	
l3756:
	
	btfss	((c:___fladd@f2+3)),c,(31)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l3762
u3000:
	line	144
	
l3758:
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
	
l3760:
	movlw	low(01h)
	movwf	((c:___fladd@sign)),c
	line	148
	
l3762:
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
	
l815:
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
;;  c               2   13[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  f1              4    0        int 
;;  sign            1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   13[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         5       0       0       0
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
	opt	stack 24
	line	36
	
l3964:
	clrf	((c:___awtofl@sign)),c
	line	37
	
l3966:
	btfsc	((c:___awtofl@c+1)),c,7
	goto	u3260
	goto	u3261

u3261:
	goto	l3970
u3260:
	line	38
	
l3968:
	negf	((c:___awtofl@c)),c
	comf	((c:___awtofl@c+1)),c
	btfsc	status,0
	incf	((c:___awtofl@c+1)),c
	line	39
	incf	((c:___awtofl@sign)),c
	line	41
	
l3970:
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
	
l782:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awtofl
	__end_of___awtofl:
	signat	___awtofl,4220
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 484 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  fourbitmode     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fourbitmode     1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	484
global __ptext30
__ptext30:
psect	text30
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
	
l3332:
;lcd44780.c: 486: LCD_ctrl = 0;
	movlb	0	; () banked
	clrf	((_LCD_ctrl))&0ffh
	line	487
	
l3334:; BSR set to: 0

;lcd44780.c: 487: LCD_function = (fourbitmode ? 0x00 : 0x10);
	movf	((c:lcd_init@fourbitmode)),c,w
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l327
u2480:
	
l3336:; BSR set to: 0

	movlw	high(010h)
	movwf	((c:_lcd_init$263+1)),c
	movlw	low(010h)
	movwf	((c:_lcd_init$263)),c
	goto	l329
	
l327:; BSR set to: 0

	clrf	((c:_lcd_init$263)),c
	clrf	((c:_lcd_init$263+1)),c
	
l329:; BSR set to: 0

	movff	(c:_lcd_init$263),(c:_LCD_function)
	line	489
;lcd44780.c: 489: LCD_lines = 0;
	clrf	((_LCD_lines))&0ffh
	line	491
;lcd44780.c: 491: LCD_mode = 0;
	clrf	((_LCD_mode))&0ffh
	line	493
	
l3338:; BSR set to: 0

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
	
l3340:; BSR set to: 0

;lcd44780.c: 502: LATB &= ~0b11110000;
	movlw	(0Fh)&0ffh
	andwf	((c:3978)),c	;volatile
	line	512
	
l330:; BSR set to: 0

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
;;  dotsize         1    7[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lines           1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         3       0       0       0
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
psect	text31,class=CODE,space=0,reloc=2
	line	411
global __ptext31
__ptext31:
psect	text31
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
	
l4392:; BSR set to: 0

;lcd44780.c: 412: if(lines > 1)
		movlw	02h-1
	cpfsgt	((c:lcd_begin@lines)),c
	goto	u3721
	goto	u3720

u3721:
	goto	l4396
u3720:
	line	413
	
l4394:; BSR set to: 0

;lcd44780.c: 413: LCD_function |= 0x08;
	bsf	(0+(3/8)+(c:_LCD_function)),c,(3)&7
	line	416
	
l4396:; BSR set to: 0

;lcd44780.c: 416: LCD_lines = lines;
	movff	(c:lcd_begin@lines),(_LCD_lines)
	line	420
	
l4398:; BSR set to: 0

;lcd44780.c: 420: if((dotsize != 0) && (lines == 1))
	movf	((c:lcd_begin@dotsize)),c,w
	btfsc	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l4404
u3730:
	
l4400:; BSR set to: 0

		decf	((c:lcd_begin@lines)),c,w
	btfss	status,2
	goto	u3741
	goto	u3740

u3741:
	goto	l4404
u3740:
	line	421
	
l4402:; BSR set to: 0

;lcd44780.c: 421: LCD_function |= 0x04;
	bsf	(0+(2/8)+(c:_LCD_function)),c,(2)&7
	line	423
	
l4404:; BSR set to: 0

;lcd44780.c: 423: _delay((unsigned long)((15)*(16000000/4000.0)));
	movlw	78
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	235
u3907:
decfsz	wreg,f
	goto	u3907
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3907
	nop

	line	426
	
l4406:
;lcd44780.c: 426: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	427
	
l4408:
;lcd44780.c: 427: LATB &= ~0b1000;
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	line	430
	
l4410:
;lcd44780.c: 430: if(!(LCD_function & 0x10)) {
	
	btfsc	((c:_LCD_function)),c,(4)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l4422
u3750:
	line	434
	
l4412:
;lcd44780.c: 434: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	435
	
l4414:
;lcd44780.c: 435: _delay((unsigned long)((5)*(16000000/4000.0)));
	movlw	26
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	248
u3917:
decfsz	wreg,f
	goto	u3917
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3917
	nop2

	line	437
	
l4416:
;lcd44780.c: 437: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	438
;lcd44780.c: 438: _delay((unsigned long)((150)*(16000000/4000000.0)));
	movlw	200
u3927:
decfsz	wreg,f
	goto	u3927

	line	440
	
l4418:
;lcd44780.c: 440: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	441
	
l4420:
;lcd44780.c: 441: _delay((unsigned long)((150)*(16000000/4000000.0)));
	movlw	200
u3937:
decfsz	wreg,f
	goto	u3937

	line	443
;lcd44780.c: 443: lcd_write4bits(0x02);
	movlw	(02h)&0ffh
	
	call	_lcd_write4bits
	line	444
;lcd44780.c: 444: }
	goto	l4430
	line	450
	
l4422:
;lcd44780.c: 446: else {
;lcd44780.c: 450: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	451
	
l4424:
;lcd44780.c: 451: _delay((unsigned long)((5)*(16000000/4000.0)));
	movlw	26
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	248
u3947:
decfsz	wreg,f
	goto	u3947
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3947
	nop2

	line	454
	
l4426:
;lcd44780.c: 454: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	455
;lcd44780.c: 455: _delay((unsigned long)((5)*(16000000/4000.0)));
	movlw	26
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	248
u3957:
decfsz	wreg,f
	goto	u3957
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3957
	nop2

	line	459
	
l4428:
;lcd44780.c: 459: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	463
	
l4430:
;lcd44780.c: 460: }
;lcd44780.c: 463: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	466
	
l4432:
;lcd44780.c: 466: LCD_ctrl = 0x04 | 0x00 | 0x00;
	movlw	low(04h)
	movlb	0	; () banked
	movwf	((_LCD_ctrl))&0ffh
	line	467
	
l4434:; BSR set to: 0

;lcd44780.c: 467: lcd_command(0x08 | LCD_ctrl);
	movf	((_LCD_ctrl))&0ffh,w
	iorlw	low(08h)
	
	call	_lcd_command
	line	470
	
l4436:
;lcd44780.c: 470: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	471
	
l4438:
;lcd44780.c: 471: _delay((unsigned long)((2)*(16000000/4000.0)));
	movlw	11
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	98
u3967:
decfsz	wreg,f
	goto	u3967
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	goto	u3967
	nop2

	line	474
;lcd44780.c: 474: LCD_mode = 0x02 | 0x00;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((_LCD_mode))&0ffh
	line	476
	
l4440:; BSR set to: 0

;lcd44780.c: 476: lcd_command(0x04 | LCD_mode);
	movf	((_LCD_mode))&0ffh,w
	iorlw	low(04h)
	
	call	_lcd_command
	line	477
	
l323:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_lcd_begin
	__end_of_lcd_begin:
	signat	_lcd_begin,8312
	global	_calibrate

;; *************** function _calibrate *****************
;; Defined at:
;;		line 25 in file "../../../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   62[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
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
;;		_ser_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"../../../src/measure.c"
	line	25
global __ptext32
__ptext32:
psect	text32
	file	"../../../src/measure.c"
	line	25
	global	__size_of_calibrate
	__size_of_calibrate	equ	__end_of_calibrate-_calibrate
	
_calibrate:
;incstack = 0
	opt	stack 24
	line	29
	
l4442:
;measure.c: 26: uint8_t i;
;measure.c: 29: lcd_clear();
	call	_lcd_clear	;wreg free
	line	31
	
l4444:
;measure.c: 31: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	32
	
l4446:
;measure.c: 32: put_str("Calibrating");
	movlw	(STR_23)&0ffh
	
	call	_put_str
	line	34
	
l4448:
;measure.c: 34: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	35
	
l4450:
;measure.c: 35: ser_puts("\r\n");
	movlw	(STR_24)&0ffh
	
	call	_ser_puts
	line	36
	
l4452:
;measure.c: 36: put_str("please wait...");
	movlw	(STR_25)&0ffh
	
	call	_put_str
	line	39
	
l4454:
;measure.c: 39: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	41
	
l4456:
;measure.c: 41: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F1)
	movff	1+?___lwtofl,(_F1+1)
	movff	2+?___lwtofl,(_F1+2)
	movff	3+?___lwtofl,(_F1+3)
	
	line	42
;measure.c: 42: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	44
	
l4458:
;measure.c: 44: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F1)
	movff	1+?___lwtofl,(_F1+1)
	movff	2+?___lwtofl,(_F1+2)
	movff	3+?___lwtofl,(_F1+3)
	
	line	45
	
l4460:
;measure.c: 45: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	47
	
l4462:
;measure.c: 47: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F2)
	movff	1+?___lwtofl,(_F2+1)
	movff	2+?___lwtofl,(_F2+2)
	movff	3+?___lwtofl,(_F2+3)
	
	line	48
	
l4464:
;measure.c: 48: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	50
	
l4466:
;measure.c: 50: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtofl@c)
	movff	1+?_measure_freq,(c:___lwtofl@c+1)
	call	___lwtofl	;wreg free
	movff	0+?___lwtofl,(_F2)
	movff	1+?___lwtofl,(_F2+1)
	movff	2+?___lwtofl,(_F2+2)
	movff	3+?___lwtofl,(_F2+3)
	
	line	51
	
l4468:
;measure.c: 51: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	54
	
l4470:
;measure.c: 54: lcd_gotoxy(11, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0Bh)&0ffh
	
	call	_lcd_gotoxy
	line	55
	
l4472:
;measure.c: 55: for(i = 0; i < 6; i++) {
	clrf	((c:calibrate@i)),c
	line	56
	
l4478:
;measure.c: 56: lcd_send(('='), 1);
	movlw	low(01h)
	movwf	((c:lcd_send@mode)),c
	movlw	(03Dh)&0ffh
	
	call	_lcd_send
	line	58
	
l4480:
;measure.c: 58: delay10ms(28);
	movlw	(01Ch)&0ffh
	
	call	_delay10ms
	line	55
	incf	((c:calibrate@i)),c
	
l4482:
		movlw	06h-1
	cpfsgt	((c:calibrate@i)),c
	goto	u3761
	goto	u3760

u3761:
	goto	l4478
u3760:
	line	61
	
l4484:
;measure.c: 59: }
;measure.c: 61: ser_puts("\r\n");
	movlw	(STR_26)&0ffh
	
	call	_ser_puts
	line	62
	
l545:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_calibrate
	__end_of_calibrate:
	signat	_calibrate,88
	global	_put_str

;; *************** function _put_str *****************
;; Defined at:
;;		line 221 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_37(13), STR_28(10), STR_25(15), STR_23(12), 
;; Auto vars:     Size  Location     Type
;;  s               1   10[COMRAM] PTR const unsigned char 
;;		 -> STR_37(13), STR_28(10), STR_25(15), STR_23(12), 
;;  i               2    8[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         4       0       0       0
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
psect	text33,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	221
global __ptext33
__ptext33:
psect	text33
	file	"../../../src/print.c"
	line	221
	global	__size_of_put_str
	__size_of_put_str	equ	__end_of_put_str-_put_str
	
_put_str:
;incstack = 0
	opt	stack 25
;put_str@s stored from wreg
	movwf	((c:put_str@s)),c
	line	224
	
l4300:
;print.c: 222: int i;
;print.c: 224: for(i = 0; s[i]; i++) {
	clrf	((c:put_str@i)),c
	clrf	((c:put_str@i+1)),c
	goto	l4306
	line	225
	
l4302:
;print.c: 225: output_putch(s[i]);
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
	line	224
	
l4304:
	infsnz	((c:put_str@i)),c
	incf	((c:put_str@i+1)),c
	
l4306:
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
	goto	u3681
	goto	u3680
u3681:
	goto	l4302
u3680:
	line	227
	
l45:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_put_str
	__end_of_put_str:
	signat	_put_str,4216
	global	_output_putch

;; *************** function _output_putch *****************
;; Defined at:
;;		line 208 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_send
;;		_ser_putch
;; This function is called by:
;;		_put_str
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	line	208
global __ptext34
__ptext34:
psect	text34
	file	"../../../src/print.c"
	line	208
	global	__size_of_output_putch
	__size_of_output_putch	equ	__end_of_output_putch-_output_putch
	
_output_putch:
;incstack = 0
	opt	stack 25
;output_putch@c stored from wreg
	movwf	((c:output_putch@c)),c
	line	210
	
l4196:
;print.c: 210: lcd_send((c), 1);
	movlw	low(01h)
	movwf	((c:lcd_send@mode)),c
	movf	((c:output_putch@c)),c,w
	
	call	_lcd_send
	line	213
	
l4198:
;print.c: 213: ser_putch(c);
	movf	((c:output_putch@c)),c,w
	
	call	_ser_putch
	line	215
	
l39:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_output_putch
	__end_of_output_putch:
	signat	_output_putch,4216
	global	_measure_freq

;; *************** function _measure_freq *****************
;; Defined at:
;;		line 68 in file "../../../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   56[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   53[COMRAM] unsigned short 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         2       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         5       0       0       0
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
psect	text35,class=CODE,space=0,reloc=2
	file	"../../../src/measure.c"
	line	68
global __ptext35
__ptext35:
psect	text35
	file	"../../../src/measure.c"
	line	68
	global	__size_of_measure_freq
	__size_of_measure_freq	equ	__end_of_measure_freq-_measure_freq
	
_measure_freq:
;incstack = 0
	opt	stack 24
	line	71
	
l4336:
;measure.c: 69: uint16_t count;
;measure.c: 71: INTCON &= ~0b100;
	bcf	(0+(2/8)+(c:4082)),c,(2)&7	;volatile
	line	75
;measure.c: 75: TRISA &= ~0b00010000;
	bcf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	77
	
l4338:
;measure.c: 77: _delay((unsigned long)((20)*(16000000/4000.0)));
	movlw	104
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	228
u3977:
decfsz	wreg,f
	goto	u3977
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3977
	nop2

	line	80
	
l4340:
;measure.c: 80: TMR0 = 0x00;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	85
	
l4342:
;measure.c: 85: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3987:
decfsz	wreg,f
	goto	u3987
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3987

	line	86
	
l4344:
;measure.c: 86: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u3997:
decfsz	wreg,f
	goto	u3997
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u3997

	line	87
	
l4346:
;measure.c: 87: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u4007:
decfsz	wreg,f
	goto	u4007
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u4007

	line	88
	
l4348:
;measure.c: 88: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u4017:
decfsz	wreg,f
	goto	u4017
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u4017

	line	89
	
l4350:
;measure.c: 89: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u4027:
decfsz	wreg,f
	goto	u4027
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u4027

	line	90
	
l4352:
;measure.c: 90: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u4037:
decfsz	wreg,f
	goto	u4037
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u4037

	line	91
	
l4354:
;measure.c: 91: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u4047:
decfsz	wreg,f
	goto	u4047
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u4047

	line	92
	
l4356:
;measure.c: 92: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u4057:
decfsz	wreg,f
	goto	u4057
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u4057

	line	93
	
l4358:
;measure.c: 93: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u4067:
decfsz	wreg,f
	goto	u4067
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u4067

	line	94
	
l4360:
;measure.c: 94: _delay((unsigned long)((10)*(16000000/4000.0)));
	movlw	52
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	242
u4077:
decfsz	wreg,f
	goto	u4077
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	goto	u4077

	line	99
	
l4362:
;measure.c: 99: TRISA |= 0b00010000;
	bsf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	102
	
l4364:
;measure.c: 102: count = timer0_read_ps();
	call	_timer0_read_ps	;wreg free
	movff	0+?_timer0_read_ps,(c:measure_freq@count)
	movff	1+?_timer0_read_ps,(c:measure_freq@count+1)
	line	105
	
l4366:
;measure.c: 105: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	107
	
l4368:
;measure.c: 107: buffer_init();
	call	_buffer_init	;wreg free
	line	108
	
l4370:; BSR set to: 1

;measure.c: 108: buffer_puts("Freq=");
	movlw	(STR_27)&0ffh
	
	call	_buffer_puts
	line	109
	
l4372:; BSR set to: 1

;measure.c: 109: format_number(count, 10, 5);
	movff	(c:measure_freq@count),(c:format_number@n)
	movff	(c:measure_freq@count+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(05h)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	110
	
l4374:
;measure.c: 110: print_buffer();
	call	_print_buffer	;wreg free
	line	112
	
l4376:
;measure.c: 112: return count;
	movff	(c:measure_freq@count),(c:?_measure_freq)
	movff	(c:measure_freq@count+1),(c:?_measure_freq+1)
	line	113
	
l548:
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
;;  count           2    8[COMRAM] unsigned int 
;;  prev            1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         2       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"../../../lib/timer.c"
	line	63
global __ptext36
__ptext36:
psect	text36
	file	"../../../lib/timer.c"
	line	63
	global	__size_of_timer0_read_ps
	__size_of_timer0_read_ps	equ	__end_of_timer0_read_ps-_timer0_read_ps
	
_timer0_read_ps:
;incstack = 0
	opt	stack 27
	line	64
	
l4210:
;timer.c: 64: uint8_t prev = TMR0;
	movff	(c:4054),(c:timer0_read_ps@prev)	;volatile
	line	65
;timer.c: 65: uint16_t count = 0;
	clrf	((c:timer0_read_ps@count)),c
	clrf	((c:timer0_read_ps@count+1)),c
	line	67
	
l4212:
;timer.c: 67: T0CON |= 0x20;
	bsf	(0+(5/8)+(c:4053)),c,(5)&7	;volatile
	line	69
;timer.c: 69: do {
	
l186:
	line	71
;timer.c: 71: T0CON |= 0x10;
	bsf	(0+(4/8)+(c:4053)),c,(4)&7	;volatile
	line	73
	
l4214:
;timer.c: 73: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	74
	
l4216:
;timer.c: 74: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	76
;timer.c: 76: T0CON &= ~0x10;
	bcf	(0+(4/8)+(c:4053)),c,(4)&7	;volatile
	line	78
	
l4218:
;timer.c: 78: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	79
	
l4220:
;timer.c: 79: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	81
;timer.c: 81: ++count;
	infsnz	((c:timer0_read_ps@count)),c
	incf	((c:timer0_read_ps@count+1)),c
	line	84
	
l4222:
;timer.c: 84: } while(prev == TMR0 && count <= 255);
	movf	((c:timer0_read_ps@prev)),c,w
	xorwf	((c:4054)),c,w	;volatile
	iorwf	((c:4054+1)),c,w	;volatile

	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l4226
u3600:
	
l4224:
		decf	((c:timer0_read_ps@count+1)),c,w
	btfss	status,0
	goto	u3611
	goto	u3610

u3611:
	goto	l186
u3610:
	line	86
	
l4226:
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
	
l4228:
;timer.c: 87: return count;
	movff	(c:timer0_read_ps@count),(c:?_timer0_read_ps)
	movff	(c:timer0_read_ps@count+1),(c:?_timer0_read_ps+1)
	line	88
	
l190:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_timer0_read_ps
	__end_of_timer0_read_ps:
	signat	_timer0_read_ps,90
	global	_print_buffer

;; *************** function _print_buffer *****************
;; Defined at:
;;		line 230 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/1
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ser_putch
;;		_ser_puts
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"../../../src/print.c"
	line	230
global __ptext37
__ptext37:
psect	text37
	file	"../../../src/print.c"
	line	230
	global	__size_of_print_buffer
	__size_of_print_buffer	equ	__end_of_print_buffer-_print_buffer
	
_print_buffer:
;incstack = 0
	opt	stack 25
	line	232
	
l4200:
;print.c: 231: uint8_t i;
;print.c: 232: for(i = 0; i < buffer.n; i++) {
	clrf	((c:print_buffer@i)),c
	goto	l4206
	line	233
	
l4202:; BSR set to: 1

;print.c: 233: ser_putch(buffer.x[i]);
	movlw	low(_buffer)
	addwf	((c:print_buffer@i)),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_buffer)
	addwfc	1+c:fsr2l
	movf	indf2,w
	
	call	_ser_putch
	line	232
	
l4204:
	incf	((c:print_buffer@i)),c
	
l4206:
	movlb	1	; () banked
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_print_buffer+0+0)&0ffh,c
		movf	((??_print_buffer+0+0)),c,w
	subwf	((c:print_buffer@i)),c,w
	btfss	status,0
	goto	u3591
	goto	u3590

u3591:
	goto	l4202
u3590:
	line	235
	
l4208:; BSR set to: 1

;print.c: 234: }
;print.c: 235: ser_puts("\r\n");
	movlw	(STR_13)&0ffh
	
	call	_ser_puts
	line	236
	
l51:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_print_buffer
	__end_of_print_buffer:
	signat	_print_buffer,88
	global	_ser_puts

;; *************** function _ser_puts *****************
;; Defined at:
;;		line 65 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_36(3), STR_35(5), STR_34(3), STR_33(8), 
;;		 -> STR_32(6), STR_31(6), STR_30(6), STR_29(5), 
;;		 -> STR_26(3), STR_24(3), STR_22(3), STR_17(3), 
;;		 -> STR_16(16), STR_15(16), STR_13(3), STR_9(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    4[COMRAM] PTR const unsigned char 
;;		 -> STR_36(3), STR_35(5), STR_34(3), STR_33(8), 
;;		 -> STR_32(6), STR_31(6), STR_30(6), STR_29(5), 
;;		 -> STR_26(3), STR_24(3), STR_22(3), STR_17(3), 
;;		 -> STR_16(16), STR_15(16), STR_13(3), STR_9(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ser_putch
;; This function is called by:
;;		_print_unit
;;		_print_buffer
;;		_main
;;		_calibrate
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"../../../lib/ser.c"
	line	65
global __ptext38
__ptext38:
psect	text38
	file	"../../../lib/ser.c"
	line	65
	global	__size_of_ser_puts
	__size_of_ser_puts	equ	__end_of_ser_puts-_ser_puts
	
_ser_puts:
;incstack = 0
	opt	stack 28
;ser_puts@s stored from wreg
	movwf	((c:ser_puts@s)),c
	line	66
	
l4018:
;ser.c: 66: while(*s) ser_putch(*s++);
	goto	l4024
	
l4020:
	movff	(c:ser_puts@s),tblptrl
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
	
	call	_ser_putch
	
l4022:
	incf	((c:ser_puts@s)),c
	
l4024:
	movff	(c:ser_puts@s),tblptrl
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
	goto	u3341
	goto	u3340
u3341:
	goto	l4020
u3340:
	line	67
	
l115:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ser_puts
	__end_of_ser_puts:
	signat	_ser_puts,4216
	global	_ser_putch

;; *************** function _ser_putch *****************
;; Defined at:
;;		line 55 in file "../../../lib/ser.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_output_putch
;;		_print_buffer
;;		_ser_puts
;;		_measure_capacitance
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	line	55
global __ptext39
__ptext39:
psect	text39
	file	"../../../lib/ser.c"
	line	55
	global	__size_of_ser_putch
	__size_of_ser_putch	equ	__end_of_ser_putch-_ser_putch
	
_ser_putch:
;incstack = 0
	opt	stack 28
;ser_putch@c stored from wreg
	movwf	((c:ser_putch@c)),c
	line	56
	
l3888:
;ser.c: 56: while(((txiptr + 1) & ((uint8_t)16 - 1)) == txoptr) continue;
	
l3890:
	incf	((c:_txiptr)),c,w	;volatile
	andlw	low(0Fh)
	xorwf	((c:_txoptr)),c,w	;volatile
	btfsc	status,2
	goto	u3171
	goto	u3170
u3171:
	goto	l3890
u3170:
	
l108:
	line	57
;ser.c: 57: GIE = 0;
	bcf	c:(32663/8),(32663)&7	;volatile
	line	58
	
l3892:
;ser.c: 58: txfifo[txiptr] = c;
	movf	((c:_txiptr)),c,w
	addlw	low(_txfifo)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:ser_putch@c),indf2

	line	59
	
l3894:
;ser.c: 59: txiptr = (txiptr + 1) & ((uint8_t)16 - 1);
	incf	((c:_txiptr)),c,w	;volatile
	andlw	low(0Fh)
	movwf	((c:_txiptr)),c	;volatile
	line	60
	
l3896:
;ser.c: 60: TXIE = 1;
	bsf	c:(31980/8),(31980)&7	;volatile
	line	61
	
l3898:
;ser.c: 61: GIE = 1;
	bsf	c:(32663/8),(32663)&7	;volatile
	line	62
	
l109:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ser_putch
	__end_of_ser_putch:
	signat	_ser_putch,4216
	global	_lcd_gotoxy

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 135 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    7[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    8[COMRAM] unsigned char 
;;  row_offsets     4    9[COMRAM] unsigned char [4]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         1       0       0       0
;;      Locals:         5       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         6       0       0       0
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
psect	text40,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	135
global __ptext40
__ptext40:
psect	text40
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
	
l4140:
;lcd44780.c: 137: uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	movff	(lcd_gotoxy@F3583),(c:lcd_gotoxy@row_offsets)
	movff	(lcd_gotoxy@F3583+1),(c:lcd_gotoxy@row_offsets+1)
	movff	(lcd_gotoxy@F3583+2),(c:lcd_gotoxy@row_offsets+2)
	movff	(lcd_gotoxy@F3583+3),(c:lcd_gotoxy@row_offsets+3)
	line	146
	
l4142:
;lcd44780.c: 146: if(LCD_lines == 1) {
	movlb	0	; () banked
		decf	((_LCD_lines))&0ffh,w
	btfss	status,2
	goto	u3521
	goto	u3520

u3521:
	goto	l4146
u3520:
	line	147
	
l4144:; BSR set to: 0

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
	
l4146:; BSR set to: 0

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
	
l271:
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
;;  n               2   10[COMRAM] unsigned int 
;;  base            1   12[COMRAM] unsigned char 
;;  pad             1   13[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;  buf            32   16[COMRAM] unsigned char [32]
;;  i               1   52[COMRAM] char 
;;  di              1   51[COMRAM] unsigned char 
;;  padchar         1   50[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:        37       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:        43       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_buffer_putch
;; This function is called by:
;;		_print_reading
;;		_format_xint32
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	file	"../../../lib/format.c"
	line	15
global __ptext41
__ptext41:
psect	text41
	file	"../../../lib/format.c"
	line	15
	global	__size_of_format_number
	__size_of_format_number	equ	__end_of_format_number-_format_number
	
_format_number:
;incstack = 0
	opt	stack 26
	line	18
	
l4156:
;format.c: 16: char buf[8 * sizeof(long)];
;format.c: 17: uint8_t di;
;format.c: 18: int8_t i = 0;
	clrf	((c:format_number@i)),c
	line	19
	
l4158:
;format.c: 19: char padchar = ' ';
	movlw	low(020h)
	movwf	((c:format_number@padchar)),c
	line	21
	
l4160:
;format.c: 21: if(pad < 0) {
	btfsc	((c:format_number@pad)),c,7
	goto	u3540
	goto	u3541

u3541:
	goto	l4166
u3540:
	line	22
	
l4162:
;format.c: 22: pad = -pad;
	negf	((c:format_number@pad)),c
	line	23
	
l4164:
;format.c: 23: padchar = '0';
	movlw	low(030h)
	movwf	((c:format_number@padchar)),c
	line	35
	
l4166:
;format.c: 35: di = n % base;
	movff	(c:format_number@n),(c:___lwmod@dividend)
	movff	(c:format_number@n+1),(c:___lwmod@dividend+1)
	movff	(c:format_number@base),(c:___lwmod@divisor)
	clrf	((c:___lwmod@divisor+1)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	movwf	((c:format_number@di)),c
	line	36
	
l4168:
;format.c: 36: buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
		movlw	0Ah-1
	cpfsgt	((c:format_number@di)),c
	goto	u3551
	goto	u3550

u3551:
	goto	l4172
u3550:
	
l4170:
	movlw	low(037h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$199)),c
	clrf	1+((c:_format_number$199)),c
	movlw	high(037h)
	addwfc	1+((c:_format_number$199)),c
	goto	l4174
	
l4172:
	movlw	low(030h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$199)),c
	clrf	1+((c:_format_number$199)),c
	movlw	high(030h)
	addwfc	1+((c:_format_number$199)),c
	
l4174:
	movf	((c:format_number@i)),c,w
	addlw	low(format_number@buf)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_format_number$199),indf2

	
l4176:
	incf	((c:format_number@i)),c
	line	38
	
l4178:
;format.c: 38: n /= base;
	movff	(c:format_number@n),(c:___lwdiv@dividend)
	movff	(c:format_number@n+1),(c:___lwdiv@dividend+1)
	movff	(c:format_number@base),(c:___lwdiv@divisor)
	clrf	((c:___lwdiv@divisor+1)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:format_number@n)
	movff	1+?___lwdiv,(c:format_number@n+1)
	line	39
	
l4180:
;format.c: 39: } while(n > 0);
	movf	((c:format_number@n)),c,w
iorwf	((c:format_number@n+1)),c,w
	btfss	status,2
	goto	u3561
	goto	u3560

u3561:
	goto	l4166
u3560:
	goto	l4184
	line	41
	
l4182:
	movf	((c:format_number@padchar)),c,w
	
	call	_buffer_putch
	
l4184:
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
	goto	u3571
	goto	u3570

u3571:
	goto	l4182
u3570:
	line	43
	
l4186:
;format.c: 43: for(; i > 0; i--) {
		movf	((c:format_number@i)),c,w
	xorlw	80h
	addlw	-(80h^01h)
	btfsc	status,0
	goto	u3581
	goto	u3580

u3581:
	goto	l4190
u3580:
	goto	l223
	line	44
	
l4190:
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
	
l4192:; BSR set to: 1

	decf	((c:format_number@i)),c
	goto	l4186
	line	47
	
l223:
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
;;  dividend        2    3[COMRAM] unsigned int 
;;  divisor         2    5[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         5       0       0       0
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
psect	text42,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	8
global __ptext42
__ptext42:
psect	text42
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 26
	line	13
	
l4082:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u3411
	goto	u3410

u3411:
	goto	l1129
u3410:
	line	14
	
l4084:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l4088
	line	16
	
l4086:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	line	15
	
l4088:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l4086
u3420:
	line	20
	
l4090:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u3431
	goto	u3430

u3431:
	goto	l4094
u3430:
	line	21
	
l4092:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	line	22
	
l4094:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l4096:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l4090
	line	24
	
l1129:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1136:
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
;;  dividend        2    3[COMRAM] unsigned int 
;;  divisor         2    5[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    8[COMRAM] unsigned int 
;;  counter         1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         7       0       0       0
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
psect	text43,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	8
global __ptext43
__ptext43:
psect	text43
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 26
	line	14
	
l4060:
	clrf	((c:___lwdiv@quotient)),c
	clrf	((c:___lwdiv@quotient+1)),c
	line	15
	
l4062:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u3381
	goto	u3380

u3381:
	goto	l1119
u3380:
	line	16
	
l4064:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l4068
	line	18
	
l4066:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	line	17
	
l4068:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l4066
u3390:
	line	22
	
l4070:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l4072:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u3401
	goto	u3400

u3401:
	goto	l4078
u3400:
	line	24
	
l4074:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l4076:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	line	27
	
l4078:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l4080:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l4070
	line	29
	
l1119:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1126:
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
;;		 -> STR_27(6), 
;; Auto vars:     Size  Location     Type
;;  x               1    6[COMRAM] PTR const unsigned char 
;;		 -> STR_27(6), 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : F/1
;;		On exit  : F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_buffer_putch
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	file	"../../../lib/buffer.c"
	line	56
global __ptext44
__ptext44:
psect	text44
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
	
l4274:; BSR set to: 1

;buffer.c: 57: while(*x) {
	goto	l4280
	line	58
	
l4276:; BSR set to: 1

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
	
l4278:; BSR set to: 1

;buffer.c: 59: ++x;
	incf	((c:buffer_puts@x)),c
	line	57
	
l4280:; BSR set to: 1

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
	goto	u3671
	goto	u3670
u3671:
	goto	l4276
u3670:
	line	62
	
l355:; BSR set to: 1

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
;;  ch              1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_format_xint32
;;		_format_double
;;		_buffer_puts
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
	line	30
global __ptext45
__ptext45:
psect	text45
	file	"../../../lib/buffer.c"
	line	30
	global	__size_of_buffer_putch
	__size_of_buffer_putch	equ	__end_of_buffer_putch-_buffer_putch
	
_buffer_putch:; BSR set to: 1

;incstack = 0
	opt	stack 26
;buffer_putch@ch stored from wreg
	movwf	((c:buffer_putch@ch)),c
	line	31
	
l4026:
;buffer.c: 31: if(16 - buffer.n <= 0)
	movlw	low(010h)
	movwf	(??_buffer_putch+0+0)&0ffh,c
	movlw	high(010h)
	movwf	1+(??_buffer_putch+0+0)&0ffh,c
	movlb	1	; () banked
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	subwf	(??_buffer_putch+0+0),c
	movlw	0
	subwfb	(??_buffer_putch+0+1),c
	btfsc	(??_buffer_putch+0+1),c,7
	goto	u3350
	movf	(??_buffer_putch+0+1),c,w
	bnz	u3351
	decf	(??_buffer_putch+0+0),c,w
	btfsc	status,0
	goto	u3351
	goto	u3350

u3351:
	goto	l4030
u3350:
	goto	l342
	line	33
	
l4030:; BSR set to: 1

;buffer.c: 33: buffer.x[buffer.n] = ch;
	swapf	(0+(_buffer+010h))&0ffh,w
	andlw	(1<<4)-1
	movwf	(??_buffer_putch+0+0)&0ffh,c
	clrf	(??_buffer_putch+0+0+1)&0ffh,c

	movlw	low(_buffer)
	addwf	(??_buffer_putch+0+0),c,w
	movwf	c:fsr2l
	movlw	high(_buffer)
	addwfc	(??_buffer_putch+0+1),c,w
	movwf	1+c:fsr2l
	movff	(c:buffer_putch@ch),indf2

	line	34
	
l4032:; BSR set to: 1

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
	
l342:; BSR set to: 1

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
;;		On exit  : F/1
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2
	line	10
global __ptext46
__ptext46:
psect	text46
	file	"../../../lib/buffer.c"
	line	10
	global	__size_of_buffer_init
	__size_of_buffer_init	equ	__end_of_buffer_init-_buffer_init
	
_buffer_init:; BSR set to: 1

;incstack = 0
	opt	stack 27
	line	11
	
l4272:
;buffer.c: 11: buffer.p = 0;
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	movlb	1	; () banked
	andwf	(0+(_buffer+010h))&0ffh
	line	12
;buffer.c: 12: buffer.n = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	(0+(_buffer+010h))&0ffh
	line	13
	
l335:; BSR set to: 1

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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       0       0       0
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
psect	text47,class=CODE,space=0,reloc=2
	file	"../../../lib/lcd44780.c"
	line	287
global __ptext47
__ptext47:
psect	text47
	file	"../../../lib/lcd44780.c"
	line	287
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:; BSR set to: 1

;incstack = 0
	opt	stack 26
	line	288
	
l4332:
;lcd44780.c: 288: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	289
	
l4334:
;lcd44780.c: 289: _delay((unsigned long)((2)*(16000000/4000.0)));
	movlw	11
movwf	(??_lcd_clear+0+0)&0ffh,c,f
	movlw	98
u4087:
decfsz	wreg,f
	goto	u4087
	decfsz	(??_lcd_clear+0+0)&0ffh,c,f
	goto	u4087
	nop2

	line	291
	
l298:
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
;;  value           1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
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
psect	text48,class=CODE,space=0,reloc=2
	line	127
global __ptext48
__ptext48:
psect	text48
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
	
l4036:
;lcd44780.c: 128: lcd_send(value, 0);
	movlw	low(0)
	movwf	((c:lcd_send@mode)),c
	movf	((c:lcd_command@value)),c,w
	
	call	_lcd_send
	line	129
	
l265:
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
;;  mode            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         1       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         2       0       0       0
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
psect	text49,class=CODE,space=0,reloc=2
	line	103
global __ptext49
__ptext49:
psect	text49
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
	
l3878:
;lcd44780.c: 104: if(mode) {
	movf	((c:lcd_send@mode)),c,w
	btfsc	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l3882
u3160:
	line	105
	
l3880:
;lcd44780.c: 105: LATB |= 0b0100;
	bsf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	106
;lcd44780.c: 106: } else {
	goto	l3884
	line	107
	
l3882:
;lcd44780.c: 107: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	116
	
l3884:
;lcd44780.c: 108: }
;lcd44780.c: 115: {
;lcd44780.c: 116: lcd_write4bits(value >> 4);
	swapf	((c:lcd_send@value)),c,w
	andlw	(0ffh shr 4) & 0ffh
	
	call	_lcd_write4bits
	line	117
	
l3886:
;lcd44780.c: 117: lcd_write4bits(value);
	movf	((c:lcd_send@value)),c,w
	
	call	_lcd_write4bits
	line	119
	
l262:
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
;;  value           1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         1       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         1       0       0       0
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
psect	text50,class=CODE,space=0,reloc=2
	line	34
global __ptext50
__ptext50:
psect	text50
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
	
l3680:
;lcd44780.c: 39: LATB &= 0b00001111;
	movlw	(0Fh)&0ffh
	andwf	((c:3978)),c	;volatile
	line	40
;lcd44780.c: 40: LATB |= value << 4;
	swapf	((c:lcd_write4bits@value)),c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((c:3978)),c	;volatile
	line	55
	
l3682:
;lcd44780.c: 55: LATB |= 0b1000; _delay((unsigned long)((4)*(16000000/4000000.0))); LATB &= ~0b1000; _delay((unsigned long)((100)*(16000000/4000000.0)));;
	bsf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	movlw	5
u4097:
decfsz	wreg,f
	goto	u4097
	nop

	
l3684:
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	
l3686:
	movlw	133
u4107:
decfsz	wreg,f
	goto	u4107
	nop

	line	60
	
l257:
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
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
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
psect	text51,class=CODE,space=0,reloc=2
	file	"../../../LC-meter.c"
	line	58
global __ptext51
__ptext51:
psect	text51
	file	"../../../LC-meter.c"
	line	58
	global	__size_of_delay10ms
	__size_of_delay10ms	equ	__end_of_delay10ms-_delay10ms
	
_delay10ms:
;incstack = 0
	opt	stack 29
	line	62
	
l444:
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
;;  c               2   58[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   58[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         4       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         4       0       0       0
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
psect	text52,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
global __ptext52
__ptext52:
psect	text52
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
	global	__size_of___lwtofl
	__size_of___lwtofl	equ	__end_of___lwtofl-___lwtofl
	
___lwtofl:
;incstack = 0
	opt	stack 27
	line	30
	
l4380:
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
	
l1141:
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
;;  arg             4    3[COMRAM] unsigned long 
;;  exp             1    7[COMRAM] unsigned char 
;;  sign            1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         6       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:        10       0       0       0
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
psect	text53,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
global __ptext53
__ptext53:
psect	text53
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
	global	__size_of___flpack
	__size_of___flpack	equ	__end_of___flpack-___flpack
	
___flpack:
;incstack = 0
	opt	stack 27
	line	65
	
l3650:
	movf	((c:___flpack@exp)),c,w
	btfsc	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l793
u2730:
	
l3652:
	movf	((c:___flpack@arg)),c,w
iorwf	((c:___flpack@arg+1)),c,w
iorwf	((c:___flpack@arg+2)),c,w
iorwf	((c:___flpack@arg+3)),c,w
	btfss	status,2
	goto	u2741
	goto	u2740

u2741:
	goto	l3656
u2740:
	
l793:
	line	66
	clrf	((c:?___flpack)),c
	clrf	((c:?___flpack+1)),c
	clrf	((c:?___flpack+2)),c
	clrf	((c:?___flpack+3)),c

	goto	l794
	line	68
	
l3654:
	incf	((c:___flpack@exp)),c
	line	69
	bcf	status,0
	rrcf	((c:___flpack@arg+3)),c
	rrcf	((c:___flpack@arg+2)),c
	rrcf	((c:___flpack@arg+1)),c
	rrcf	((c:___flpack@arg)),c
	line	67
	
l3656:
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
	goto	u2751
	goto	u2750

u2751:
	goto	l3654
u2750:
	goto	l798
	line	72
	
l3658:
	incf	((c:___flpack@exp)),c
	line	73
	
l3660:
	movlw	low(01h)
	addwf	((c:___flpack@arg)),c
	movlw	0
	addwfc	((c:___flpack@arg+1)),c
	addwfc	((c:___flpack@arg+2)),c
	addwfc	((c:___flpack@arg+3)),c
	line	74
	
l3662:
	bcf	status,0
	rrcf	((c:___flpack@arg+3)),c
	rrcf	((c:___flpack@arg+2)),c
	rrcf	((c:___flpack@arg+1)),c
	rrcf	((c:___flpack@arg)),c
	line	75
	
l798:
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
	goto	u2761
	goto	u2760

u2761:
	goto	l3658
u2760:
	goto	l3666
	line	77
	
l3664:
	decf	((c:___flpack@exp)),c
	line	78
	bcf	status,0
	rlcf	((c:___flpack@arg)),c
	rlcf	((c:___flpack@arg+1)),c
	rlcf	((c:___flpack@arg+2)),c
	rlcf	((c:___flpack@arg+3)),c
	line	76
	
l3666:
	
	btfsc	((c:___flpack@arg+2)),c,(23)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l805
u2770:
	
l3668:
		movlw	02h-0
	cpfslt	((c:___flpack@exp)),c
	goto	u2781
	goto	u2780

u2781:
	goto	l3664
u2780:
	
l805:
	line	80
	
	btfsc	((c:___flpack@exp)),c,(0)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l806
u2790:
	line	81
	
l3670:
	movlw	0FFh
	andwf	((c:___flpack@arg)),c
	movlw	0FFh
	andwf	((c:___flpack@arg+1)),c
	movlw	07Fh
	andwf	((c:___flpack@arg+2)),c
	movlw	0FFh
	andwf	((c:___flpack@arg+3)),c
	
l806:
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
	
l3672:
	movf	((c:___flpack@sign)),c,w
	btfsc	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l3676
u2800:
	line	85
	
l3674:
	bsf	(0+(31/8)+(c:___flpack@arg)),c,(31)&7
	line	86
	
l3676:
	movff	(c:___flpack@arg),(c:?___flpack)
	movff	(c:___flpack@arg+1),(c:?___flpack+1)
	movff	(c:___flpack@arg+2),(c:?___flpack+2)
	movff	(c:___flpack@arg+3),(c:?___flpack+3)
	line	87
	
l794:
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
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK4
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         3       0       0       0
;;Total ram usage:        3 bytes
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
	opt	stack 23
	movff	fsr2l+0,??_global_int+1
	movff	fsr2h+0,??_global_int+2
	line	85
	
i2l3534:
;LC-meter.c: 85: if(PIR1 & 0x02) {
	
	btfss	((c:3998)),c,(1)&7	;volatile
	goto	i2u258_41
	goto	i2u258_40
i2u258_41:
	goto	i2l3548
i2u258_40:
	line	86
	
i2l3536:
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
	goto	i2u259_41
	goto	i2u259_40

i2u259_41:
	goto	i2l3546
i2u259_40:
	line	88
	
i2l3538:; BSR set to: 0

;LC-meter.c: 88: bres -= ((unsigned long)((double)((16000000) / 4) / 1000));
	movlw	low(0FA0h)
	subwf	((_bres))&0ffh	;volatile
	movlw	high(0FA0h)
	subwfb	((_bres+1))&0ffh	;volatile
	line	89
	
i2l3540:; BSR set to: 0

;LC-meter.c: 89: msecpart++;
	infsnz	((_msecpart))&0ffh	;volatile
	incf	((_msecpart+1))&0ffh	;volatile
	line	90
	
i2l3542:; BSR set to: 0

;LC-meter.c: 90: LATC &= ~0b00000100; LATC |= (!!(msecpart >= 833)) << 2;;
	bcf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
		movlw	65
	subwf	 ((_msecpart))&0ffh,w	;volatile
	movlw	3
	subwfb	((_msecpart+1))&0ffh,w	;volatile
	btfsc	status,0
	goto	i2u260_41
	goto	i2u260_40

i2u260_41:
	clrf	(??_global_int+0+0)&0ffh,c
	incf	(??_global_int+0+0)&0ffh,c
	goto	i2u261_48
i2u260_40:
	clrf	(??_global_int+0+0)&0ffh,c
i2u261_48:
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
	goto	i2u262_41
	goto	i2u262_40

i2u262_41:
	goto	i2l3546
i2u262_40:
	line	94
	
i2l3544:; BSR set to: 0

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
	
i2l3546:; BSR set to: 0

;LC-meter.c: 96: }
;LC-meter.c: 97: }
;LC-meter.c: 99: PIR1 &= ~0b10;
	bcf	(0+(1/8)+(c:3998)),c,(1)&7	;volatile
	line	102
	
i2l3548:
;LC-meter.c: 100: }
;LC-meter.c: 102: if(RCIF) { rxfifo[rxiptr] = RCREG; ser_tmp = (rxiptr + 1) & ((uint8_t)16 - 1); if(ser_tmp != rxoptr) rxiptr = ser_tmp; }; if(TXIF && TXIE) { TXREG = txfifo[txoptr]; ++txoptr; txoptr &= ((uint8_t)16 - 1); if(txoptr == txiptr) { TXIE = 0; }; TXIF = 0; 
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u263_41
	goto	i2u263_40
i2u263_41:
	goto	i2l460
i2u263_40:
	
i2l3550:
	movlw	low(_rxfifo)
	movlb	0	; () banked
	addwf	((_rxiptr))&0ffh,w	;volatile
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_rxfifo)
	addwfc	1+c:fsr2l
	movff	(c:4014),indf2	;volatile

	
i2l3552:; BSR set to: 0

	incf	((_rxiptr))&0ffh,w	;volatile
	andlw	low(0Fh)
	movwf	((_ser_tmp))&0ffh
	
i2l3554:; BSR set to: 0

	movf	((_rxoptr))&0ffh,w	;volatile
xorwf	((_ser_tmp))&0ffh,w
	btfsc	status,2
	goto	i2u264_41
	goto	i2u264_40

i2u264_41:
	goto	i2l460
i2u264_40:
	
i2l3556:; BSR set to: 0

	movff	(_ser_tmp),(_rxiptr)	;volatile
	
i2l460:
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	i2u265_41
	goto	i2u265_40
i2u265_41:
	goto	i2l464
i2u265_40:
	
i2l3558:
	btfss	c:(31980/8),(31980)&7	;volatile
	goto	i2u266_41
	goto	i2u266_40
i2u266_41:
	goto	i2l464
i2u266_40:
	
i2l3560:
	movf	((c:_txoptr)),c,w
	addlw	low(_txfifo)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:4013)),c	;volatile
	
i2l3562:
	incf	((c:_txoptr)),c	;volatile
	
i2l3564:
	movlw	(0Fh)&0ffh
	andwf	((c:_txoptr)),c	;volatile
	
i2l3566:
	movf	((c:_txiptr)),c,w	;volatile
xorwf	((c:_txoptr)),c,w	;volatile
	btfss	status,2
	goto	i2u267_41
	goto	i2u267_40

i2u267_41:
	goto	i2l463
i2u267_40:
	
i2l3568:
	bcf	c:(31980/8),(31980)&7	;volatile
	
i2l463:
	bcf	c:(31988/8),(31988)&7	;volatile
	line	107
	
i2l464:
	movff	??_global_int+2,fsr2h+0
	movff	??_global_int+1,fsr2l+0
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

opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (PRO mode) build 201711160504"

opt pagewidth 120

	opt pm

	processor	18F252
opt include "/opt/microchip/xc8/v1.45/include/18f252.cgen.inc"
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
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTA equ 0F80h ;# 
# 197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTB equ 0F81h ;# 
# 322 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PORTC equ 0F82h ;# 
# 489 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATA equ 0F89h ;# 
# 589 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATB equ 0F8Ah ;# 
# 701 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LATC equ 0F8Bh ;# 
# 813 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISA equ 0F92h ;# 
# 818 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRA equ 0F92h ;# 
# 1011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISB equ 0F93h ;# 
# 1016 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRB equ 0F93h ;# 
# 1251 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TRISC equ 0F94h ;# 
# 1256 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
DDRC equ 0F94h ;# 
# 1491 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE1 equ 0F9Dh ;# 
# 1562 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR1 equ 0F9Eh ;# 
# 1633 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR1 equ 0F9Fh ;# 
# 1704 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIE2 equ 0FA0h ;# 
# 1748 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PIR2 equ 0FA1h ;# 
# 1792 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
IPR2 equ 0FA2h ;# 
# 1836 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON1 equ 0FA6h ;# 
# 1902 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EECON2 equ 0FA7h ;# 
# 1909 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEDATA equ 0FA8h ;# 
# 1916 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
EEADR equ 0FA9h ;# 
# 1923 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA equ 0FABh ;# 
# 1928 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCSTA1 equ 0FABh ;# 
# 2147 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA equ 0FACh ;# 
# 2152 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXSTA1 equ 0FACh ;# 
# 2415 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG equ 0FADh ;# 
# 2420 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TXREG1 equ 0FADh ;# 
# 2427 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG equ 0FAEh ;# 
# 2432 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCREG1 equ 0FAEh ;# 
# 2439 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG equ 0FAFh ;# 
# 2444 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SPBRG1 equ 0FAFh ;# 
# 2451 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T3CON equ 0FB1h ;# 
# 2572 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3 equ 0FB2h ;# 
# 2579 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3L equ 0FB2h ;# 
# 2586 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR3H equ 0FB3h ;# 
# 2593 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP2CON equ 0FBAh ;# 
# 2681 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2 equ 0FBBh ;# 
# 2688 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2L equ 0FBBh ;# 
# 2695 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR2H equ 0FBCh ;# 
# 2702 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCP1CON equ 0FBDh ;# 
# 2781 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1 equ 0FBEh ;# 
# 2788 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1L equ 0FBEh ;# 
# 2795 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
CCPR1H equ 0FBFh ;# 
# 2802 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON1 equ 0FC1h ;# 
# 2870 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADCON0 equ 0FC2h ;# 
# 3011 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRES equ 0FC3h ;# 
# 3018 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESL equ 0FC3h ;# 
# 3025 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
ADRESH equ 0FC4h ;# 
# 3032 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON2 equ 0FC5h ;# 
# 3094 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPCON1 equ 0FC6h ;# 
# 3164 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPSTAT equ 0FC7h ;# 
# 3421 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPADD equ 0FC8h ;# 
# 3428 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
SSPBUF equ 0FC9h ;# 
# 3435 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T2CON equ 0FCAh ;# 
# 3506 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PR2 equ 0FCBh ;# 
# 3511 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
MEMCON equ 0FCBh ;# 
# 3616 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR2 equ 0FCCh ;# 
# 3623 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T1CON equ 0FCDh ;# 
# 3730 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1 equ 0FCEh ;# 
# 3737 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1L equ 0FCEh ;# 
# 3744 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR1H equ 0FCFh ;# 
# 3751 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
RCON equ 0FD0h ;# 
# 3894 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WDTCON equ 0FD1h ;# 
# 3922 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
LVDCON equ 0FD2h ;# 
# 3980 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
OSCCON equ 0FD3h ;# 
# 4000 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
T0CON equ 0FD5h ;# 
# 4070 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0 equ 0FD6h ;# 
# 4077 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0L equ 0FD6h ;# 
# 4084 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TMR0H equ 0FD7h ;# 
# 4091 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STATUS equ 0FD8h ;# 
# 4162 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2 equ 0FD9h ;# 
# 4169 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2L equ 0FD9h ;# 
# 4176 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR2H equ 0FDAh ;# 
# 4183 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW2 equ 0FDBh ;# 
# 4190 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC2 equ 0FDCh ;# 
# 4197 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC2 equ 0FDDh ;# 
# 4204 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC2 equ 0FDEh ;# 
# 4211 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF2 equ 0FDFh ;# 
# 4218 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
BSR equ 0FE0h ;# 
# 4225 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1 equ 0FE1h ;# 
# 4232 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1L equ 0FE1h ;# 
# 4239 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR1H equ 0FE2h ;# 
# 4246 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW1 equ 0FE3h ;# 
# 4253 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC1 equ 0FE4h ;# 
# 4260 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC1 equ 0FE5h ;# 
# 4267 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC1 equ 0FE6h ;# 
# 4274 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF1 equ 0FE7h ;# 
# 4281 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
WREG equ 0FE8h ;# 
# 4293 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0 equ 0FE9h ;# 
# 4300 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0L equ 0FE9h ;# 
# 4307 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
FSR0H equ 0FEAh ;# 
# 4314 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PLUSW0 equ 0FEBh ;# 
# 4321 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PREINC0 equ 0FECh ;# 
# 4328 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTDEC0 equ 0FEDh ;# 
# 4335 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
POSTINC0 equ 0FEEh ;# 
# 4342 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INDF0 equ 0FEFh ;# 
# 4349 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON3 equ 0FF0h ;# 
# 4441 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON2 equ 0FF1h ;# 
# 4518 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON equ 0FF2h ;# 
# 4523 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
INTCON1 equ 0FF2h ;# 
# 4750 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PROD equ 0FF3h ;# 
# 4757 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODL equ 0FF3h ;# 
# 4764 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PRODH equ 0FF4h ;# 
# 4771 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TABLAT equ 0FF5h ;# 
# 4780 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTR equ 0FF6h ;# 
# 4787 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRL equ 0FF6h ;# 
# 4794 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRH equ 0FF7h ;# 
# 4801 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TBLPTRU equ 0FF8h ;# 
# 4810 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLAT equ 0FF9h ;# 
# 4817 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PC equ 0FF9h ;# 
# 4824 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCL equ 0FF9h ;# 
# 4831 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATH equ 0FFAh ;# 
# 4838 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
PCLATU equ 0FFBh ;# 
# 4845 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
STKPTR equ 0FFCh ;# 
# 4951 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOS equ 0FFDh ;# 
# 4958 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSL equ 0FFDh ;# 
# 4965 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
TOSH equ 0FFEh ;# 
# 4972 "/opt/microchip/xc8/v1.45/include/pic18f252.h"
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
	FNCALL	_measure_inductance,___ftdiv
	FNCALL	_measure_inductance,___ftge
	FNCALL	_measure_inductance,___ftmul
	FNCALL	_measure_inductance,___ftsub
	FNCALL	_measure_inductance,___fttol
	FNCALL	_measure_inductance,___lwtoft
	FNCALL	_measure_inductance,_lcd_gotoxy
	FNCALL	_measure_inductance,_measure_freq
	FNCALL	_measure_inductance,_print_reading
	FNCALL	_measure_inductance,_print_unit
	FNCALL	_measure_inductance,_put_str
	FNCALL	_measure_capacitance,___ftdiv
	FNCALL	_measure_capacitance,___ftge
	FNCALL	_measure_capacitance,___ftmul
	FNCALL	_measure_capacitance,___ftsub
	FNCALL	_measure_capacitance,___fttol
	FNCALL	_measure_capacitance,___lwtoft
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
	FNCALL	_lcd_puts,_lcd_putch
	FNCALL	_lcd_begin,_lcd_command
	FNCALL	_lcd_begin,_lcd_write4bits
	FNCALL	_format_double,___awtoft
	FNCALL	_format_double,___ftdiv
	FNCALL	_format_double,___ftge
	FNCALL	_format_double,___ftmul
	FNCALL	_format_double,___ftsub
	FNCALL	_format_double,___fttol
	FNCALL	_format_double,_buffer_putch
	FNCALL	_format_double,_floor
	FNCALL	_format_double,_log10
	FNCALL	_format_double,_pow
	FNCALL	_pow,___ftge
	FNCALL	_pow,___ftmul
	FNCALL	_pow,___ftneg
	FNCALL	_pow,___fttol
	FNCALL	_pow,___lltoft
	FNCALL	_pow,_exp
	FNCALL	_pow,_log
	FNCALL	_exp,___awtoft
	FNCALL	_exp,___ftdiv
	FNCALL	_exp,___ftge
	FNCALL	_exp,___ftmul
	FNCALL	_exp,___ftneg
	FNCALL	_exp,___ftsub
	FNCALL	_exp,___fttol
	FNCALL	_exp,_eval_poly
	FNCALL	_exp,_floor
	FNCALL	_exp,_ldexp
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___altoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftdiv,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	_log10,___ftmul
	FNCALL	_log10,_log
	FNCALL	_log,___awtoft
	FNCALL	_log,___ftadd
	FNCALL	_log,___ftmul
	FNCALL	_log,_eval_poly
	FNCALL	_log,_frexp
	FNCALL	_eval_poly,___ftadd
	FNCALL	_eval_poly,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_calibrate,___lwtoft
	FNCALL	_calibrate,_delay10ms
	FNCALL	_calibrate,_lcd_clear
	FNCALL	_calibrate,_lcd_gotoxy
	FNCALL	_calibrate,_lcd_putch
	FNCALL	_calibrate,_measure_freq
	FNCALL	_calibrate,_put_str
	FNCALL	_put_str,_output_putch
	FNCALL	_output_putch,_lcd_putch
	FNCALL	_lcd_putch,_lcd_send
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
	FNCALL	___lwtoft,___ftpack
	FNROOT	_main
	FNCALL	_isr,i2___lwdiv
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_mode
	global	lcd_gotoxy@F2308
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"LC-meter.c"
	line	54

;initializer for _mode
	db	low(0FFh)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"lib/lcd44780.c"
	line	135

;initializer for lcd_gotoxy@F2308
	db	low(0)
	db	low(040h)
	db	low(014h)
	db	low(054h)
	global	exp@coeff
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"/opt/microchip/xc8/v1.45/sources/common/exp.c"
	line	17
exp@coeff:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(0.69314718056000002))
	db	high(float24(0.69314718056000002))
	db	low highword(float24(0.69314718056000002))
	db	low(float24(0.24022650695000000))
	db	high(float24(0.24022650695000000))
	db	low highword(float24(0.24022650695000000))
	db	low(float24(0.055504108944999998))
	db	high(float24(0.055504108944999998))
	db	low highword(float24(0.055504108944999998))
	db	low(float24(0.0096181261778999997))
	db	high(float24(0.0096181261778999997))
	db	low highword(float24(0.0096181261778999997))
	db	low(float24(0.0013333710529000000))
	db	high(float24(0.0013333710529000000))
	db	low highword(float24(0.0013333710529000000))
	db	low(float24(0.00015399104432000000))
	db	high(float24(0.00015399104432000000))
	db	low highword(float24(0.00015399104432000000))
	db	low(float24(1.5327675256999998e-05))
	db	high(float24(1.5327675256999998e-05))
	db	low highword(float24(1.5327675256999998e-05))
	db	low(float24(1.2485143336000000e-06))
	db	high(float24(1.2485143336000000e-06))
	db	low highword(float24(1.2485143336000000e-06))
	db	low(float24(1.3908092220999999e-07))
	db	high(float24(1.3908092220999999e-07))
	db	low highword(float24(1.3908092220999999e-07))
	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	smallconst
	file	"/opt/microchip/xc8/v1.45/sources/common/log.c"
	line	9
log@coeff:
	db	low(float24(0.0000000000000000))
	db	high(float24(0.0000000000000000))
	db	low highword(float24(0.0000000000000000))
	db	low(float24(0.99999642389999999))
	db	high(float24(0.99999642389999999))
	db	low highword(float24(0.99999642389999999))
	db	low(float24(-0.49987412380000001))
	db	high(float24(-0.49987412380000001))
	db	low highword(float24(-0.49987412380000001))
	db	low(float24(0.33179902579999998))
	db	high(float24(0.33179902579999998))
	db	low highword(float24(0.33179902579999998))
	db	low(float24(-0.24073380840000000))
	db	high(float24(-0.24073380840000000))
	db	low highword(float24(-0.24073380840000000))
	db	low(float24(0.16765407110000000))
	db	high(float24(0.16765407110000000))
	db	low highword(float24(0.16765407110000000))
	db	low(float24(-0.095329389700000003))
	db	high(float24(-0.095329389700000003))
	db	low highword(float24(-0.095329389700000003))
	db	low(float24(0.036088493700000002))
	db	high(float24(0.036088493700000002))
	db	low highword(float24(0.036088493700000002))
	db	low(float24(-0.0064535442000000004))
	db	high(float24(-0.0064535442000000004))
	db	low highword(float24(-0.0064535442000000004))
	global __end_oflog@coeff
__end_oflog@coeff:
	global	exp@coeff
	global	log@coeff
	global	_F3
	global	_LCD_ctrl
	global	_LCD_function
	global	_F1
	global	_buffer
	global	_timer1of
	global	_msecs
	global	_seconds
	global	_F2
	global	_blink
	global	_led_cycle
	global	_msecpart
	global	_LCD_lines
	global	_LCD_mode
	global	_bres
psect	nvBANK0,class=BANK0,space=1,noexec,lowdata
global __pnvBANK0
__pnvBANK0:
	global	_bres
_bres:
       ds      4
	global	_CCal
	global	_CCal
_CCal:
       ds      3
	global	_led_interval
	global	_led_interval
_led_interval:
       ds      2
	global	_LATB
_LATB	set	0xF8A
	global	_PORTC
_PORTC	set	0xF82
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISA
_TRISA	set	0xF92
	global	_LATC
_LATC	set	0xF8B
	global	_PIE1
_PIE1	set	0xF9D
	global	_PIR1
_PIR1	set	0xF9E
	global	_TMR2
_TMR2	set	0xFCC
	global	_T2CON
_T2CON	set	0xFCA
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_TMR0
_TMR0	set	0xFD6
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_T0CON
_T0CON	set	0xFD5
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_INTCON
_INTCON	set	0xFF2
	global	_INTCON2
_INTCON2	set	0xFF1
psect	smallconst
	
STR_7:; BSR set to: 0

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
	
STR_10:; BSR set to: 0

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
	
STR_6:; BSR set to: 0

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
	
STR_9:; BSR set to: 0

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
	
STR_1:; BSR set to: 0

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
	
STR_2:; BSR set to: 0

	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_8:; BSR set to: 0

	db	70	;'F'
	db	114	;'r'
	db	101	;'e'
	db	113	;'q'
	db	61	;'='
	db	0
	
STR_5:; BSR set to: 0

	db	82	;'R'
	db	67	;'C'
	db	52	;'4'
	db	61	;'='
	db	0
	
STR_20:; BSR set to: 0

	db	45
	db	42
	db	45
	db	0
	
STR_15:; BSR set to: 0

	db	109	;'m'
	db	70	;'F'
	db	0
	
STR_17:; BSR set to: 0

	db	110	;'n'
	db	70	;'F'
	db	0
	
STR_18:; BSR set to: 0

	db	112	;'p'
	db	70	;'F'
	db	0
	
STR_16:; BSR set to: 0

	db	117	;'u'
	db	70	;'F'
	db	0
	
STR_12:; BSR set to: 0

	db	109	;'m'
	db	72	;'H'
	db	0
	
STR_14:; BSR set to: 0

	db	110	;'n'
	db	72	;'H'
	db	0
	
STR_13:; BSR set to: 0

	db	117	;'u'
	db	72	;'H'
	db	0
STR_11	equ	STR_12+1
STR_3	equ	STR_2+0
STR_4	equ	STR_2+1
STR_19	equ	STR_2+1
STR_21	equ	STR_2+3
; #config settings
global __CFG_OSC$HSPLL
__CFG_OSC$HSPLL equ 0x0
global __CFG_OSCS$OFF
__CFG_OSCS$OFF equ 0x0
global __CFG_PWRT$ON
__CFG_PWRT$ON equ 0x0
global __CFG_BOR$ON
__CFG_BOR$ON equ 0x0
global __CFG_BORV$27
__CFG_BORV$27 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_CCP2MUX$ON
__CFG_CCP2MUX$ON equ 0x0
global __CFG_STVR$OFF
__CFG_STVR$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
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
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
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
	file	"bin/xc8-18f252/LC-meter-debug.as"
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
	global	_F3
_F3:
       ds      3
_LCD_ctrl:
       ds      1
_LCD_function:
       ds      1
	global	_F1
_F1:
       ds      3
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"LC-meter.c"
	line	54
_mode:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
	global	_buffer
_buffer:
       ds      17
	global	_timer1of
	global	_timer1of
_timer1of:
       ds      4
	global	_msecs
_msecs:
       ds      4
	global	_seconds
_seconds:
       ds      4
	global	_F2
_F2:
       ds      3
	global	_blink
	global	_blink
_blink:
       ds      2
	global	_led_cycle
_led_cycle:
       ds      2
	global	_msecpart
_msecpart:
       ds      2
_LCD_lines:
       ds      1
_LCD_mode:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"lib/lcd44780.c"
	line	135
lcd_gotoxy@F2308:
       ds      4
	file	"bin/xc8-18f252/LC-meter-debug.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (4 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,4
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (1 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	line	#
; Clear objects allocated to BANK0 (40 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	40
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (8 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	8
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lsmallconst
	movlw	low highword(__Lsmallconst)
	movwf	tblptru
	movlw	high(__Lsmallconst)
	movwf	tblptrh
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	measure_inductance@numerator
measure_inductance@numerator:	; 3 bytes @ 0x0
	global	_exp$1317
_exp$1317:	; 3 bytes @ 0x0
	ds   3
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x3
	global	measure_inductance@denominator
measure_inductance@denominator:	; 3 bytes @ 0x3
	ds   2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x5
	ds   1
	global	?_pow
?_pow:	; 3 bytes @ 0x6
	global	pow@x
pow@x:	; 3 bytes @ 0x6
	global	_measure_inductance$1305
_measure_inductance$1305:	; 3 bytes @ 0x6
	ds   3
	global	pow@y
pow@y:	; 3 bytes @ 0x9
	global	_measure_inductance$1309
_measure_inductance$1309:	; 3 bytes @ 0x9
	ds   3
	global	_measure_inductance$1310
_measure_inductance$1310:	; 3 bytes @ 0xC
	global	_pow$1315
_pow$1315:	; 3 bytes @ 0xC
	ds   3
	global	_measure_inductance$1311
_measure_inductance$1311:	; 3 bytes @ 0xF
	global	_pow$1316
_pow$1316:	; 3 bytes @ 0xF
	ds   3
	global	measure_inductance@unit
measure_inductance@unit:	; 1 bytes @ 0x12
	global	pow@sign
pow@sign:	; 1 bytes @ 0x12
	ds   1
	global	_measure_inductance$1306
_measure_inductance$1306:	; 3 bytes @ 0x13
	global	pow@yi
pow@yi:	; 4 bytes @ 0x13
	ds   3
	global	_measure_inductance$1307
_measure_inductance$1307:	; 3 bytes @ 0x16
	ds   1
?_format_double:	; 1 bytes @ 0x17
	global	format_double@num
format_double@num:	; 3 bytes @ 0x17
	ds   2
	global	_measure_inductance$1308
_measure_inductance$1308:	; 3 bytes @ 0x19
	ds   1
	global	_format_double$1300
_format_double$1300:	; 3 bytes @ 0x1A
	ds   2
	global	measure_inductance@var
measure_inductance@var:	; 2 bytes @ 0x1C
	ds   1
	global	_format_double$1301
_format_double$1301:	; 3 bytes @ 0x1D
	ds   1
	global	measure_inductance@Lin
measure_inductance@Lin:	; 3 bytes @ 0x1E
	ds   2
	global	format_double@weight
format_double@weight:	; 3 bytes @ 0x20
	ds   3
	global	format_double@digit
format_double@digit:	; 2 bytes @ 0x23
	ds   2
	global	format_double@m
format_double@m:	; 2 bytes @ 0x25
	ds   2
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_timer0_init:	; 1 bytes @ 0x0
?_timer2_init:	; 1 bytes @ 0x0
?_lcd_init:	; 1 bytes @ 0x0
?_calibrate:	; 1 bytes @ 0x0
?_lcd_clear:	; 1 bytes @ 0x0
?_measure_capacitance:	; 1 bytes @ 0x0
?_measure_inductance:	; 1 bytes @ 0x0
?_print_indicator:	; 1 bytes @ 0x0
?_lcd_putch:	; 1 bytes @ 0x0
?_print_buffer:	; 1 bytes @ 0x0
?_print_unit:	; 1 bytes @ 0x0
?_delay10ms:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_buffer_init:	; 1 bytes @ 0x0
?_buffer_putch:	; 1 bytes @ 0x0
?_lcd_write4bits:	; 1 bytes @ 0x0
?_lcd_command:	; 1 bytes @ 0x0
?_output_putch:	; 1 bytes @ 0x0
?_isr:	; 2 bytes @ 0x0
	global	?i2___lwdiv
?i2___lwdiv:	; 2 bytes @ 0x0
delay10ms@period_10ms:	; 1 bytes @ 0x0
print_unit@unit:	; 1 bytes @ 0x0
	global	i2___lwdiv@dividend
i2___lwdiv@dividend:	; 2 bytes @ 0x0
	ds   2
	global	i2___lwdiv@divisor
i2___lwdiv@divisor:	; 2 bytes @ 0x2
	ds   2
??i2___lwdiv:	; 1 bytes @ 0x4
	global	i2___lwdiv@quotient
i2___lwdiv@quotient:	; 2 bytes @ 0x4
	ds   2
	global	i2___lwdiv@counter
i2___lwdiv@counter:	; 1 bytes @ 0x6
	ds   1
??_isr:	; 1 bytes @ 0x7
	ds   1
?___ftge:	; 1 bit 
??_timer0_init:	; 1 bytes @ 0x8
??_timer2_init:	; 1 bytes @ 0x8
??_lcd_init:	; 1 bytes @ 0x8
??_print_buffer:	; 1 bytes @ 0x8
??_delay10ms:	; 1 bytes @ 0x8
??_buffer_init:	; 1 bytes @ 0x8
??_buffer_putch:	; 1 bytes @ 0x8
??_lcd_write4bits:	; 1 bytes @ 0x8
	global	?_timer0_read_ps
?_timer0_read_ps:	; 2 bytes @ 0x8
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x8
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x8
	global	?_frexp
?_frexp:	; 3 bytes @ 0x8
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x8
	global	lcd_write4bits@value
lcd_write4bits@value:	; 1 bytes @ 0x8
	global	lcd_init@fourbitmode
lcd_init@fourbitmode:	; 1 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x8
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x8
	global	frexp@value
frexp@value:	; 3 bytes @ 0x8
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x8
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x8
	ds   1
?_lcd_send:	; 1 bytes @ 0x9
	global	lcd_send@mode
lcd_send@mode:	; 1 bytes @ 0x9
	global	timer2_init@ps
timer2_init@ps:	; 1 bytes @ 0x9
	global	_lcd_init$361
_lcd_init$361:	; 2 bytes @ 0x9
	global	_timer0_init$450
_timer0_init$450:	; 2 bytes @ 0x9
	ds   1
??_lcd_send:	; 1 bytes @ 0xA
??_timer0_read_ps:	; 1 bytes @ 0xA
	global	buffer_putch@ch
buffer_putch@ch:	; 1 bytes @ 0xA
	global	lcd_send@value
lcd_send@value:	; 1 bytes @ 0xA
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0xA
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xA
	ds   1
??_lcd_putch:	; 1 bytes @ 0xB
?_buffer_puts:	; 1 bytes @ 0xB
??_lcd_command:	; 1 bytes @ 0xB
??___ftneg:	; 1 bytes @ 0xB
	global	buffer_puts@x
buffer_puts@x:	; 1 bytes @ 0xB
	global	lcd_command@value
lcd_command@value:	; 1 bytes @ 0xB
	global	lcd_putch@value
lcd_putch@value:	; 1 bytes @ 0xB
	global	timer2_init@ps_mode
timer2_init@ps_mode:	; 1 bytes @ 0xB
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0xB
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0xB
	global	_timer0_init$451
_timer0_init$451:	; 2 bytes @ 0xB
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0xB
	ds   1
?_lcd_begin:	; 1 bytes @ 0xC
?_lcd_gotoxy:	; 1 bytes @ 0xC
?_lcd_puts:	; 1 bytes @ 0xC
??_lcd_clear:	; 1 bytes @ 0xC
??_frexp:	; 1 bytes @ 0xC
??_buffer_puts:	; 1 bytes @ 0xC
??_output_putch:	; 1 bytes @ 0xC
??___lwdiv:	; 1 bytes @ 0xC
??___lwmod:	; 1 bytes @ 0xC
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0xC
	global	lcd_puts@string
lcd_puts@string:	; 1 bytes @ 0xC
	global	lcd_begin@dotsize
lcd_begin@dotsize:	; 1 bytes @ 0xC
	global	timer0_read_ps@prev
timer0_read_ps@prev:	; 1 bytes @ 0xC
	global	output_putch@c
output_putch@c:	; 1 bytes @ 0xC
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0xC
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xC
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xC
	ds   1
??_lcd_begin:	; 1 bytes @ 0xD
??_lcd_gotoxy:	; 1 bytes @ 0xD
??_lcd_puts:	; 1 bytes @ 0xD
?_put_str:	; 1 bytes @ 0xD
??___ftpack:	; 1 bytes @ 0xD
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0xD
	global	put_str@s
put_str@s:	; 1 bytes @ 0xD
	global	_timer0_init$452
_timer0_init$452:	; 2 bytes @ 0xD
	global	timer0_read_ps@count
timer0_read_ps@count:	; 2 bytes @ 0xD
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xD
	ds   1
??_put_str:	; 1 bytes @ 0xE
??___ftge:	; 1 bytes @ 0xE
	global	lcd_puts@i
lcd_puts@i:	; 1 bytes @ 0xE
	global	lcd_begin@lines
lcd_begin@lines:	; 1 bytes @ 0xE
	global	lcd_gotoxy@row_offsets
lcd_gotoxy@row_offsets:	; 4 bytes @ 0xE
	ds   1
?_format_number:	; 1 bytes @ 0xF
	global	format_number@n
format_number@n:	; 2 bytes @ 0xF
	global	_timer0_init$453
_timer0_init$453:	; 2 bytes @ 0xF
	global	put_str@i
put_str@i:	; 2 bytes @ 0xF
	ds   1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x10
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x10
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x10
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x10
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x10
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x10
	ds   1
	global	format_number@base
format_number@base:	; 1 bytes @ 0x11
	global	timer0_init@prescaler
timer0_init@prescaler:	; 1 bytes @ 0x11
	ds   1
??_print_indicator:	; 1 bytes @ 0x12
??_print_unit:	; 1 bytes @ 0x12
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0x12
	global	timer0_init@ps_mode
timer0_init@ps_mode:	; 1 bytes @ 0x12
	global	print_indicator@indicate
print_indicator@indicate:	; 1 bytes @ 0x12
	ds   1
??_format_number:	; 1 bytes @ 0x13
??___awtoft:	; 1 bytes @ 0x13
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x13
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x13
	ds   1
??___lltoft:	; 1 bytes @ 0x14
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x14
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x14
	ds   1
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0x15
	ds   1
??___ftdiv:	; 1 bytes @ 0x16
	ds   1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x17
	ds   1
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x18
	ds   1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x19
	ds   1
??___ftadd:	; 1 bytes @ 0x1A
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1A
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x1D
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1D
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1E
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1E
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x1F
	ds   1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x20
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x20
	ds   3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x23
	ds   3
??___ftmul:	; 1 bytes @ 0x26
	ds   3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x29
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2A
	ds   3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2D
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x2E
	ds   1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x2F
	global	?_eval_poly
?_eval_poly:	; 3 bytes @ 0x2F
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x2F
	global	eval_poly@x
eval_poly@x:	; 3 bytes @ 0x2F
	ds   3
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x32
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x32
	ds   1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x33
	ds   2
??___ftsub:	; 1 bytes @ 0x35
??_eval_poly:	; 1 bytes @ 0x35
	global	_format_number$293
_format_number$293:	; 2 bytes @ 0x35
	ds   1
	global	eval_poly@res
eval_poly@res:	; 3 bytes @ 0x36
	ds   1
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x37
	ds   1
	global	format_number@di
format_number@di:	; 1 bytes @ 0x38
	ds   1
	global	?_ldexp
?_ldexp:	; 3 bytes @ 0x39
	global	?_log
?_log:	; 3 bytes @ 0x39
	global	format_number@i
format_number@i:	; 1 bytes @ 0x39
	global	ldexp@value
ldexp@value:	; 3 bytes @ 0x39
	global	log@x
log@x:	; 3 bytes @ 0x39
	ds   1
?_print_reading:	; 1 bytes @ 0x3A
	global	?_measure_freq
?_measure_freq:	; 2 bytes @ 0x3A
	global	print_reading@measurement
print_reading@measurement:	; 2 bytes @ 0x3A
	ds   2
??_measure_freq:	; 1 bytes @ 0x3C
??_print_reading:	; 1 bytes @ 0x3C
??_log:	; 1 bytes @ 0x3C
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x3C
	global	log@exponent
log@exponent:	; 2 bytes @ 0x3C
	global	_print_reading$1312
_print_reading$1312:	; 2 bytes @ 0x3C
	ds   1
	global	measure_freq@count
measure_freq@count:	; 2 bytes @ 0x3D
	ds   1
??_ldexp:	; 1 bytes @ 0x3E
	global	?_log10
?_log10:	; 3 bytes @ 0x3E
	global	_print_reading$1313
_print_reading$1313:	; 2 bytes @ 0x3E
	global	log10@x
log10@x:	; 3 bytes @ 0x3E
	ds   1
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x3F
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x3F
	ds   2
??_log10:	; 1 bytes @ 0x41
	global	_log10$1314
_log10$1314:	; 3 bytes @ 0x41
	ds   1
??_calibrate:	; 1 bytes @ 0x42
??___lwtoft:	; 1 bytes @ 0x42
	global	calibrate@i
calibrate@i:	; 1 bytes @ 0x42
	ds   2
	global	?___fttol
?___fttol:	; 4 bytes @ 0x44
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x44
	ds   4
??___fttol:	; 1 bytes @ 0x48
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4D
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x4E
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x52
	ds   1
??_measure_capacitance:	; 1 bytes @ 0x53
??_measure_inductance:	; 1 bytes @ 0x53
	global	?___altoft
?___altoft:	; 3 bytes @ 0x53
	global	_measure_capacitance$1302
_measure_capacitance$1302:	; 3 bytes @ 0x53
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x53
	ds   3
	global	_measure_capacitance$1303
_measure_capacitance$1303:	; 3 bytes @ 0x56
	ds   1
??___altoft:	; 1 bytes @ 0x57
	ds   2
	global	_measure_capacitance$1304
_measure_capacitance$1304:	; 3 bytes @ 0x59
	ds   2
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x5B
	ds   1
	global	measure_capacitance@unit
measure_capacitance@unit:	; 1 bytes @ 0x5C
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x5C
	ds   1
	global	?_floor
?_floor:	; 3 bytes @ 0x5D
	global	measure_capacitance@var
measure_capacitance@var:	; 2 bytes @ 0x5D
	global	floor@x
floor@x:	; 3 bytes @ 0x5D
	ds   2
	global	measure_capacitance@Cin
measure_capacitance@Cin:	; 3 bytes @ 0x5F
	ds   1
??_floor:	; 1 bytes @ 0x60
	global	floor@i
floor@i:	; 3 bytes @ 0x60
	ds   3
	global	floor@expon
floor@expon:	; 2 bytes @ 0x63
	ds   2
	global	?_exp
?_exp:	; 3 bytes @ 0x65
	global	exp@x
exp@x:	; 3 bytes @ 0x65
	ds   3
??_format_double:	; 1 bytes @ 0x68
??_pow:	; 1 bytes @ 0x68
??_exp:	; 1 bytes @ 0x68
??_main:	; 1 bytes @ 0x68
	global	main@new_mode
main@new_mode:	; 1 bytes @ 0x68
	ds   1
;!
;!Data Sizes:
;!    Strings     103
;!    Constant    57
;!    Data        5
;!    BSS         48
;!    Persistent  9
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          126    105     114
;!    BANK0           128     39      92
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           239      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 30
;!		 -> exp@coeff(CODE[30]), log@coeff(CODE[27]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(COMRAM[2]), floor@expon(COMRAM[2]), 
;!
;!    put_str@s	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_10(CODE[13]), STR_9(CODE[10]), STR_7(CODE[15]), STR_6(CODE[12]), 
;!
;!    print_unit@units	PTR const unsigned char [8] size(1) Largest target is 3
;!		 -> STR_18(CODE[3]), STR_17(CODE[3]), STR_16(CODE[3]), STR_15(CODE[3]), 
;!		 -> STR_14(CODE[3]), STR_13(CODE[3]), STR_12(CODE[3]), STR_11(CODE[2]), 
;!
;!    lcd_puts@string	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_21(CODE[4]), STR_20(CODE[4]), STR_19(CODE[6]), STR_5(CODE[5]), 
;!		 -> STR_4(CODE[6]), STR_3(CODE[7]), STR_2(CODE[7]), STR_1(CODE[10]), 
;!
;!    buffer_puts@x	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_8(CODE[6]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _print_indicator->_lcd_gotoxy
;!    _measure_inductance->___fttol
;!    _measure_capacitance->___fttol
;!    _print_unit->_lcd_gotoxy
;!    _print_reading->_format_number
;!    _lcd_puts->_lcd_putch
;!    _lcd_begin->_lcd_command
;!    _pow->_exp
;!    _exp->_floor
;!    _ldexp->_eval_poly
;!    _floor->___altoft
;!    ___fttol->_log10
;!    ___altoft->___fttol
;!    ___ftsub->___ftmul
;!    ___ftdiv->___ftpack
;!    ___lltoft->___ftpack
;!    _log10->_log
;!    _log->_eval_poly
;!    _eval_poly->___ftmul
;!    ___ftmul->___ftadd
;!    ___ftadd->___awtoft
;!    ___awtoft->___ftpack
;!    _calibrate->___lwtoft
;!    _put_str->_output_putch
;!    _output_putch->_lcd_putch
;!    _lcd_putch->_lcd_send
;!    _measure_freq->_format_number
;!    _lcd_gotoxy->_lcd_command
;!    _format_number->___lwdiv
;!    _buffer_puts->_buffer_putch
;!    _lcd_clear->_lcd_command
;!    _lcd_command->_lcd_send
;!    _lcd_send->_lcd_write4bits
;!    ___lwtoft->_measure_freq
;!
;!Critical Paths under _isr in COMRAM
;!
;!    _isr->i2___lwdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_format_double
;!    _format_double->_pow
;!    _pow->_exp
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
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
;! (0) _main                                                 1     1      0  314141
;!                                            104 COMRAM     1     1      0
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
;!                                              8 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _timer0_init                                         11    11      0     273
;!                                              8 COMRAM    11    11      0
;! ---------------------------------------------------------------------------------
;! (1) _print_indicator                                      1     1      0    3251
;!                                             18 COMRAM     1     1      0
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (1) _measure_inductance                                  33    33      0   49303
;!                                              0 BANK0     33    33      0
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;!                           ___lwtoft
;!                         _lcd_gotoxy
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (1) _measure_capacitance                                 15    15      0   48997
;!                                             83 COMRAM    15    15      0
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;!                           ___lwtoft
;!                         _lcd_gotoxy
;!                       _measure_freq
;!                      _print_reading
;!                         _print_unit
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (2) _print_unit                                           3     3      0    2115
;!                                             18 COMRAM     2     2      0
;!                         _lcd_gotoxy
;! ---------------------------------------------------------------------------------
;! (2) _print_reading                                        6     4      2    8826
;!                                             58 COMRAM     6     4      2
;!                            ___lwdiv
;!                            ___lwmod
;!                      _format_number
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (2) _lcd_puts                                             3     2      1    1105
;!                                             12 COMRAM     3     2      1
;!                          _lcd_putch
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             3     3      0      46
;!                                              8 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_begin                                            3     2      1     580
;!                                             12 COMRAM     3     2      1
;!                        _lcd_command
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (1) _format_double                                       16    13      3  194382
;!                                             23 BANK0     16    13      3
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;!                       _buffer_putch
;!                              _floor
;!                              _log10
;!                                _pow
;! ---------------------------------------------------------------------------------
;! (2) _pow                                                 17    11      6  109125
;!                                              6 BANK0     17    11      6
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lltoft
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _exp                                                  9     6      3   58530
;!                                            101 COMRAM     3     0      3
;!                                              0 BANK0      6     6      0
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                          _eval_poly
;!                              _floor
;!                              _ldexp
;!                                _log (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _ldexp                                                7     2      5     539
;!                                             57 COMRAM     7     2      5
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _floor                                                8     5      3   13824
;!                                             93 COMRAM     8     5      3
;!                           ___altoft
;!                            ___ftadd
;!                            ___ftdiv (ARG)
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             15    11      4    1141
;!                                             68 COMRAM    15    11      4
;!                            ___ftdiv (ARG)
;!                              _log10 (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                               9     3      6    2678
;!                                              8 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (5) ___altoft                                            10     6      4    3367
;!                                             83 COMRAM    10     6      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    6794
;!                                             47 COMRAM     6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftneg                                              3     0      3     335
;!                                              8 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    5399
;!                                             16 COMRAM    15     9      6
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___lltoft                                             9     5      4    3265
;!                                             16 COMRAM     9     5      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) _log10                                                6     3      3   42564
;!                                             62 COMRAM     6     3      3
;!                            ___ftmul
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _log                                                  5     2      3   33632
;!                                             57 COMRAM     5     2      3
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (4) _frexp                                                6     2      4     682
;!                                              8 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) _eval_poly                                           10     4      6   14839
;!                                             47 COMRAM    10     4      6
;!                            ___ftadd
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (2) ___ftmul                                             15     9      6    8707
;!                                             32 COMRAM    15     9      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___ftpack (ARG)
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             12     6      6    5338
;!                                             20 COMRAM    12     6      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___awtoft                                             4     1      3    3636
;!                                             16 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _calibrate                                            1     1      0   13599
;!                                             66 COMRAM     1     1      0
;!                           ___lwtoft
;!                          _delay10ms
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                          _lcd_putch
;!                       _measure_freq
;!                            _put_str
;! ---------------------------------------------------------------------------------
;! (2) _put_str                                              4     3      1     856
;!                                             13 COMRAM     4     3      1
;!                       _output_putch
;! ---------------------------------------------------------------------------------
;! (3) _output_putch                                         1     1      0     366
;!                                             12 COMRAM     1     1      0
;!                          _lcd_putch
;! ---------------------------------------------------------------------------------
;! (3) _lcd_putch                                            1     1      0     335
;!                                             11 COMRAM     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (2) _measure_freq                                         5     3      2    6246
;!                                             58 COMRAM     5     3      2
;!                        _buffer_init
;!                        _buffer_puts
;!                      _format_number
;!                         _lcd_gotoxy
;!                       _print_buffer
;!                     _timer0_read_ps
;! ---------------------------------------------------------------------------------
;! (3) _timer0_read_ps                                       7     5      2     167
;!                                              8 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (3) _print_buffer                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _lcd_gotoxy                                           6     5      1    2115
;!                                             12 COMRAM     6     5      1
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _format_number                                       43    39      4    3713
;!                                             15 COMRAM    43    39      4
;!                            ___lwdiv
;!                            ___lwmod
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     732
;!                                              8 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     851
;!                                              8 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) _buffer_puts                                          1     0      1     186
;!                                             11 COMRAM     1     0      1
;!                       _buffer_putch
;! ---------------------------------------------------------------------------------
;! (4) _buffer_putch                                         3     3      0      31
;!                                              8 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (3) _buffer_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_clear                                            1     1      0     335
;!                                             12 COMRAM     1     1      0
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _lcd_command                                          1     1      0     335
;!                                             11 COMRAM     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (4) _lcd_send                                             2     1      1     304
;!                                              9 COMRAM     2     1      1
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (5) _lcd_write4bits                                       1     1      0      31
;!                                              8 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _delay10ms                                            1     1      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             3     0      3    3644
;!                                             63 COMRAM     3     0      3
;!                           ___ftpack
;!                       _measure_freq (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    3073
;!                                              8 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _isr                                                  1     1      0     214
;!                                              7 COMRAM     1     1      0
;!                          i2___lwdiv
;! ---------------------------------------------------------------------------------
;! (8) i2___lwdiv                                            7     3      4     214
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _calibrate
;!     ___lwtoft
;!       ___ftpack
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
;!     _lcd_putch
;!       _lcd_send
;!         _lcd_write4bits
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
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!   _delay10ms
;!   _format_double
;!     ___awtoft
;!       ___ftpack
;!     ___ftdiv
;!       ___ftpack
;!     ___ftge
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftsub
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!     ___fttol
;!       ___ftdiv (ARG)
;!         ___ftpack
;!       _log10 (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _log
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!     _buffer_putch
;!     _floor
;!       ___altoft
;!         ___ftpack
;!         ___fttol (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!           _log10 (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             _log
;!               ___awtoft
;!                 ___ftpack
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftdiv (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftdiv (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!               _frexp
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!       ___ftge (ARG)
;!       ___fttol (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!         _log10 (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _log
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftdiv (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!             _frexp
;!       _frexp (ARG)
;!     _log10
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       _log
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!         _frexp
;!     _pow
;!       ___ftge
;!       ___ftmul
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftneg
;!       ___fttol
;!         ___ftdiv (ARG)
;!           ___ftpack
;!         _log10 (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _log
;!             ___awtoft
;!               ___ftpack
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             _eval_poly
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftdiv (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!             _frexp
;!       ___lltoft
;!         ___ftpack
;!       _exp
;!         ___awtoft
;!           ___ftpack
;!         ___ftdiv
;!           ___ftpack
;!         ___ftge
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftneg
;!         ___ftsub
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!         ___fttol
;!           ___ftdiv (ARG)
;!             ___ftpack
;!           _log10 (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             _log
;!               ___awtoft
;!                 ___ftpack
;!               ___ftadd
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftdiv (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               _eval_poly
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftdiv (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!               _frexp
;!         _eval_poly
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!         _floor
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               _log10 (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftdiv (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 _log
;!                   ___awtoft
;!                     ___ftpack
;!                   ___ftadd
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftmul
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftadd (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       _frexp (ARG)
;!                     ___ftdiv (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   _eval_poly
;!                     ___ftadd
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       _frexp (ARG)
;!                     ___ftmul
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftadd (ARG)
;!                         ___awtoft (ARG)
;!                           ___ftpack
;!                         ___ftpack (ARG)
;!                         _frexp (ARG)
;!                       ___ftdiv (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       ___ftpack (ARG)
;!                       _frexp (ARG)
;!                   _frexp
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!           ___ftge (ARG)
;!           ___fttol (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             _log10 (ARG)
;!               ___ftmul
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftadd (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftdiv (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               _log
;!                 ___awtoft
;!                   ___ftpack
;!                 ___ftadd
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 ___ftmul
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftadd (ARG)
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftdiv (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!                   ___ftpack (ARG)
;!                   _frexp (ARG)
;!                 _eval_poly
;!                   ___ftadd
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                   ___ftmul
;!                     ___awtoft (ARG)
;!                       ___ftpack
;!                     ___ftadd (ARG)
;!                       ___awtoft (ARG)
;!                         ___ftpack
;!                       ___ftpack (ARG)
;!                       _frexp (ARG)
;!                     ___ftdiv (ARG)
;!                       ___ftpack
;!                     ___ftpack (ARG)
;!                     ___ftpack (ARG)
;!                     _frexp (ARG)
;!                 _frexp
;!           _frexp (ARG)
;!         _ldexp
;!           _eval_poly (ARG)
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!         _log (ARG)
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!       _log
;!         ___awtoft
;!           ___ftpack
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _eval_poly
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
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
;!     _lcd_putch
;!       _lcd_send
;!         _lcd_write4bits
;!   _measure_capacitance
;!     ___ftdiv
;!       ___ftpack
;!     ___ftge
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftsub
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!     ___fttol
;!       ___ftdiv (ARG)
;!         ___ftpack
;!       _log10 (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _log
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!     ___lwtoft
;!       ___ftpack
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
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!     _print_unit
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!   _measure_inductance
;!     ___ftdiv
;!       ___ftpack
;!     ___ftge
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___ftpack (ARG)
;!       _frexp (ARG)
;!     ___ftsub
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___ftpack (ARG)
;!         _frexp (ARG)
;!     ___fttol
;!       ___ftdiv (ARG)
;!         ___ftpack
;!       _log10 (ARG)
;!         ___ftmul
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___ftpack (ARG)
;!           _frexp (ARG)
;!         _log
;!           ___awtoft
;!             ___ftpack
;!           ___ftadd
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           ___ftmul
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftadd (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___ftpack (ARG)
;!             _frexp (ARG)
;!           _eval_poly
;!             ___ftadd
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!             ___ftmul
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftadd (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!                 _frexp (ARG)
;!               ___ftdiv (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!               ___ftpack (ARG)
;!               _frexp (ARG)
;!           _frexp
;!     ___lwtoft
;!       ___ftpack
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
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!     _print_unit
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!   _print_indicator
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_puts
;!       _lcd_putch
;!         _lcd_send
;!           _lcd_write4bits
;!   _timer0_init
;!   _timer2_init
;!
;! _isr (ROOT)
;!   i2___lwdiv
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5EE      0       0      16        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK4           100      0       0      11        0.0%
;!BANK4              100      0       0      12        0.0%
;!BITBANK3           100      0       0       9        0.0%
;!BANK3              100      0       0      10        0.0%
;!BITBANK2           100      0       0       7        0.0%
;!BANK2              100      0       0       8        0.0%
;!BITBANK1           100      0       0       5        0.0%
;!BANK1              100      0       0       6        0.0%
;!BITBANK5            EF      0       0      15        0.0%
;!BANK5               EF      0       0      13        0.0%
;!BITBANK0            80      0       0       3        0.0%
;!BANK0               80     27      5C       4       71.9%
;!BITCOMRAM           7E      0       0       0        0.0%
;!COMRAM              7E     69      72       1       90.5%
;!BITSFR_5             0      0       0     200        0.0%
;!SFR_5                0      0       0     200        0.0%
;!BITSFR_4             0      0       0     200        0.0%
;!SFR_4                0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      CE      14        0.0%
;!DATA                 0      0      CE      17        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 117 in file "LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  new_mode        1  104[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;;		_timer0_init
;;		_timer2_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"LC-meter.c"
	line	117
global __ptext0
__ptext0:
psect	text0
	file	"LC-meter.c"
	line	117
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 23
	line	118
	
l4190:
;LC-meter.c: 118: bres = msecpart = msecs = seconds = 0;
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
	clrf	((_bres+2))&0ffh	;volatile
	clrf	((_bres+3))&0ffh	;volatile

	line	119
	
l4192:; BSR set to: 0

;LC-meter.c: 119: mode = -1;
	setf	((c:_mode)),c
	line	121
;LC-meter.c: 121: CCal = 1000;
	movlw	low(float24(1000.0000000000000))
	movwf	((_CCal))&0ffh
	movlw	high(float24(1000.0000000000000))
	movwf	((_CCal+1))&0ffh
	movlw	low highword(float24(1000.0000000000000))
	movwf	((_CCal+2))&0ffh

	line	123
	
l4194:; BSR set to: 0

;LC-meter.c: 123: led_cycle = 0;
	clrf	((_led_cycle))&0ffh	;volatile
	clrf	((_led_cycle+1))&0ffh	;volatile
	line	124
;LC-meter.c: 124: led_interval = 500;
	movlw	high(01F4h)
	movwf	((_led_interval+1))&0ffh	;volatile
	movlw	low(01F4h)
	movwf	((_led_interval))&0ffh	;volatile
	line	134
;LC-meter.c: 134: TRISA = 0b11001111;
	movlw	low(0CFh)
	movwf	((c:3986)),c	;volatile
	line	136
	
l4196:; BSR set to: 0

;LC-meter.c: 136: TRISB &= 0b00001111;
	movlw	(0Fh)&0ffh
	andwf	((c:3987)),c	;volatile
	line	139
	
l4198:; BSR set to: 0

;LC-meter.c: 139: timer0_init(0b1000 | 0x20 | 0x40);
	movlw	(068h)&0ffh
	
	call	_timer0_init
	line	140
	
l4200:
;LC-meter.c: 140: timer2_init(0b100 | 0x80);
	movlw	(084h)&0ffh
	
	call	_timer2_init
	line	147
	
l4202:
;LC-meter.c: 147: INTCON2 &= ~0b10000000;
	bcf	(0+(7/8)+(c:4081)),c,(7)&7	;volatile
	line	155
	
l4204:
;LC-meter.c: 155: TRISC = 0b10110011;
	movlw	low(0B3h)
	movwf	((c:3988)),c	;volatile
	line	159
	
l4206:
;LC-meter.c: 159: PORTCbits.RC3 = 1;
	bsf	((c:3970)),c,3	;volatile
	line	162
	
l4208:
;LC-meter.c: 162: TRISC &= ~(1 << 2);
	bcf	(0+(2/8)+(c:3988)),c,(2)&7	;volatile
	line	163
	
l4210:
;LC-meter.c: 163: LATC &= ~(1 << 2); LATC |= (!!(1)) << 2;;
	bcf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
	
l4212:
	bsf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
	line	165
	
l4214:
;LC-meter.c: 165: timer2_init(0b000 | 0x80);
	movlw	(080h)&0ffh
	
	call	_timer2_init
	line	172
	
l4216:
;LC-meter.c: 172: lcd_init(1);
	movlw	(01h)&0ffh
	
	call	_lcd_init
	line	173
	
l4218:; BSR set to: 0

;LC-meter.c: 173: lcd_begin(2, 1);
	movlw	low(01h)
	movwf	((c:lcd_begin@dotsize)),c
	movlw	(02h)&0ffh
	
	call	_lcd_begin
	line	176
	
l4220:
;LC-meter.c: 176: TRISC |= (1 << 4);
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	177
	
l4222:
;LC-meter.c: 177: TRISC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	179
	
l4224:
;LC-meter.c: 179: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	180
	
l4226:
;LC-meter.c: 180: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	181
	
l4228:
;LC-meter.c: 181: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	182
	
l4230:
;LC-meter.c: 182: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	183
	
l4232:
;LC-meter.c: 183: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	184
	
l4234:
;LC-meter.c: 184: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	185
	
l4236:
;LC-meter.c: 185: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	186
	
l4238:
;LC-meter.c: 186: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	187
	
l4240:
;LC-meter.c: 187: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	197
	
l4242:
;LC-meter.c: 197: INTCON |= 0xc0;
	movlw	(0C0h)&0ffh
	iorwf	((c:4082)),c	;volatile
	line	203
	
l4244:
;LC-meter.c: 203: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	205
	
l4246:
;LC-meter.c: 205: lcd_puts("LC-meter ");
		movlw	low(STR_1)
	movwf	((c:lcd_puts@string)),c

	call	_lcd_puts	;wreg free
	line	206
	
l4248:
;LC-meter.c: 206: format_double( CCal);
	movff	(_CCal),(format_double@num)
	movff	(_CCal+1),(format_double@num+1)
	movff	(_CCal+2),(format_double@num+2)
	call	_format_double	;wreg free
	line	210
	
l4250:
;LC-meter.c: 210: delay10ms(5);
	movlw	(05h)&0ffh
	
	call	_delay10ms
	line	215
	
l4252:
;LC-meter.c: 215: calibrate();
	call	_calibrate	;wreg free
	line	218
	
l4254:
;LC-meter.c: 218: lcd_clear();
	call	_lcd_clear	;wreg free
	line	227
	
l4256:
;LC-meter.c: 227: char new_mode = (!!(PORTC & (1 << 4)));
	
	btfsc	((c:3970)),c,(4)&7	;volatile
	goto	u4041
	goto	u4040
u4041:
	movlw	1
	goto	u4050
u4040:
	movlw	0
u4050:
	movwf	((c:main@new_mode)),c
	line	229
	
l4258:
;LC-meter.c: 229: if(new_mode != mode) {
	movf	((c:_mode)),c,w
xorwf	((c:main@new_mode)),c,w
	btfsc	status,2
	goto	u4061
	goto	u4060

u4061:
	goto	l4262
u4060:
	line	234
	
l4260:
;LC-meter.c: 234: mode = new_mode;
	movff	(c:main@new_mode),(c:_mode)
	line	237
	
l4262:
;LC-meter.c: 235: }
;LC-meter.c: 237: if(led_cycle >= led_interval)
	movlb	0	; () banked
		movf	((_led_interval))&0ffh,w	;volatile
	subwf	((_led_cycle))&0ffh,w	;volatile
	movf	((_led_interval+1))&0ffh,w	;volatile
	subwfb	((_led_cycle+1))&0ffh,w	;volatile
	btfss	status,0
	goto	u4071
	goto	u4070

u4071:
	goto	l4266
u4070:
	line	238
	
l4264:; BSR set to: 0

;LC-meter.c: 238: led_cycle = 0;
	clrf	((_led_cycle))&0ffh	;volatile
	clrf	((_led_cycle+1))&0ffh	;volatile
	line	240
	
l4266:; BSR set to: 0

;LC-meter.c: 240: if(mode)
	movf	((c:_mode)),c,w
	btfsc	status,2
	goto	u4081
	goto	u4080
u4081:
	goto	l4270
u4080:
	line	241
	
l4268:; BSR set to: 0

;LC-meter.c: 241: measure_capacitance();
	call	_measure_capacitance	;wreg free
	goto	l92
	line	243
	
l4270:; BSR set to: 0

;LC-meter.c: 242: else
;LC-meter.c: 243: measure_inductance();
	call	_measure_inductance	;wreg free
	
l92:
	line	245
;LC-meter.c: 245: print_indicator(1);
	movlw	(01h)&0ffh
	
	call	_print_indicator
	line	246
	
l4272:
;LC-meter.c: 246: delay10ms(30);
	movlw	(01Eh)&0ffh
	
	call	_delay10ms
	line	248
	
l4274:
;LC-meter.c: 248: print_indicator(0);
	movlw	(0)&0ffh
	
	call	_print_indicator
	line	249
;LC-meter.c: 249: delay10ms(20);
	movlw	(014h)&0ffh
	
	call	_delay10ms
	line	250
;LC-meter.c: 250: }
	goto	l4256
	global	start
	goto	start
	opt stack 0
	line	251
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_timer2_init

;; *************** function _timer2_init *****************
;; Defined at:
;;		line 143 in file "lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1   11[COMRAM] unsigned char 
;;  postscaler      1    0        unsigned char 
;;  ps              1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"lib/timer.c"
	line	143
global __ptext1
__ptext1:
psect	text1
	file	"lib/timer.c"
	line	143
	global	__size_of_timer2_init
	__size_of_timer2_init	equ	__end_of_timer2_init-_timer2_init
	
_timer2_init:
;incstack = 0
	opt	stack 28
;timer2_init@ps_mode stored from wreg
	movwf	((c:timer2_init@ps_mode)),c
	line	144
	
l2962:
;timer.c: 144: uint8_t ps = ps_mode & 0b1111;
	movf	((c:timer2_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer2_init@ps)),c
	line	145
	
l2964:
	line	148
;timer.c: 148: T2CON &= ~0b01111111;
	movlw	(080h)&0ffh
	andwf	((c:4042)),c	;volatile
	line	150
;timer.c: 150: T2CON |= (postscaler & 0b1111) << 3;
	movf	((c:4042)),c,w	;volatile
	line	151
;timer.c: 151: T2CON |= (ps & 0b11);
	movf	((c:timer2_init@ps)),c,w
	andlw	low(03h)
	iorwf	((c:4042)),c	;volatile
	line	153
	
l2966:
;timer.c: 153: TMR2 = 0;
	clrf	((c:4044)),c	;volatile
	line	155
	
l2968:
;timer.c: 155: T2CON |= 0b100;
	bsf	(0+(2/8)+(c:4042)),c,(2)&7	;volatile
	line	158
	
l2970:
;timer.c: 158: PIR1 &= ~0b10;
	bcf	(0+(1/8)+(c:3998)),c,(1)&7	;volatile
	line	159
;timer.c: 159: PIE1 = (!!(ps_mode & 0x80)) << 1;
	
	btfsc	((c:timer2_init@ps_mode)),c,(7)&7
	goto	u2531
	goto	u2530
u2531:
	clrf	(??_timer2_init+0+0)&0ffh,c
	incf	(??_timer2_init+0+0)&0ffh,c
	goto	u2548
u2530:
	clrf	(??_timer2_init+0+0)&0ffh,c
u2548:
	bcf	status,0
	rlcf	(??_timer2_init+0+0),c,w
	movwf	((c:3997)),c	;volatile
	line	160
	
l317:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_timer2_init
	__end_of_timer2_init:
	signat	_timer2_init,4217
	global	_timer0_init

;; *************** function _timer0_init *****************
;; Defined at:
;;		line 28 in file "lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1   18[COMRAM] unsigned char 
;;  prescaler       1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	28
global __ptext2
__ptext2:
psect	text2
	file	"lib/timer.c"
	line	28
	global	__size_of_timer0_init
	__size_of_timer0_init	equ	__end_of_timer0_init-_timer0_init
	
_timer0_init:
;incstack = 0
	opt	stack 28
;timer0_init@ps_mode stored from wreg
	movwf	((c:timer0_init@ps_mode)),c
	line	29
	
l2920:
;timer.c: 29: uint8_t prescaler = ps_mode & 0b1111;
	movf	((c:timer0_init@ps_mode)),c,w
	andlw	low(0Fh)
	movwf	((c:timer0_init@prescaler)),c
	line	31
	
l2922:
;timer.c: 31: TMR0 = 0;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	34
	
l2924:
;timer.c: 34: T0CON |= (!!(ps_mode & 0x40)) ? 0x40 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(6)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2928
u2460:
	
l2926:
	clrf	((c:_timer0_init$450)),c
	clrf	((c:_timer0_init$450+1)),c
	goto	l2930
	
l2928:
	movlw	high(040h)
	movwf	((c:_timer0_init$450+1)),c
	movlw	low(040h)
	movwf	((c:_timer0_init$450)),c
	
l2930:
	movf	((c:_timer0_init$450)),c,w
	iorwf	((c:4053)),c	;volatile
	line	50
	
l2932:
;timer.c: 50: T0CON |= (!!(ps_mode & 0x20)) ? 0x20 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(5)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l2936
u2470:
	
l2934:
	clrf	((c:_timer0_init$451)),c
	clrf	((c:_timer0_init$451+1)),c
	goto	l2938
	
l2936:
	movlw	high(020h)
	movwf	((c:_timer0_init$451+1)),c
	movlw	low(020h)
	movwf	((c:_timer0_init$451)),c
	
l2938:
	movf	((c:_timer0_init$451)),c,w
	iorwf	((c:4053)),c	;volatile
	line	53
	
l2940:
;timer.c: 53: T0CON |= (!!(ps_mode & 0x10)) ? 0x10 : 0x00;
	
	btfsc	((c:timer0_init@ps_mode)),c,(4)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l2944
u2480:
	
l2942:
	clrf	((c:_timer0_init$452)),c
	clrf	((c:_timer0_init$452+1)),c
	goto	l2946
	
l2944:
	movlw	high(010h)
	movwf	((c:_timer0_init$452+1)),c
	movlw	low(010h)
	movwf	((c:_timer0_init$452)),c
	
l2946:
	movf	((c:_timer0_init$452)),c,w
	iorwf	((c:4053)),c	;volatile
	line	56
	
l2948:
;timer.c: 56: T0CON &= (!!prescaler) ? ~0x08 : ~0x00;
	movf	((c:timer0_init@prescaler)),c,w
	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l2952
u2490:
	
l2950:
	setf	((c:_timer0_init$453)),c
	setf	((c:_timer0_init$453+1)),c
	goto	l2954
	
l2952:
	movlw	high(-9)
	movwf	((c:_timer0_init$453+1)),c
	movlw	low(-9)
	movwf	((c:_timer0_init$453)),c
	
l2954:
	movf	((c:_timer0_init$453)),c,w
	andwf	((c:4053)),c	;volatile
	line	58
	
l2956:
;timer.c: 58: T0CON &= ~0b111;
	movlw	(0F8h)&0ffh
	andwf	((c:4053)),c	;volatile
	line	60
;timer.c: 60: if(prescaler > 0) {
	movf	((c:timer0_init@prescaler)),c,w
	btfsc	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2960
u2500:
	line	61
	
l2958:
;timer.c: 61: T0CON |= (prescaler - 1) & 0b111;
	decf	((c:timer0_init@prescaler)),c,w
	andlw	low(07h)
	iorwf	((c:4053)),c	;volatile
	line	72
	
l2960:
;timer.c: 67: }
;timer.c: 72: INTCONbits.TMR0IF = 0;
	bcf	((c:4082)),c,2	;volatile
	line	73
;timer.c: 73: INTCONbits.T0IE = (ps_mode & 0x80) ? 1 : 0;
	
	btfsc	((c:timer0_init@ps_mode)),c,(7)&7
	goto	u2511
	goto	u2510
u2511:
	clrf	(??_timer0_init+0+0)&0ffh,c
	incf	(??_timer0_init+0+0)&0ffh,c
	goto	u2528
u2510:
	clrf	(??_timer0_init+0+0)&0ffh,c
u2528:
	swapf	(??_timer0_init+0+0),c
	rlncf	(??_timer0_init+0+0),c
	movf	((c:4082)),c,w	;volatile
	xorwf	(??_timer0_init+0+0),c,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_timer0_init+0+0),c,w
	movwf	((c:4082)),c	;volatile
	line	74
	
l307:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_timer0_init
	__end_of_timer0_init:
	signat	_timer0_init,4217
	global	_print_indicator

;; *************** function _print_indicator *****************
;; Defined at:
;;		line 464 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  indicate        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  indicate        1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;;		_lcd_gotoxy
;;		_lcd_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"src/print.c"
	line	464
global __ptext3
__ptext3:
psect	text3
	file	"src/print.c"
	line	464
	global	__size_of_print_indicator
	__size_of_print_indicator	equ	__end_of_print_indicator-_print_indicator
	
_print_indicator:
;incstack = 0
	opt	stack 24
;print_indicator@indicate stored from wreg
	movwf	((c:print_indicator@indicate)),c
	line	478
	
l4182:
;print.c: 478: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	479
	
l4184:
;print.c: 479: if(indicate) {
	movf	((c:print_indicator@indicate)),c,w
	btfsc	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l4188
u4030:
	line	480
	
l4186:
;print.c: 480: lcd_puts("-*-");
		movlw	low(STR_20)
	movwf	((c:lcd_puts@string)),c

	call	_lcd_puts	;wreg free
	line	481
;print.c: 481: } else {
	goto	l421
	line	482
	
l4188:
;print.c: 482: lcd_puts("   ");
		movlw	low(STR_21)
	movwf	((c:lcd_puts@string)),c

	call	_lcd_puts	;wreg free
	line	485
	
l421:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_indicator
	__end_of_print_indicator:
	signat	_print_indicator,4217
	global	_measure_inductance

;; *************** function _measure_inductance *****************
;; Defined at:
;;		line 218 in file "src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Lin             3   30[BANK0 ] void 
;;  denominator     3    3[BANK0 ] void 
;;  numerator       3    0[BANK0 ] void 
;;  var             2   28[BANK0 ] unsigned int 
;;  unit            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0      33       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      33       0       0       0       0       0
;;Total ram usage:       33 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftsub
;;		___fttol
;;		___lwtoft
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"src/measure.c"
	line	218
global __ptext4
__ptext4:
psect	text4
	file	"src/measure.c"
	line	218
	global	__size_of_measure_inductance
	__size_of_measure_inductance	equ	__end_of_measure_inductance-_measure_inductance
	
_measure_inductance:
;incstack = 0
	opt	stack 23
	line	225
	
l4146:; BSR set to: 0

;measure.c: 219: uint8_t unit;
;measure.c: 220: uint16_t var;
;measure.c: 222: double Lin, numerator, denominator;
;measure.c: 225: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	226
	
l4148:
;measure.c: 226: put_str("Inductivity ");
		movlw	low(STR_10)
	movwf	((c:put_str@s)),c

	call	_put_str	;wreg free
	line	228
	
l4150:
;measure.c: 228: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(measure_inductance@var)
	movff	1+?_measure_freq,(measure_inductance@var+1)
	line	230
;measure.c: 230: F3 = (double)var;
	movff	(measure_inductance@var),(c:___lwtoft@c)
	movff	(measure_inductance@var+1),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:_F3)
	movff	1+?___lwtoft,(c:_F3+1)
	movff	2+?___lwtoft,(c:_F3+2)
	line	231
;measure.c: 231: if(F3 > F1)
	movff	(c:_F1),(c:___ftge@ff1)
	movff	(c:_F1+1),(c:___ftge@ff1+1)
	movff	(c:_F1+2),(c:___ftge@ff1+2)
	movff	(c:_F3),(c:___ftge@ff2)
	movff	(c:_F3+1),(c:___ftge@ff2+1)
	movff	(c:_F3+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u3991
	goto	u3990
u3991:
	goto	l4154
u3990:
	line	232
	
l4152:
;measure.c: 232: F3 = F1;
	movff	(c:_F1),(c:_F3)
	movff	(c:_F1+1),(c:_F3+1)
	movff	(c:_F1+2),(c:_F3+2)
	line	233
	
l4154:
;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_F2),(c:___ftsub@f2)
	movff	(_F2+1),(c:___ftsub@f2+1)
	movff	(_F2+2),(c:___ftsub@f2+2)
	movff	(_F2),(c:___ftsub@f1)
	movff	(_F2+1),(c:___ftsub@f1+1)
	movff	(_F2+2),(c:___ftsub@f1+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(_measure_inductance$1305)
	movff	1+?___ftsub,(_measure_inductance$1305+1)
	movff	2+?___ftsub,(_measure_inductance$1305+2)
;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1305),(c:___ftsub@f2)
	movff	(_measure_inductance$1305+1),(c:___ftsub@f2+1)
	movff	(_measure_inductance$1305+2),(c:___ftsub@f2+2)
	movff	(c:_F1),(c:___ftmul@f2)
	movff	(c:_F1+1),(c:___ftmul@f2+1)
	movff	(c:_F1+2),(c:___ftmul@f2+2)
	movff	(c:_F1),(c:___ftmul@f1)
	movff	(c:_F1+1),(c:___ftmul@f1+1)
	movff	(c:_F1+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftsub@f1)
	movff	1+?___ftmul,(c:___ftsub@f1+1)
	movff	2+?___ftmul,(c:___ftsub@f1+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(_measure_inductance$1306)
	movff	1+?___ftsub,(_measure_inductance$1306+1)
	movff	2+?___ftsub,(_measure_inductance$1306+2)
;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(c:_F3),(c:___ftmul@f2)
	movff	(c:_F3+1),(c:___ftmul@f2+1)
	movff	(c:_F3+2),(c:___ftmul@f2+2)
	movff	(c:_F3),(c:___ftmul@f1)
	movff	(c:_F3+1),(c:___ftmul@f1+1)
	movff	(c:_F3+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftsub@f2)
	movff	1+?___ftmul,(c:___ftsub@f2+1)
	movff	2+?___ftmul,(c:___ftsub@f2+2)
	movff	(c:_F1),(c:___ftmul@f2)
	movff	(c:_F1+1),(c:___ftmul@f2+1)
	movff	(c:_F1+2),(c:___ftmul@f2+2)
	movff	(c:_F1),(c:___ftmul@f1)
	movff	(c:_F1+1),(c:___ftmul@f1+1)
	movff	(c:_F1+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftsub@f1)
	movff	1+?___ftmul,(c:___ftsub@f1+1)
	movff	2+?___ftmul,(c:___ftsub@f1+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(_measure_inductance$1307)
	movff	1+?___ftsub,(_measure_inductance$1307+1)
	movff	2+?___ftsub,(_measure_inductance$1307+2)
;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1306),(c:___ftmul@f2)
	movff	(_measure_inductance$1306+1),(c:___ftmul@f2+1)
	movff	(_measure_inductance$1306+2),(c:___ftmul@f2+2)
	movff	(_measure_inductance$1307),(c:___ftmul@f1)
	movff	(_measure_inductance$1307+1),(c:___ftmul@f1+1)
	movff	(_measure_inductance$1307+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_measure_inductance$1308)
	movff	1+?___ftmul,(_measure_inductance$1308+1)
	movff	2+?___ftmul,(_measure_inductance$1308+2)
;measure.c: 233: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movff	(_measure_inductance$1308),(c:___ftmul@f1)
	movff	(_measure_inductance$1308+1),(c:___ftmul@f1+1)
	movff	(_measure_inductance$1308+2),(c:___ftmul@f1+2)
	movlw	low(float24(10000.000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(10000.000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(10000.000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(measure_inductance@numerator)
	movff	1+?___ftmul,(measure_inductance@numerator+1)
	movff	2+?___ftmul,(measure_inductance@numerator+2)
	line	234
;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(c:_F1),(c:___ftmul@f2)
	movff	(c:_F1+1),(c:___ftmul@f2+1)
	movff	(c:_F1+2),(c:___ftmul@f2+2)
	movff	(c:_F1),(c:___ftmul@f1)
	movff	(c:_F1+1),(c:___ftmul@f1+1)
	movff	(c:_F1+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_measure_inductance$1309)
	movff	1+?___ftmul,(_measure_inductance$1309+1)
	movff	2+?___ftmul,(_measure_inductance$1309+2)
;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___ftmul@f2)
	movff	(_F2+1),(c:___ftmul@f2+1)
	movff	(_F2+2),(c:___ftmul@f2+2)
	movff	(_measure_inductance$1309),(c:___ftmul@f1)
	movff	(_measure_inductance$1309+1),(c:___ftmul@f1+1)
	movff	(_measure_inductance$1309+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_measure_inductance$1306)
	movff	1+?___ftmul,(_measure_inductance$1306+1)
	movff	2+?___ftmul,(_measure_inductance$1306+2)
;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_F2),(c:___ftmul@f2)
	movff	(_F2+1),(c:___ftmul@f2+1)
	movff	(_F2+2),(c:___ftmul@f2+2)
	movff	(_measure_inductance$1306),(c:___ftmul@f1)
	movff	(_measure_inductance$1306+1),(c:___ftmul@f1+1)
	movff	(_measure_inductance$1306+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_measure_inductance$1307)
	movff	1+?___ftmul,(_measure_inductance$1307+1)
	movff	2+?___ftmul,(_measure_inductance$1307+2)
;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(c:_F3),(c:___ftmul@f2)
	movff	(c:_F3+1),(c:___ftmul@f2+1)
	movff	(c:_F3+2),(c:___ftmul@f2+2)
	movff	(_measure_inductance$1307),(c:___ftmul@f1)
	movff	(_measure_inductance$1307+1),(c:___ftmul@f1+1)
	movff	(_measure_inductance$1307+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_measure_inductance$1308)
	movff	1+?___ftmul,(_measure_inductance$1308+1)
	movff	2+?___ftmul,(_measure_inductance$1308+2)
;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(c:_F3),(c:___ftmul@f2)
	movff	(c:_F3+1),(c:___ftmul@f2+1)
	movff	(c:_F3+2),(c:___ftmul@f2+2)
	movff	(_measure_inductance$1308),(c:___ftmul@f1)
	movff	(_measure_inductance$1308+1),(c:___ftmul@f1+1)
	movff	(_measure_inductance$1308+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_measure_inductance$1310)
	movff	1+?___ftmul,(_measure_inductance$1310+1)
	movff	2+?___ftmul,(_measure_inductance$1310+2)
;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_CCal),(c:___ftmul@f2)
	movff	(_CCal+1),(c:___ftmul@f2+1)
	movff	(_CCal+2),(c:___ftmul@f2+2)
	movff	(_measure_inductance$1310),(c:___ftmul@f1)
	movff	(_measure_inductance$1310+1),(c:___ftmul@f1+1)
	movff	(_measure_inductance$1310+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_measure_inductance$1311)
	movff	1+?___ftmul,(_measure_inductance$1311+1)
	movff	2+?___ftmul,(_measure_inductance$1311+2)
;measure.c: 234: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movff	(_measure_inductance$1311),(c:___ftmul@f1)
	movff	(_measure_inductance$1311+1),(c:___ftmul@f1+1)
	movff	(_measure_inductance$1311+2),(c:___ftmul@f1+2)
	movlw	low(float24(39.478417604357432))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(39.478417604357432))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(39.478417604357432))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(measure_inductance@denominator)
	movff	1+?___ftmul,(measure_inductance@denominator+1)
	movff	2+?___ftmul,(measure_inductance@denominator+2)
	line	235
;measure.c: 235: Lin = (numerator / denominator) * 1e+15l;
	movff	(measure_inductance@denominator),(c:___ftdiv@f2)
	movff	(measure_inductance@denominator+1),(c:___ftdiv@f2+1)
	movff	(measure_inductance@denominator+2),(c:___ftdiv@f2+2)
	movff	(measure_inductance@numerator),(c:___ftdiv@f1)
	movff	(measure_inductance@numerator+1),(c:___ftdiv@f1+1)
	movff	(measure_inductance@numerator+2),(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___ftmul@f1)
	movff	1+?___ftdiv,(c:___ftmul@f1+1)
	movff	2+?___ftdiv,(c:___ftmul@f1+2)
	movlw	low(float24(1000000000000000.0))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(1000000000000000.0))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(1000000000000000.0))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(measure_inductance@Lin)
	movff	1+?___ftmul,(measure_inductance@Lin+1)
	movff	2+?___ftmul,(measure_inductance@Lin+2)
	line	237
;measure.c: 237: if(Lin > 999) {
	movlw	low(float24(999.00000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(999.00000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(999.00000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(measure_inductance@Lin),(c:___ftge@ff2)
	movff	(measure_inductance@Lin+1),(c:___ftge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u4001
	goto	u4000
u4001:
	goto	l4172
u4000:
	line	238
	
l4156:
;measure.c: 238: if(Lin > (999e+03l)) {
	movlw	low(float24(999000.00000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(999000.00000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(999000.00000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(measure_inductance@Lin),(c:___ftge@ff2)
	movff	(measure_inductance@Lin+1),(c:___ftge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u4011
	goto	u4010
u4011:
	goto	l4168
u4010:
	line	239
	
l4158:
;measure.c: 239: if(Lin > (999e+06l)) {
	movlw	low(float24(999000000.00000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(999000000.00000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(999000000.00000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(measure_inductance@Lin),(c:___ftge@ff2)
	movff	(measure_inductance@Lin+1),(c:___ftge@ff2+1)
	movff	(measure_inductance@Lin+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u4021
	goto	u4020
u4021:
	goto	l4164
u4020:
	line	240
	
l4160:
;measure.c: 240: Lin = Lin / (1e+09l);
	movff	(measure_inductance@Lin),(c:___ftdiv@f1)
	movff	(measure_inductance@Lin+1),(c:___ftdiv@f1+1)
	movff	(measure_inductance@Lin+2),(c:___ftdiv@f1+2)
	movlw	low(float24(1000000000.0000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1000000000.0000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1000000000.0000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(measure_inductance@Lin)
	movff	1+?___ftdiv,(measure_inductance@Lin+1)
	movff	2+?___ftdiv,(measure_inductance@Lin+2)
	line	241
	
l4162:
;measure.c: 241: unit = 0;
	movlb	0	; () banked
	clrf	((measure_inductance@unit))&0ffh
	line	242
;measure.c: 242: } else {
	goto	l4174
	line	243
	
l4164:
;measure.c: 243: Lin = Lin / (1e+06l);
	movff	(measure_inductance@Lin),(c:___ftdiv@f1)
	movff	(measure_inductance@Lin+1),(c:___ftdiv@f1+1)
	movff	(measure_inductance@Lin+2),(c:___ftdiv@f1+2)
	movlw	low(float24(1000000.0000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1000000.0000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1000000.0000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(measure_inductance@Lin)
	movff	1+?___ftdiv,(measure_inductance@Lin+1)
	movff	2+?___ftdiv,(measure_inductance@Lin+2)
	line	244
	
l4166:
;measure.c: 244: unit = 1;
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l4174
	line	247
	
l4168:
;measure.c: 247: Lin = Lin / 1e+03l;
	movff	(measure_inductance@Lin),(c:___ftdiv@f1)
	movff	(measure_inductance@Lin+1),(c:___ftdiv@f1+1)
	movff	(measure_inductance@Lin+2),(c:___ftdiv@f1+2)
	movlw	low(float24(1000.0000000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1000.0000000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1000.0000000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(measure_inductance@Lin)
	movff	1+?___ftdiv,(measure_inductance@Lin+1)
	movff	2+?___ftdiv,(measure_inductance@Lin+2)
	line	248
	
l4170:
;measure.c: 248: unit = 2;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	goto	l4174
	line	251
	
l4172:
;measure.c: 251: unit = 3;
	movlw	low(03h)
	movlb	0	; () banked
	movwf	((measure_inductance@unit))&0ffh
	line	253
	
l4174:; BSR set to: 0

;measure.c: 253: Lin = Lin * 100;
	movff	(measure_inductance@Lin),(c:___ftmul@f1)
	movff	(measure_inductance@Lin+1),(c:___ftmul@f1+1)
	movff	(measure_inductance@Lin+2),(c:___ftmul@f1+2)
	movlw	low(float24(100.00000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(measure_inductance@Lin)
	movff	1+?___ftmul,(measure_inductance@Lin+1)
	movff	2+?___ftmul,(measure_inductance@Lin+2)
	line	254
	
l4176:
;measure.c: 254: var = (uint16_t)Lin;
	movff	(measure_inductance@Lin),(c:___fttol@f1)
	movff	(measure_inductance@Lin+1),(c:___fttol@f1+1)
	movff	(measure_inductance@Lin+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(measure_inductance@var)
	movff	1+?___fttol,(measure_inductance@var+1)
	line	256
	
l4178:
;measure.c: 256: print_reading(var);
	movff	(measure_inductance@var),(c:print_reading@measurement)
	movff	(measure_inductance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	257
	
l4180:
;measure.c: 257: print_unit(unit);
	movlb	0	; () banked
	movf	((measure_inductance@unit))&0ffh,w
	
	call	_print_unit
	line	258
	
l389:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_measure_inductance
	__end_of_measure_inductance:
	signat	_measure_inductance,89
	global	_measure_capacitance

;; *************** function _measure_capacitance *****************
;; Defined at:
;;		line 131 in file "src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Cin             3   95[COMRAM] void 
;;  var             2   93[COMRAM] unsigned int 
;;  unit            1   92[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        15       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftsub
;;		___fttol
;;		___lwtoft
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	131
global __ptext5
__ptext5:
psect	text5
	file	"src/measure.c"
	line	131
	global	__size_of_measure_capacitance
	__size_of_measure_capacitance	equ	__end_of_measure_capacitance-_measure_capacitance
	
_measure_capacitance:
;incstack = 0
	opt	stack 23
	line	139
	
l4110:; BSR set to: 0

;measure.c: 132: uint8_t unit;
;measure.c: 133: uint16_t var;
;measure.c: 135: double Cin;
;measure.c: 139: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	140
	
l4112:
;measure.c: 140: put_str("Capacity ");
		movlw	low(STR_9)
	movwf	((c:put_str@s)),c

	call	_put_str	;wreg free
	line	142
	
l4114:
;measure.c: 142: var = measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:measure_capacitance@var)
	movff	1+?_measure_freq,(c:measure_capacitance@var+1)
	line	144
;measure.c: 144: F3 = (double)var;
	movff	(c:measure_capacitance@var),(c:___lwtoft@c)
	movff	(c:measure_capacitance@var+1),(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:_F3)
	movff	1+?___lwtoft,(c:_F3+1)
	movff	2+?___lwtoft,(c:_F3+2)
	line	178
;measure.c: 178: if(F3 > F1)
	movff	(c:_F1),(c:___ftge@ff1)
	movff	(c:_F1+1),(c:___ftge@ff1+1)
	movff	(c:_F1+2),(c:___ftge@ff1+2)
	movff	(c:_F3),(c:___ftge@ff2)
	movff	(c:_F3+1),(c:___ftge@ff2+1)
	movff	(c:_F3+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u3951
	goto	u3950
u3951:
	goto	l4118
u3950:
	line	179
	
l4116:
;measure.c: 179: F3 = F1;
	movff	(c:_F1),(c:_F3)
	movff	(c:_F1+1),(c:_F3+1)
	movff	(c:_F1+2),(c:_F3+2)
	line	181
	
l4118:
;measure.c: 181: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(c:_F3),(c:___ftmul@f2)
	movff	(c:_F3+1),(c:___ftmul@f2+1)
	movff	(c:_F3+2),(c:___ftmul@f2+2)
	movff	(c:_F3),(c:___ftmul@f1)
	movff	(c:_F3+1),(c:___ftmul@f1+1)
	movff	(c:_F3+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftsub@f2)
	movff	1+?___ftmul,(c:___ftsub@f2+1)
	movff	2+?___ftmul,(c:___ftsub@f2+2)
	movff	(c:_F1),(c:___ftmul@f2)
	movff	(c:_F1+1),(c:___ftmul@f2+1)
	movff	(c:_F1+2),(c:___ftmul@f2+2)
	movff	(c:_F1),(c:___ftmul@f1)
	movff	(c:_F1+1),(c:___ftmul@f1+1)
	movff	(c:_F1+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftsub@f1)
	movff	1+?___ftmul,(c:___ftsub@f1+1)
	movff	2+?___ftmul,(c:___ftsub@f1+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(c:_measure_capacitance$1302)
	movff	1+?___ftsub,(c:_measure_capacitance$1302+1)
	movff	2+?___ftsub,(c:_measure_capacitance$1302+2)
;measure.c: 181: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___ftmul@f2)
	movff	(_F2+1),(c:___ftmul@f2+1)
	movff	(_F2+2),(c:___ftmul@f2+2)
	movff	(c:_measure_capacitance$1302),(c:___ftmul@f1)
	movff	(c:_measure_capacitance$1302+1),(c:___ftmul@f1+1)
	movff	(c:_measure_capacitance$1302+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_measure_capacitance$1303)
	movff	1+?___ftmul,(c:_measure_capacitance$1303+1)
	movff	2+?___ftmul,(c:_measure_capacitance$1303+2)
;measure.c: 181: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(_F2),(c:___ftmul@f2)
	movff	(_F2+1),(c:___ftmul@f2+1)
	movff	(_F2+2),(c:___ftmul@f2+2)
	movff	(c:_measure_capacitance$1303),(c:___ftmul@f1)
	movff	(c:_measure_capacitance$1303+1),(c:___ftmul@f1+1)
	movff	(c:_measure_capacitance$1303+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_measure_capacitance$1304)
	movff	1+?___ftmul,(c:_measure_capacitance$1304+1)
	movff	2+?___ftmul,(c:_measure_capacitance$1304+2)
;measure.c: 181: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movff	(c:_measure_capacitance$1304),(c:___ftmul@f1)
	movff	(c:_measure_capacitance$1304+1),(c:___ftmul@f1+1)
	movff	(c:_measure_capacitance$1304+2),(c:___ftmul@f1+2)
	movff	(_CCal),(c:___ftmul@f2)
	movff	(_CCal+1),(c:___ftmul@f2+1)
	movff	(_CCal+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:measure_capacitance@Cin)
	movff	1+?___ftmul,(c:measure_capacitance@Cin+1)
	movff	2+?___ftmul,(c:measure_capacitance@Cin+2)
	line	191
;measure.c: 191: if(Cin > 999) {
	movlw	low(float24(999.00000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(999.00000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(999.00000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:measure_capacitance@Cin),(c:___ftge@ff2)
	movff	(c:measure_capacitance@Cin+1),(c:___ftge@ff2+1)
	movff	(c:measure_capacitance@Cin+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u3961
	goto	u3960
u3961:
	goto	l4136
u3960:
	line	192
	
l4120:
;measure.c: 192: if(Cin > (999e+03l)) {
	movlw	low(float24(999000.00000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(999000.00000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(999000.00000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:measure_capacitance@Cin),(c:___ftge@ff2)
	movff	(c:measure_capacitance@Cin+1),(c:___ftge@ff2+1)
	movff	(c:measure_capacitance@Cin+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u3971
	goto	u3970
u3971:
	goto	l4132
u3970:
	line	193
	
l4122:
;measure.c: 193: if(Cin > (999e+06l)) {
	movlw	low(float24(999000000.00000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(999000000.00000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(999000000.00000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:measure_capacitance@Cin),(c:___ftge@ff2)
	movff	(c:measure_capacitance@Cin+1),(c:___ftge@ff2+1)
	movff	(c:measure_capacitance@Cin+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u3981
	goto	u3980
u3981:
	goto	l4128
u3980:
	line	194
	
l4124:
;measure.c: 194: Cin = Cin / (1e+09);
	movff	(c:measure_capacitance@Cin),(c:___ftdiv@f1)
	movff	(c:measure_capacitance@Cin+1),(c:___ftdiv@f1+1)
	movff	(c:measure_capacitance@Cin+2),(c:___ftdiv@f1+2)
	movlw	low(float24(1000000000.0000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1000000000.0000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1000000000.0000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:measure_capacitance@Cin)
	movff	1+?___ftdiv,(c:measure_capacitance@Cin+1)
	movff	2+?___ftdiv,(c:measure_capacitance@Cin+2)
	line	195
	
l4126:
;measure.c: 195: unit = 4;
	movlw	low(04h)
	movwf	((c:measure_capacitance@unit)),c
	line	196
;measure.c: 196: } else {
	goto	l4138
	line	197
	
l4128:
;measure.c: 197: Cin = Cin / (1e+06);
	movff	(c:measure_capacitance@Cin),(c:___ftdiv@f1)
	movff	(c:measure_capacitance@Cin+1),(c:___ftdiv@f1+1)
	movff	(c:measure_capacitance@Cin+2),(c:___ftdiv@f1+2)
	movlw	low(float24(1000000.0000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1000000.0000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1000000.0000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:measure_capacitance@Cin)
	movff	1+?___ftdiv,(c:measure_capacitance@Cin+1)
	movff	2+?___ftdiv,(c:measure_capacitance@Cin+2)
	line	198
	
l4130:
;measure.c: 198: unit = 5;
	movlw	low(05h)
	movwf	((c:measure_capacitance@unit)),c
	goto	l4138
	line	201
	
l4132:
;measure.c: 201: Cin = Cin / 1e+03;
	movff	(c:measure_capacitance@Cin),(c:___ftdiv@f1)
	movff	(c:measure_capacitance@Cin+1),(c:___ftdiv@f1+1)
	movff	(c:measure_capacitance@Cin+2),(c:___ftdiv@f1+2)
	movlw	low(float24(1000.0000000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1000.0000000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1000.0000000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:measure_capacitance@Cin)
	movff	1+?___ftdiv,(c:measure_capacitance@Cin+1)
	movff	2+?___ftdiv,(c:measure_capacitance@Cin+2)
	line	202
	
l4134:
;measure.c: 202: unit = 6;
	movlw	low(06h)
	movwf	((c:measure_capacitance@unit)),c
	goto	l4138
	line	205
	
l4136:
;measure.c: 205: unit = 7;
	movlw	low(07h)
	movwf	((c:measure_capacitance@unit)),c
	line	207
	
l4138:
;measure.c: 207: Cin = Cin * 100;
	movff	(c:measure_capacitance@Cin),(c:___ftmul@f1)
	movff	(c:measure_capacitance@Cin+1),(c:___ftmul@f1+1)
	movff	(c:measure_capacitance@Cin+2),(c:___ftmul@f1+2)
	movlw	low(float24(100.00000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:measure_capacitance@Cin)
	movff	1+?___ftmul,(c:measure_capacitance@Cin+1)
	movff	2+?___ftmul,(c:measure_capacitance@Cin+2)
	line	208
	
l4140:
;measure.c: 208: var = (uint16_t)Cin;
	movff	(c:measure_capacitance@Cin),(c:___fttol@f1)
	movff	(c:measure_capacitance@Cin+1),(c:___fttol@f1+1)
	movff	(c:measure_capacitance@Cin+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:measure_capacitance@var)
	movff	1+?___fttol,(c:measure_capacitance@var+1)
	line	210
	
l4142:
;measure.c: 210: print_reading(var);
	movff	(c:measure_capacitance@var),(c:print_reading@measurement)
	movff	(c:measure_capacitance@var+1),(c:print_reading@measurement+1)
	call	_print_reading	;wreg free
	line	211
	
l4144:
;measure.c: 211: print_unit(unit);
	movf	((c:measure_capacitance@unit)),c,w
	
	call	_print_unit
	line	212
	
l379:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_measure_capacitance
	__end_of_measure_capacitance:
	signat	_measure_capacitance,89
	global	_print_unit

;; *************** function _print_unit *****************
;; Defined at:
;;		line 401 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcd_gotoxy
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"src/print.c"
	line	401
global __ptext6
__ptext6:
psect	text6
	file	"src/print.c"
	line	401
	global	__size_of_print_unit
	__size_of_print_unit	equ	__end_of_print_unit-_print_unit
	
_print_unit:
;incstack = 0
	opt	stack 23
	line	410
	
l3992:
;print.c: 409: static const char* units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
;print.c: 410: lcd_gotoxy(14, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0Eh)&0ffh
	
	call	_lcd_gotoxy
	line	414
;print.c: 414: lcd_gotoxy(16 - (buffer.n - buffer.p), 0);
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
	line	421
	
l413:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_unit
	__end_of_print_unit:
	signat	_print_unit,4217
	global	_print_reading

;; *************** function _print_reading *****************
;; Defined at:
;;		line 424 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  measurement     2   58[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
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
psect	text7,class=CODE,space=0,reloc=2,group=0
	line	424
global __ptext7
__ptext7:
psect	text7
	file	"src/print.c"
	line	424
	global	__size_of_print_reading
	__size_of_print_reading	equ	__end_of_print_reading-_print_reading
	
_print_reading:
;incstack = 0
	opt	stack 23
	line	451
	
l3978:
;print.c: 451: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	452
	
l3980:
;print.c: 452: lcd_puts("     ");
		movlw	low(STR_19)
	movwf	((c:lcd_puts@string)),c

	call	_lcd_puts	;wreg free
	line	453
	
l3982:
;print.c: 453: lcd_gotoxy(9, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(09h)&0ffh
	
	call	_lcd_gotoxy
	line	455
	
l3984:
;print.c: 455: format_number(measurement / 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwdiv@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwdiv@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwdiv@divisor)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:_print_reading$1312)
	movff	1+?___lwdiv,(c:_print_reading$1312+1)
	
l3986:
;print.c: 455: format_number(measurement / 100, 10, 0);
	movff	(c:_print_reading$1312),(c:format_number@n)
	movff	(c:_print_reading$1312+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	457
	
l3988:
;print.c: 457: format_number(measurement % 100, 10, 0);
	movff	(c:print_reading@measurement),(c:___lwmod@dividend)
	movff	(c:print_reading@measurement+1),(c:___lwmod@dividend+1)
	movlw	high(064h)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movff	0+?___lwmod,(c:_print_reading$1313)
	movff	1+?___lwmod,(c:_print_reading$1313+1)
	
l3990:
;print.c: 457: format_number(measurement % 100, 10, 0);
	movff	(c:_print_reading$1313),(c:format_number@n)
	movff	(c:_print_reading$1313+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(0)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	460
	
l416:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_reading
	__end_of_print_reading:
	signat	_print_reading,4217
	global	_lcd_puts

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 163 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  string          1   12[COMRAM] PTR const unsigned char 
;;		 -> STR_21(4), STR_20(4), STR_19(6), STR_5(5), 
;;		 -> STR_4(6), STR_3(7), STR_2(7), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  i               1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_main
;;		_print_reading
;;		_print_indicator
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"lib/lcd44780.c"
	line	163
global __ptext8
__ptext8:
psect	text8
	file	"lib/lcd44780.c"
	line	163
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:
;incstack = 0
	opt	stack 24
	line	165
	
l3738:
;lcd44780.c: 164: uint8_t i;
;lcd44780.c: 165: for(i = 0; string[i]; i++) lcd_putch(string[i]);
	clrf	((c:lcd_puts@i)),c
	goto	l3744
	
l3740:
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	
	call	_lcd_putch
	
l3742:
	incf	((c:lcd_puts@i)),c
	
l3744:
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3740
u3620:
	line	166
	
l213:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4217
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 489 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  fourbitmode     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fourbitmode     1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	line	489
global __ptext9
__ptext9:
psect	text9
	file	"lib/lcd44780.c"
	line	489
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:
;incstack = 0
	opt	stack 28
;lcd_init@fourbitmode stored from wreg
	movwf	((c:lcd_init@fourbitmode)),c
	line	491
	
l2972:
;lcd44780.c: 491: LCD_ctrl = 0;
	clrf	((c:_LCD_ctrl)),c
	line	492
	
l2974:
;lcd44780.c: 492: LCD_function = (fourbitmode ? 0x00 : 0x10);
	movf	((c:lcd_init@fourbitmode)),c,w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l266
u2550:
	
l2976:
	movlw	high(010h)
	movwf	((c:_lcd_init$361+1)),c
	movlw	low(010h)
	movwf	((c:_lcd_init$361)),c
	goto	l268
	
l266:
	clrf	((c:_lcd_init$361)),c
	clrf	((c:_lcd_init$361+1)),c
	
l268:
	movff	(c:_lcd_init$361),(c:_LCD_function)
	line	494
;lcd44780.c: 494: LCD_lines = 0;
	movlb	0	; () banked
	clrf	((_LCD_lines))&0ffh
	line	496
;lcd44780.c: 496: LCD_mode = 0;
	clrf	((_LCD_mode))&0ffh
	line	498
	
l2978:; BSR set to: 0

;lcd44780.c: 498: TRISB &= ~0b0100;
	bcf	(0+(2/8)+(c:3987)),c,(2)&7	;volatile
	line	499
;lcd44780.c: 499: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	504
;lcd44780.c: 504: TRISB &= ~0b1000;
	bcf	(0+(3/8)+(c:3987)),c,(3)&7	;volatile
	line	505
;lcd44780.c: 505: LATB &= ~0b1000;
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	line	507
	
l2980:; BSR set to: 0

;lcd44780.c: 507: LATB &= ~0b11110000;
	movlw	(0Fh)&0ffh
	andwf	((c:3978)),c	;volatile
	line	517
	
l269:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,4217
	global	_lcd_begin

;; *************** function _lcd_begin *****************
;; Defined at:
;;		line 416 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  lines           1    wreg     unsigned char 
;;  dotsize         1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lines           1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_command
;;		_lcd_write4bits
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	line	416
global __ptext10
__ptext10:
psect	text10
	file	"lib/lcd44780.c"
	line	416
	global	__size_of_lcd_begin
	__size_of_lcd_begin	equ	__end_of_lcd_begin-_lcd_begin
	
_lcd_begin:; BSR set to: 0

;incstack = 0
	opt	stack 25
;lcd_begin@lines stored from wreg
	movwf	((c:lcd_begin@lines)),c
	line	417
	
l3998:
;lcd44780.c: 417: if(lines > 1)
		movlw	02h-1
	cpfsgt	((c:lcd_begin@lines)),c
	goto	u3881
	goto	u3880

u3881:
	goto	l4002
u3880:
	line	418
	
l4000:
;lcd44780.c: 418: LCD_function |= 0x08;
	bsf	(0+(3/8)+(c:_LCD_function)),c,(3)&7
	line	421
	
l4002:
;lcd44780.c: 421: LCD_lines = lines;
	movff	(c:lcd_begin@lines),(_LCD_lines)
	line	425
	
l4004:
;lcd44780.c: 425: if((dotsize != 0) && (lines == 1))
	movf	((c:lcd_begin@dotsize)),c,w
	btfsc	status,2
	goto	u3891
	goto	u3890
u3891:
	goto	l4010
u3890:
	
l4006:
		decf	((c:lcd_begin@lines)),c,w
	btfss	status,2
	goto	u3901
	goto	u3900

u3901:
	goto	l4010
u3900:
	line	426
	
l4008:
;lcd44780.c: 426: LCD_function |= 0x04;
	bsf	(0+(2/8)+(c:_LCD_function)),c,(2)&7
	line	428
	
l4010:
;lcd44780.c: 428: _delay((unsigned long)((15)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	74
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	24
u4097:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4097
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u4097
	nop2
opt asmopt_pop

	line	431
	
l4012:
;lcd44780.c: 431: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	432
	
l4014:
;lcd44780.c: 432: LATB &= ~0b1000;
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	line	435
	
l4016:
;lcd44780.c: 435: if(!(LCD_function & 0x10)) {
	
	btfsc	((c:_LCD_function)),c,(4)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l4028
u3910:
	line	439
	
l4018:
;lcd44780.c: 439: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	440
	
l4020:
;lcd44780.c: 440: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	25
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	93
u4107:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4107
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u4107
opt asmopt_pop

	line	442
	
l4022:
;lcd44780.c: 442: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	443
;lcd44780.c: 443: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	187
u4117:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4117
	nop2
opt asmopt_pop

	line	445
	
l4024:
;lcd44780.c: 445: lcd_write4bits(0x03);
	movlw	(03h)&0ffh
	
	call	_lcd_write4bits
	line	446
	
l4026:
;lcd44780.c: 446: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_push
opt asmopt_off
	movlw	187
u4127:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4127
	nop2
opt asmopt_pop

	line	448
;lcd44780.c: 448: lcd_write4bits(0x02);
	movlw	(02h)&0ffh
	
	call	_lcd_write4bits
	line	449
;lcd44780.c: 449: }
	goto	l4036
	line	455
	
l4028:
;lcd44780.c: 451: else {
;lcd44780.c: 455: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	456
	
l4030:
;lcd44780.c: 456: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	25
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	93
u4137:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4137
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u4137
opt asmopt_pop

	line	459
	
l4032:
;lcd44780.c: 459: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	460
;lcd44780.c: 460: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	25
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	93
u4147:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4147
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u4147
opt asmopt_pop

	line	464
	
l4034:
;lcd44780.c: 464: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	468
	
l4036:
;lcd44780.c: 465: }
;lcd44780.c: 468: lcd_command(0x20 | LCD_function);
	movf	((c:_LCD_function)),c,w
	iorlw	low(020h)
	
	call	_lcd_command
	line	471
	
l4038:
;lcd44780.c: 471: LCD_ctrl = 0x04 | 0x00 | 0x00;
	movlw	low(04h)
	movwf	((c:_LCD_ctrl)),c
	line	472
	
l4040:
;lcd44780.c: 472: lcd_command(0x08 | LCD_ctrl);
	movf	((c:_LCD_ctrl)),c,w
	iorlw	low(08h)
	
	call	_lcd_command
	line	475
	
l4042:
;lcd44780.c: 475: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	476
	
l4044:
;lcd44780.c: 476: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	10
movwf	(??_lcd_begin+0+0)&0ffh,c,f
	movlw	190
u4157:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4157
	decfsz	(??_lcd_begin+0+0)&0ffh,c,f
	bra	u4157
	nop2
opt asmopt_pop

	line	479
;lcd44780.c: 479: LCD_mode = 0x02 | 0x00;
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((_LCD_mode))&0ffh
	line	481
	
l4046:; BSR set to: 0

;lcd44780.c: 481: lcd_command(0x04 | LCD_mode);
	movf	((_LCD_mode))&0ffh,w
	iorlw	low(04h)
	
	call	_lcd_command
	line	482
	
l262:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_begin
	__end_of_lcd_begin:
	signat	_lcd_begin,8313
	global	_format_double

;; *************** function _format_double *****************
;; Defined at:
;;		line 81 in file "lib/format.c"
;; Parameters:    Size  Location     Type
;;  num             3   23[BANK0 ] void 
;; Auto vars:     Size  Location     Type
;;  weight          3   32[BANK0 ] void 
;;  m               2   37[BANK0 ] short 
;;  digit           2   35[BANK0 ] short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       3       0       0       0       0       0
;;      Locals:         0      13       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      16       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftsub
;;		___fttol
;;		_buffer_putch
;;		_floor
;;		_log10
;;		_pow
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"lib/format.c"
	line	81
global __ptext11
__ptext11:
psect	text11
	file	"lib/format.c"
	line	81
	global	__size_of_format_double
	__size_of_format_double	equ	__end_of_format_double-_format_double
	
_format_double:
;incstack = 0
	opt	stack 23
	line	82
	
l4048:
;format.c: 82: short m = (short)log10(num);
	movff	(format_double@num),(c:log10@x)
	movff	(format_double@num+1),(c:log10@x+1)
	movff	(format_double@num+2),(c:log10@x+2)
	call	_log10	;wreg free
	movff	0+?_log10,(c:___fttol@f1)
	movff	1+?_log10,(c:___fttol@f1+1)
	movff	2+?_log10,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(format_double@m)
	movff	1+?___fttol,(format_double@m+1)
	line	86
;format.c: 83: short digit;
;format.c: 86: while(num > 0 + (3.05176e-05)) {
	goto	l4068
	line	87
	
l4050:
;format.c: 87: double weight = pow(10.0l, m);
	movff	(format_double@m),(c:___awtoft@c)
	movff	(format_double@m+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(_format_double$1300)
	movff	1+?___awtoft,(_format_double$1300+1)
	movff	2+?___awtoft,(_format_double$1300+2)
	
l4052:
;format.c: 87: double weight = pow(10.0l, m);
	movlw	low(float24(10.000000000000000))
	movlb	0	; () banked
	movwf	((pow@x))&0ffh
	movlw	high(float24(10.000000000000000))
	movwf	((pow@x+1))&0ffh
	movlw	low highword(float24(10.000000000000000))
	movwf	((pow@x+2))&0ffh

	movff	(_format_double$1300),(pow@y)
	movff	(_format_double$1300+1),(pow@y+1)
	movff	(_format_double$1300+2),(pow@y+2)
	call	_pow	;wreg free
	movff	0+?_pow,(format_double@weight)
	movff	1+?_pow,(format_double@weight+1)
	movff	2+?_pow,(format_double@weight+2)
	line	88
	
l4054:; BSR set to: 0

;format.c: 88: digit = (short)floor(num / weight);
	movff	(format_double@weight),(c:___ftdiv@f2)
	movff	(format_double@weight+1),(c:___ftdiv@f2+1)
	movff	(format_double@weight+2),(c:___ftdiv@f2+2)
	movff	(format_double@num),(c:___ftdiv@f1)
	movff	(format_double@num+1),(c:___ftdiv@f1+1)
	movff	(format_double@num+2),(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:floor@x)
	movff	1+?___ftdiv,(c:floor@x+1)
	movff	2+?___ftdiv,(c:floor@x+2)
	call	_floor	;wreg free
	movff	0+?_floor,(_format_double$1301)
	movff	1+?_floor,(_format_double$1301+1)
	movff	2+?_floor,(_format_double$1301+2)
	
l4056:
;format.c: 88: digit = (short)floor(num / weight);
	movff	(_format_double$1301),(c:___fttol@f1)
	movff	(_format_double$1301+1),(c:___fttol@f1+1)
	movff	(_format_double$1301+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(format_double@digit)
	movff	1+?___fttol,(format_double@digit+1)
	line	89
	
l4058:
;format.c: 89: num -= (digit * weight);
	movff	(format_double@num),(c:___ftsub@f1)
	movff	(format_double@num+1),(c:___ftsub@f1+1)
	movff	(format_double@num+2),(c:___ftsub@f1+2)
	movff	(format_double@weight),(c:___ftmul@f2)
	movff	(format_double@weight+1),(c:___ftmul@f2+1)
	movff	(format_double@weight+2),(c:___ftmul@f2+2)
	movff	(format_double@digit),(c:___awtoft@c)
	movff	(format_double@digit+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftmul@f1)
	movff	1+?___awtoft,(c:___ftmul@f1+1)
	movff	2+?___awtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftsub@f2)
	movff	1+?___ftmul,(c:___ftsub@f2+1)
	movff	2+?___ftmul,(c:___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(format_double@num)
	movff	1+?___ftsub,(format_double@num+1)
	movff	2+?___ftsub,(format_double@num+2)
	line	90
	
l4060:
;format.c: 90: buffer_putch((char)('0' + digit));
	movlb	0	; () banked
	movf	((format_double@digit))&0ffh,w
	addlw	low(030h)
	
	call	_buffer_putch
	line	91
	
l4062:; BSR set to: 0

;format.c: 91: if(m == 0)
	movf	((format_double@m))&0ffh,w
iorwf	((format_double@m+1))&0ffh,w
	btfss	status,2
	goto	u3921
	goto	u3920

u3921:
	goto	l4066
u3920:
	line	92
	
l4064:; BSR set to: 0

;format.c: 92: buffer_putch('.');
	movlw	(02Eh)&0ffh
	
	call	_buffer_putch
	line	93
	
l4066:; BSR set to: 0

;format.c: 93: m--;
	decf	((format_double@m))&0ffh
	btfss	status,0
	decf	((format_double@m+1))&0ffh
	line	86
	
l4068:
	movlw	low(float24(3.0517600000000001e-05))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(3.0517600000000001e-05))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(3.0517600000000001e-05))
	movwf	((c:___ftge@ff1+2)),c

	movff	(format_double@num),(c:___ftge@ff2)
	movff	(format_double@num+1),(c:___ftge@ff2+1)
	movff	(format_double@num+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfss	status,0
	goto	u3931
	goto	u3930
u3931:
	goto	l4050
u3930:
	line	95
	
l174:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_format_double
	__end_of_format_double:
	signat	_format_double,4217
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v1.45/sources/common/pow.c"
;; Parameters:    Size  Location     Type
;;  x               3    6[BANK0 ] void 
;;  y               3    9[BANK0 ] void 
;; Auto vars:     Size  Location     Type
;;  yi              4   19[BANK0 ] unsigned long 
;;  sign            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       6       0       0       0       0       0
;;      Locals:         0      11       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0      17       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lltoft
;;		_exp
;;		_log
;; This function is called by:
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/pow.c"
	line	5
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v1.45/sources/common/pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:
;incstack = 0
	opt	stack 23
	line	7
	
l3890:; BSR set to: 0

	clrf	((pow@sign))&0ffh
	line	10
	
l3892:; BSR set to: 0

	movf	((pow@x))&0ffh,w
iorwf	((pow@x+1))&0ffh,w
iorwf	((pow@x+2))&0ffh,w
	btfss	status,2
	goto	u3821
	goto	u3820

u3821:
	goto	l3896
u3820:
	line	11
	
l3894:; BSR set to: 0

	movlw	low(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(pow@y),(c:___ftge@ff2)
	movff	(pow@y+1),(c:___ftge@ff2+1)
	movff	(pow@y+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	line	13
	
l909:
	line	14
	movlb	0	; () banked
	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh

	goto	l910
	line	16
	
l3896:; BSR set to: 0

	movf	((pow@y))&0ffh,w
iorwf	((pow@y+1))&0ffh,w
iorwf	((pow@y+2))&0ffh,w
	btfss	status,2
	goto	u3831
	goto	u3830

u3831:
	goto	l3902
u3830:
	line	17
	
l3898:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movwf	((?_pow))&0ffh
	movlw	high(float24(1.0000000000000000))
	movwf	((?_pow+1))&0ffh
	movlw	low highword(float24(1.0000000000000000))
	movwf	((?_pow+2))&0ffh

	goto	l910
	line	18
	
l3902:; BSR set to: 0

	btfsc	((pow@x+2))&0ffh,7
	goto	u3840
	goto	u3841

u3841:
	goto	l3912
u3840:
	line	19
	
l3904:; BSR set to: 0

	movff	(pow@y),(c:___fttol@f1)
	movff	(pow@y+1),(c:___fttol@f1+1)
	movff	(pow@y+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(pow@yi)
	movff	1+?___fttol,(pow@yi+1)
	movff	2+?___fttol,(pow@yi+2)
	movff	3+?___fttol,(pow@yi+3)
	
	line	20
	movff	(pow@yi),(c:___lltoft@c)
	movff	(pow@yi+1),(c:___lltoft@c+1)
	movff	(pow@yi+2),(c:___lltoft@c+2)
	movff	(pow@yi+3),(c:___lltoft@c+3)
	call	___lltoft	;wreg free
	movlb	0	; () banked
	movf	((pow@y))&0ffh,w
xorwf	(0+?___lltoft),c,w
	bnz	u3850
movf	((pow@y+1))&0ffh,w
xorwf	(1+?___lltoft),c,w
	bnz	u3850
movf	((pow@y+2))&0ffh,w
xorwf	(2+?___lltoft),c,w
	btfsc	status,2
	goto	u3851
	goto	u3850

u3851:
	goto	l3908
u3850:
	line	22
	
l3906:; BSR set to: 0

	clrf	((?_pow))&0ffh
	clrf	((?_pow+1))&0ffh
	clrf	((?_pow+2))&0ffh

	goto	l910
	line	24
	
l3908:; BSR set to: 0

	movf	((pow@yi))&0ffh,w
	andlw	low(01h)
	movwf	((pow@sign))&0ffh
	line	25
	
l3910:; BSR set to: 0

	movff	(pow@x),(c:___ftneg@f1)
	movff	(pow@x+1),(c:___ftneg@f1+1)
	movff	(pow@x+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(pow@x)
	movff	1+?___ftneg,(pow@x+1)
	movff	2+?___ftneg,(pow@x+2)
	line	27
	
l3912:; BSR set to: 0

	movff	(pow@x),(c:log@x)
	movff	(pow@x+1),(c:log@x+1)
	movff	(pow@x+2),(c:log@x+2)
	call	_log	;wreg free
	movff	0+?_log,(_pow$1315)
	movff	1+?_log,(_pow$1315+1)
	movff	2+?_log,(_pow$1315+2)
	
l3914:
	movff	(_pow$1315),(c:___ftmul@f1)
	movff	(_pow$1315+1),(c:___ftmul@f1+1)
	movff	(_pow$1315+2),(c:___ftmul@f1+2)
	movff	(pow@y),(c:___ftmul@f2)
	movff	(pow@y+1),(c:___ftmul@f2+1)
	movff	(pow@y+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(_pow$1316)
	movff	1+?___ftmul,(_pow$1316+1)
	movff	2+?___ftmul,(_pow$1316+2)
	
l3916:
	movff	(_pow$1316),(c:exp@x)
	movff	(_pow$1316+1),(c:exp@x+1)
	movff	(_pow$1316+2),(c:exp@x+2)
	call	_exp	;wreg free
	movff	0+?_exp,(pow@x)
	movff	1+?_exp,(pow@x+1)
	movff	2+?_exp,(pow@x+2)
	line	28
	
l3918:
	movlb	0	; () banked
	movf	((pow@sign))&0ffh,w
	btfsc	status,2
	goto	u3861
	goto	u3860
u3861:
	goto	l914
u3860:
	line	29
	
l3920:; BSR set to: 0

	movff	(pow@x),(c:___ftneg@f1)
	movff	(pow@x+1),(c:___ftneg@f1+1)
	movff	(pow@x+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(?_pow)
	movff	1+?___ftneg,(?_pow+1)
	movff	2+?___ftneg,(?_pow+2)
	goto	l910
	
l914:; BSR set to: 0

	line	30
	movff	(pow@x),(?_pow)
	movff	(pow@x+1),(?_pow+1)
	movff	(pow@x+2),(?_pow+2)
	line	31
	
l910:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8315
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "/opt/microchip/xc8/v1.45/sources/common/exp.c"
;; Parameters:    Size  Location     Type
;;  x               3  101[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2    3[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3  101[COMRAM] unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       6       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		_eval_poly
;;		_floor
;;		_ldexp
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/exp.c"
	line	12
global __ptext13
__ptext13:
psect	text13
	file	"/opt/microchip/xc8/v1.45/sources/common/exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	31
	
l3840:
	movf	((c:exp@x)),c,w
iorwf	((c:exp@x+1)),c,w
iorwf	((c:exp@x+2)),c,w
	btfss	status,2
	goto	u3741
	goto	u3740

u3741:
	goto	l3846
u3740:
	line	32
	
l3842:
	movlw	low(float24(1.0000000000000000))
	movwf	((c:?_exp)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:?_exp+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:?_exp+2)),c

	goto	l1075
	line	34
	
l3846:
	movlw	low(float24(709.78271289338397))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(709.78271289338397))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(709.78271289338397))
	movwf	((c:___ftge@ff1+2)),c

	movff	(c:exp@x),(c:___ftge@ff2)
	movff	(c:exp@x+1),(c:___ftge@ff2+1)
	movff	(c:exp@x+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u3751
	goto	u3750
u3751:
	goto	l3852
u3750:
	line	36
	
l3848:
	movlw	low(float24(3.4027699999999999e+38))
	movwf	((c:?_exp)),c
	movlw	high(float24(3.4027699999999999e+38))
	movwf	((c:?_exp+1)),c
	movlw	low highword(float24(3.4027699999999999e+38))
	movwf	((c:?_exp+2)),c

	goto	l1075
	line	38
	
l3852:
	movff	(c:exp@x),(c:___ftge@ff1)
	movff	(c:exp@x+1),(c:___ftge@ff1+1)
	movff	(c:exp@x+2),(c:___ftge@ff1+2)
	movlw	low(float24(-745.13321910194111))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(-745.13321910194111))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(-745.13321910194111))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfsc	status,0
	goto	u3761
	goto	u3760
u3761:
	goto	l3856
u3760:
	line	40
	
l3854:
	clrf	((c:?_exp)),c
	clrf	((c:?_exp+1)),c
	clrf	((c:?_exp+2)),c

	goto	l1075
	line	43
	
l3856:
	btfsc	((c:exp@x+2)),c,7
	goto	u3771
	goto	u3770

u3771:
	movlw	1
	goto	u3780
u3770:
	movlw	0
u3780:
	movlb	0	; () banked
	movwf	((exp@sign))&0ffh
	line	44
	
l3858:; BSR set to: 0

	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l1078
u3790:
	line	45
	
l3860:; BSR set to: 0

	movff	(c:exp@x),(c:___ftneg@f1)
	movff	(c:exp@x+1),(c:___ftneg@f1+1)
	movff	(c:exp@x+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(c:exp@x)
	movff	1+?___ftneg,(c:exp@x+1)
	movff	2+?___ftneg,(c:exp@x+2)
	
l1078:; BSR set to: 0

	line	46
	movff	(c:exp@x),(c:___ftmul@f1)
	movff	(c:exp@x+1),(c:___ftmul@f1+1)
	movff	(c:exp@x+2),(c:___ftmul@f1+2)
	movlw	low(float24(1.4426950408999999))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(1.4426950408999999))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(1.4426950408999999))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:exp@x)
	movff	1+?___ftmul,(c:exp@x+1)
	movff	2+?___ftmul,(c:exp@x+2)
	line	47
	
l3862:
	movff	(c:exp@x),(c:floor@x)
	movff	(c:exp@x+1),(c:floor@x+1)
	movff	(c:exp@x+2),(c:floor@x+2)
	call	_floor	;wreg free
	movff	0+?_floor,(_exp$1317)
	movff	1+?_floor,(_exp$1317+1)
	movff	2+?_floor,(_exp$1317+2)
	
l3864:
	movff	(_exp$1317),(c:___fttol@f1)
	movff	(_exp$1317+1),(c:___fttol@f1+1)
	movff	(_exp$1317+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(exp@exponent)
	movff	1+?___fttol,(exp@exponent+1)
	line	48
	
l3866:
	movff	(c:exp@x),(c:___ftsub@f1)
	movff	(c:exp@x+1),(c:___ftsub@f1+1)
	movff	(c:exp@x+2),(c:___ftsub@f1+2)
	movff	(exp@exponent),(c:___awtoft@c)
	movff	(exp@exponent+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftsub@f2)
	movff	1+?___awtoft,(c:___ftsub@f2+1)
	movff	2+?___awtoft,(c:___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(c:exp@x)
	movff	1+?___ftsub,(c:exp@x+1)
	movff	2+?___ftsub,(c:exp@x+2)
	line	49
	
l3868:
	movff	(c:exp@x),(c:eval_poly@x)
	movff	(c:exp@x+1),(c:eval_poly@x+1)
	movff	(c:exp@x+2),(c:eval_poly@x+2)
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
	movff	(exp@exponent),(c:ldexp@newexp)
	movff	(exp@exponent+1),(c:ldexp@newexp+1)
	call	_ldexp	;wreg free
	movff	0+?_ldexp,(c:exp@x)
	movff	1+?_ldexp,(c:exp@x+1)
	movff	2+?_ldexp,(c:exp@x+2)
	line	50
	
l3870:
	movlb	0	; () banked
	movf	((exp@sign))&0ffh,w
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l1079
u3800:
	line	52
	
l3872:; BSR set to: 0

		incf	((c:exp@x)),c,w
	bnz	u3811
	movlw	127
	xorwf	((c:exp@x+1)),c,w
	bnz	u3811
	movlw	127
	xorwf	((c:exp@x+2)),c,w
	btfss	status,2
	goto	u3811
	goto	u3810

u3811:
	goto	l3876
u3810:
	line	53
	
l3874:; BSR set to: 0

	clrf	((c:?_exp)),c
	clrf	((c:?_exp+1)),c
	clrf	((c:?_exp+2)),c

	goto	l1075
	line	54
	
l3876:; BSR set to: 0

	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftdiv@f1+2)),c

	movff	(c:exp@x),(c:___ftdiv@f2)
	movff	(c:exp@x+1),(c:___ftdiv@f2+1)
	movff	(c:exp@x+2),(c:___ftdiv@f2+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:?_exp)
	movff	1+?___ftdiv,(c:?_exp+1)
	movff	2+?___ftdiv,(c:?_exp+2)
	goto	l1075
	line	55
	
l1079:; BSR set to: 0

	line	56
	movff	(c:exp@x),(c:?_exp)
	movff	(c:exp@x+1),(c:?_exp+1)
	movff	(c:exp@x+2),(c:?_exp+2)
	line	57
	
l1075:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4219
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "/opt/microchip/xc8/v1.45/sources/common/frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3   57[COMRAM] unsigned char 
;;  newexp          2   60[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   57[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/frexp.c"
	line	277
global __ptext14
__ptext14:
psect	text14
	file	"/opt/microchip/xc8/v1.45/sources/common/frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:
;incstack = 0
	opt	stack 25
	line	279
	
l3652:
	movf	((c:ldexp@value)),c,w
iorwf	((c:ldexp@value+1)),c,w
iorwf	((c:ldexp@value+2)),c,w
	btfss	status,2
	goto	u3481
	goto	u3480

u3481:
	goto	l3656
u3480:
	line	280
	
l3654:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c

	goto	l693
	line	282
	
l3656:
	movf	(0+((c:ldexp@value)+02h)),c,w
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
	btfsc	(0+((c:ldexp@value)+01h)),c,7
	goto	u3491
	goto	u3490
u3491:
	movlw	1
	goto	u3496
u3490:
	movlw	0
u3496:
	addwf	((c:ldexp@newexp)),c
	movlw	0
	addwfc	((c:ldexp@newexp+1)),c
	line	287
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u3500
	goto	u3501

u3501:
	goto	l3662
u3500:
	line	289
	
l3658:
	clrf	((c:?_ldexp)),c
	clrf	((c:?_ldexp+1)),c
	clrf	((c:?_ldexp+2)),c

	goto	l693
	line	291
	
l3662:
	btfsc	((c:ldexp@newexp+1)),c,7
	goto	u3511
	decf	((c:ldexp@newexp+1)),c,w
	btfss	status,0
	goto	u3511
	goto	u3510

u3511:
	goto	l3676
u3510:
	line	293
	
l3664:
	btfsc	((c:ldexp@value+2)),c,7
	goto	u3520
	goto	u3521

u3521:
	goto	l3672
u3520:
	line	294
	
l3666:
	movlw	low(float24(-3.4027699999999999e+38))
	movwf	((c:?_ldexp)),c
	movlw	high(float24(-3.4027699999999999e+38))
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(float24(-3.4027699999999999e+38))
	movwf	((c:?_ldexp+2)),c

	goto	l693
	line	296
	
l3672:
	movlw	low(float24(3.4027699999999999e+38))
	movwf	((c:?_ldexp)),c
	movlw	high(float24(3.4027699999999999e+38))
	movwf	((c:?_ldexp+1)),c
	movlw	low highword(float24(3.4027699999999999e+38))
	movwf	((c:?_ldexp+2)),c

	goto	l693
	line	300
	
l3676:
	rlcf	((c:ldexp@newexp+1)),c,w
	rrcf	((c:ldexp@newexp+1)),c,w
	movwf	(??_ldexp+0+0+1)&0ffh,c
	rrcf	((c:ldexp@newexp)),c,w
	movwf	(??_ldexp+0+0)&0ffh,c
	movf	(0+((c:ldexp@value)+02h)),c,w
	xorwf	(??_ldexp+0+0),c,w
	andlw	not ((1<<7)-1)
	xorwf	(??_ldexp+0+0),c,w
	movwf	(0+((c:ldexp@value)+02h)),c
	line	301
	movff	(c:ldexp@newexp),??_ldexp+0+0
	movlw	01h
	andwf	(??_ldexp+0+0),c
	rrcf	(??_ldexp+0+0),c
	rrcf	(??_ldexp+0+0),c
	movf	(0+((c:ldexp@value)+01h)),c,w
	xorwf	(??_ldexp+0+0),c,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0+0),c,w
	movwf	(0+((c:ldexp@value)+01h)),c
	line	306
	
l3678:
	movff	(c:ldexp@value),(c:?_ldexp)
	movff	(c:ldexp@value+1),(c:?_ldexp+1)
	movff	(c:ldexp@value+2),(c:?_ldexp+2)
	line	307
	
l693:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8315
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "/opt/microchip/xc8/v1.45/sources/common/floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   93[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  i               3   96[COMRAM] int 
;;  expon           2   99[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  3   93[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_format_double
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/floor.c"
	line	13
global __ptext15
__ptext15:
psect	text15
	file	"/opt/microchip/xc8/v1.45/sources/common/floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:
;incstack = 0
	opt	stack 23
	line	18
	
l3574:
	movff	(c:floor@x),(c:frexp@value)
	movff	(c:floor@x+1),(c:frexp@value+1)
	movff	(c:floor@x+2),(c:frexp@value+2)
		movlw	low(floor@expon)
	movwf	((c:frexp@eptr)),c

	call	_frexp	;wreg free
	line	19
	
l3576:
	btfsc	((c:floor@expon+1)),c,7
	goto	u3370
	goto	u3371

u3371:
	goto	l3584
u3370:
	line	20
	
l3578:
	btfsc	((c:floor@x+2)),c,7
	goto	u3380
	goto	u3381

u3381:
	goto	l666
u3380:
	line	21
	
l3580:
	movlw	low(float24(-1.0000000000000000))
	movwf	((c:?_floor)),c
	movlw	high(float24(-1.0000000000000000))
	movwf	((c:?_floor+1)),c
	movlw	low highword(float24(-1.0000000000000000))
	movwf	((c:?_floor+2)),c

	goto	l667
	
l666:
	line	22
	clrf	((c:?_floor)),c
	clrf	((c:?_floor+1)),c
	clrf	((c:?_floor+2)),c

	goto	l667
	line	24
	
l3584:
		movf	((c:floor@expon+1)),c,w
	bnz	u3390
	movlw	21
	subwf	 ((c:floor@expon)),c,w
	btfss	status,0
	goto	u3391
	goto	u3390

u3391:
	goto	l3588
u3390:
	line	25
	
l3586:
	movff	(c:floor@x),(c:?_floor)
	movff	(c:floor@x+1),(c:?_floor+1)
	movff	(c:floor@x+2),(c:?_floor+2)
	goto	l667
	line	26
	
l3588:
	movff	(c:floor@x),(c:___fttol@f1)
	movff	(c:floor@x+1),(c:___fttol@f1+1)
	movff	(c:floor@x+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:___altoft@c)
	movff	1+?___fttol,(c:___altoft@c+1)
	movff	2+?___fttol,(c:___altoft@c+2)
	movff	3+?___fttol,(c:___altoft@c+3)
	
	call	___altoft	;wreg free
	movff	0+?___altoft,(c:floor@i)
	movff	1+?___altoft,(c:floor@i+1)
	movff	2+?___altoft,(c:floor@i+2)
	line	27
	movff	(c:floor@x),(c:___ftge@ff1)
	movff	(c:floor@x+1),(c:___ftge@ff1+1)
	movff	(c:floor@x+2),(c:___ftge@ff1+2)
	movff	(c:floor@i),(c:___ftge@ff2)
	movff	(c:floor@i+1),(c:___ftge@ff2+1)
	movff	(c:floor@i+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u3401
	goto	u3400
u3401:
	goto	l669
u3400:
	line	28
	
l3590:
	movff	(c:floor@i),(c:___ftadd@f1)
	movff	(c:floor@i+1),(c:___ftadd@f1+1)
	movff	(c:floor@i+2),(c:___ftadd@f1+2)
	movlw	low(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?_floor)
	movff	1+?___ftadd,(c:?_floor+1)
	movff	2+?___ftadd,(c:?_floor+2)
	goto	l667
	
l669:
	line	29
	movff	(c:floor@i),(c:?_floor)
	movff	(c:floor@i+1),(c:?_floor+1)
	movff	(c:floor@i+2),(c:?_floor+2)
	line	30
	
l667:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "/opt/microchip/xc8/v1.45/sources/common/fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   68[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   78[COMRAM] unsigned long 
;;  exp1            1   82[COMRAM] unsigned char 
;;  sign1           1   77[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   68[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
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
psect	text16,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/fttol.c"
	line	44
global __ptext16
__ptext16:
psect	text16
	file	"/opt/microchip/xc8/v1.45/sources/common/fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 27
	line	49
	
l3522:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)&0ffh,c
	clrf	(??___fttol+0+0+2)&0ffh,c
	rlcf	((c:___fttol@f1+1)),c,w
	rlcf	(??___fttol+0+0)&0ffh,c
	bnc	u3281
	bsf	(??___fttol+0+0+1)&0ffh,c,0
u3281:
	movf	(??___fttol+0+0),c,w
	movwf	((c:___fttol@exp1)),c
	movf	((c:___fttol@exp1)),c,w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3526
u3290:
	line	50
	
l3524:
	clrf	((c:?___fttol)),c
	clrf	((c:?___fttol+1)),c
	clrf	((c:?___fttol+2)),c
	clrf	((c:?___fttol+3)),c

	goto	l774
	line	51
	
l3526:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u3300
u3305:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u3300:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u3305
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@sign1)),c
	line	52
	
l3528:
	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l3530:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l3532:
	movf	((c:___fttol@f1)),c,w
	movwf	((c:___fttol@lval)),c
	movf	((c:___fttol@f1+1)),c,w
	movwf	1+((c:___fttol@lval)),c
	
	movf	((c:___fttol@f1+2)),c,w
	movwf	2+((c:___fttol@lval)),c
	
	clrf	3+((c:___fttol@lval)),c
	line	55
	
l3534:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1)),c
	line	56
	
l3536:
	btfsc	((c:___fttol@exp1)),c,7
	goto	u3310
	goto	u3311

u3311:
	goto	l3546
u3310:
	line	57
	
l3538:
		movf	((c:___fttol@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u3321
	goto	u3320

u3321:
	goto	l3542
u3320:
	goto	l3524
	line	60
	
l3542:
	bcf	status,0
	rrcf	((c:___fttol@lval+3)),c
	rrcf	((c:___fttol@lval+2)),c
	rrcf	((c:___fttol@lval+1)),c
	rrcf	((c:___fttol@lval)),c
	line	61
	
l3544:
	incfsz	((c:___fttol@exp1)),c
	
	goto	l3542
	goto	l3554
	line	63
	
l3546:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1)),c
	goto	u3331
	goto	u3330

u3331:
	goto	l3552
u3330:
	goto	l3524
	line	66
	
l3550:
	bcf	status,0
	rlcf	((c:___fttol@lval)),c
	rlcf	((c:___fttol@lval+1)),c
	rlcf	((c:___fttol@lval+2)),c
	rlcf	((c:___fttol@lval+3)),c
	line	67
	decf	((c:___fttol@exp1)),c
	line	65
	
l3552:
	movf	((c:___fttol@exp1)),c,w
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l3550
u3340:
	line	70
	
l3554:
	movf	((c:___fttol@sign1)),c,w
	btfsc	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l3558
u3350:
	line	71
	
l3556:
	comf	((c:___fttol@lval+3)),c
	comf	((c:___fttol@lval+2)),c
	comf	((c:___fttol@lval+1)),c
	negf	((c:___fttol@lval)),c
	movlw	0
	addwfc	((c:___fttol@lval+1)),c
	addwfc	((c:___fttol@lval+2)),c
	addwfc	((c:___fttol@lval+3)),c
	line	72
	
l3558:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	line	73
	
l774:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.45/sources/common/ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    8[COMRAM] float 
;;  ff2             3   11[COMRAM] float 
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
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
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
psect	text17,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/ftge.c"
	line	4
global __ptext17
__ptext17:
psect	text17
	file	"/opt/microchip/xc8/v1.45/sources/common/ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 27
	line	6
	
l3504:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l3508
u3250:
	line	7
	
l3506:
	movlw	0
	movwf	(??___ftge+0+0)&0ffh,c
	movlw	0
	movwf	(??___ftge+0+0+1)&0ffh,c
	movlw	080h
	movwf	(??___ftge+0+0+2)&0ffh,c
	movf	((c:___ftge@ff1)),c,w
	subwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff1)),c
	movf	((c:___ftge@ff1+1)),c,w
	subwfb	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff1)),c
	
	movf	((c:___ftge@ff1+2)),c,w
	subwfb	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff1)),c
	line	8
	
l3508:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l3512
u3260:
	line	9
	
l3510:
	movlw	0
	movwf	(??___ftge+0+0)&0ffh,c
	movlw	0
	movwf	(??___ftge+0+0+1)&0ffh,c
	movlw	080h
	movwf	(??___ftge+0+0+2)&0ffh,c
	movf	((c:___ftge@ff2)),c,w
	subwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff2)),c
	movf	((c:___ftge@ff2+1)),c,w
	subwfb	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff2)),c
	
	movf	((c:___ftge@ff2+2)),c,w
	subwfb	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff2)),c
	line	10
	
l3512:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l3514:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff2+2)),c

	line	12
		movf	((c:___ftge@ff2)),c,w
	subwf	((c:___ftge@ff1)),c,w
	movf	((c:___ftge@ff2+1)),c,w
	subwfb	((c:___ftge@ff1+1)),c,w
	movf	((c:___ftge@ff2+2)),c,w
	subwfb	((c:___ftge@ff1+2)),c,w
	btfsc	status,0
	goto	u3271
	goto	u3270

u3271:
	goto	l3518
u3270:
	
l3516:
	bcf	status,0
	goto	l747
	
l3518:
	bsf	status,0
	line	13
	
l747:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "/opt/microchip/xc8/v1.45/sources/common/altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   83[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   92[COMRAM] unsigned char 
;;  exp             1   91[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   83[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/altoft.c"
	line	42
global __ptext18
__ptext18:
psect	text18
	file	"/opt/microchip/xc8/v1.45/sources/common/altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:
;incstack = 0
	opt	stack 23
	line	45
	
l3358:
	clrf	((c:___altoft@sign)),c
	line	46
	
l3360:
	movlw	low(08Eh)
	movwf	((c:___altoft@exp)),c
	line	47
	
l3362:
	btfsc	((c:___altoft@c+3)),c,7
	goto	u2940
	goto	u2941

u2941:
	goto	l3370
u2940:
	line	48
	
l3364:
	comf	((c:___altoft@c+3)),c
	comf	((c:___altoft@c+2)),c
	comf	((c:___altoft@c+1)),c
	negf	((c:___altoft@c)),c
	movlw	0
	addwfc	((c:___altoft@c+1)),c
	addwfc	((c:___altoft@c+2)),c
	addwfc	((c:___altoft@c+3)),c
	line	49
	
l3366:
	movlw	low(01h)
	movwf	((c:___altoft@sign)),c
	goto	l3370
	line	53
	
l3368:
	bcf	status,0
	rrcf	((c:___altoft@c+3)),c
	rrcf	((c:___altoft@c+2)),c
	rrcf	((c:___altoft@c+1)),c
	rrcf	((c:___altoft@c)),c
	line	54
	incf	((c:___altoft@exp)),c
	line	52
	
l3370:
	movlw	0
	andwf	((c:___altoft@c)),c,w
	movwf	(??___altoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___altoft@c+1)),c,w
	movwf	1+(??___altoft+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___altoft@c+2)),c,w
	movwf	2+(??___altoft+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___altoft@c+3)),c,w
	movwf	3+(??___altoft+0+0)&0ffh,c
	movf	(??___altoft+0+0),c,w
iorwf	(??___altoft+0+1),c,w
iorwf	(??___altoft+0+2),c,w
iorwf	(??___altoft+0+3),c,w
	btfss	status,2
	goto	u2951
	goto	u2950

u2951:
	goto	l3368
u2950:
	line	56
	
l3372:
	movff	(c:___altoft@c),(c:___ftpack@arg)
	movff	(c:___altoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___altoft@c+2),(c:___ftpack@arg+2)
	movff	(c:___altoft@exp),(c:___ftpack@exp)
	movff	(c:___altoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___altoft)
	movff	1+?___ftpack,(c:?___altoft+1)
	movff	2+?___ftpack,(c:?___altoft+2)
	line	57
	
l521:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 20 in file "/opt/microchip/xc8/v1.45/sources/common/ftsub.c"
;; Parameters:    Size  Location     Type
;;  f1              3   47[COMRAM] float 
;;  f2              3   50[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   47[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/ftsub.c"
	line	20
global __ptext19
__ptext19:
psect	text19
	file	"/opt/microchip/xc8/v1.45/sources/common/ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:
;incstack = 0
	opt	stack 25
	line	23
	
l3632:
	movf	((c:___ftsub@f2)),c,w
iorwf	((c:___ftsub@f2+1)),c,w
iorwf	((c:___ftsub@f2+2)),c,w
	btfsc	status,2
	goto	u3461
	goto	u3460

u3461:
	goto	l3636
u3460:
	line	24
	
l3634:
	movlw	low(0800000h)
	xorwf	((c:___ftsub@f2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftsub@f2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftsub@f2+2)),c

	line	26
	
l3636:
	movff	(c:___ftsub@f1),(c:___ftadd@f1)
	movff	(c:___ftsub@f1+1),(c:___ftadd@f1+1)
	movff	(c:___ftsub@f1+2),(c:___ftadd@f1+2)
	movff	(c:___ftsub@f2),(c:___ftadd@f2)
	movff	(c:___ftsub@f2+1),(c:___ftadd@f2+1)
	movff	(c:___ftsub@f2+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?___ftsub)
	movff	1+?___ftadd,(c:?___ftsub+1)
	movff	2+?___ftadd,(c:?___ftsub+2)
	line	27
	
l770:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.45/sources/common/ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/ftneg.c"
	line	15
global __ptext20
__ptext20:
psect	text20
	file	"/opt/microchip/xc8/v1.45/sources/common/ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:
;incstack = 0
	opt	stack 25
	line	17
	
l3682:; BSR set to: 0

	movf	((c:___ftneg@f1)),c,w
iorwf	((c:___ftneg@f1+1)),c,w
iorwf	((c:___ftneg@f1+2)),c,w
	btfsc	status,2
	goto	u3531
	goto	u3530

u3531:
	goto	l763
u3530:
	line	18
	
l3684:; BSR set to: 0

	movlw	low(0800000h)
	xorwf	((c:___ftneg@f1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftneg@f1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftneg@f1+2)),c

	
l763:; BSR set to: 0

	line	19
	movff	(c:___ftneg@f1),(c:?___ftneg)
	movff	(c:___ftneg@f1+1),(c:?___ftneg+1)
	movff	(c:___ftneg@f1+2),(c:?___ftneg+2)
	line	20
	
l764:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "/opt/microchip/xc8/v1.45/sources/common/ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[COMRAM] float 
;;  f2              3   19[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   26[COMRAM] float 
;;  sign            1   30[COMRAM] unsigned char 
;;  exp             1   29[COMRAM] unsigned char 
;;  cntr            1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/ftdiv.c"
	line	54
global __ptext21
__ptext21:
psect	text21
	file	"/opt/microchip/xc8/v1.45/sources/common/ftdiv.c"
	line	54
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	63
	
l3596:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f1+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u3411
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u3411:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@exp)),c
	movf	((c:___ftdiv@exp)),c,w
	btfss	status,2
	goto	u3421
	goto	u3420
u3421:
	goto	l3600
u3420:
	line	64
	
l3598:
	clrf	((c:?___ftdiv)),c
	clrf	((c:?___ftdiv+1)),c
	clrf	((c:?___ftdiv+2)),c

	goto	l738
	line	65
	
l3600:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f2+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u3431
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u3431:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@sign)),c
	movf	((c:___ftdiv@sign)),c,w
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l739
u3440:
	line	66
	
l3602:
	clrf	((c:?___ftdiv)),c
	clrf	((c:?___ftdiv+1)),c
	clrf	((c:?___ftdiv+2)),c

	goto	l738
	
l739:
	line	67
	clrf	((c:___ftdiv@f3)),c
	clrf	((c:___ftdiv@f3+1)),c
	clrf	((c:___ftdiv@f3+2)),c

	line	68
	
l3604:
	movf	((c:___ftdiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp)),c
	line	69
	
l3606:
	movff	0+((c:___ftdiv@f1)+02h),(c:___ftdiv@sign)
	line	70
	movf	(0+((c:___ftdiv@f2)+02h)),c,w
	xorwf	((c:___ftdiv@sign)),c
	line	71
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign)),c
	line	72
	
l3608:
	bsf	(0+(15/8)+(c:___ftdiv@f1)),c,(15)&7
	line	73
	
l3610:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2)),c

	line	74
	
l3612:
	bsf	(0+(15/8)+(c:___ftdiv@f2)),c,(15)&7
	line	75
	
l3614:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2)),c

	line	76
	
l3616:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr)),c
	line	78
	
l3618:
	bcf	status,0
	rlcf	((c:___ftdiv@f3)),c
	rlcf	((c:___ftdiv@f3+1)),c
	rlcf	((c:___ftdiv@f3+2)),c
	line	79
	
l3620:
		movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c,w
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c,w
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c,w
	btfss	status,0
	goto	u3451
	goto	u3450

u3451:
	goto	l741
u3450:
	line	80
	
l3622:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c

	line	81
	
l3624:
	bsf	(0+(0/8)+(c:___ftdiv@f3)),c,(0)&7
	line	82
	
l741:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1)),c
	rlcf	((c:___ftdiv@f1+1)),c
	rlcf	((c:___ftdiv@f1+2)),c
	line	84
	
l3626:
	decfsz	((c:___ftdiv@cntr)),c
	
	goto	l3618
	line	85
	
l3628:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	line	86
	
l738:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "/opt/microchip/xc8/v1.45/sources/common/lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   16[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/lltoft.c"
	line	35
global __ptext22
__ptext22:
psect	text22
	file	"/opt/microchip/xc8/v1.45/sources/common/lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:
;incstack = 0
	opt	stack 25
	line	38
	
l3812:
	movlw	low(08Eh)
	movwf	((c:___lltoft@exp)),c
	line	41
	goto	l3816
	line	42
	
l3814:
	bcf	status,0
	rrcf	((c:___lltoft@c+3)),c
	rrcf	((c:___lltoft@c+2)),c
	rrcf	((c:___lltoft@c+1)),c
	rrcf	((c:___lltoft@c)),c
	line	43
	incf	((c:___lltoft@exp)),c
	line	41
	
l3816:
	movlw	0
	andwf	((c:___lltoft@c)),c,w
	movwf	(??___lltoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___lltoft@c+1)),c,w
	movwf	1+(??___lltoft+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___lltoft@c+2)),c,w
	movwf	2+(??___lltoft+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___lltoft@c+3)),c,w
	movwf	3+(??___lltoft+0+0)&0ffh,c
	movf	(??___lltoft+0+0),c,w
iorwf	(??___lltoft+0+1),c,w
iorwf	(??___lltoft+0+2),c,w
iorwf	(??___lltoft+0+3),c,w
	btfss	status,2
	goto	u3711
	goto	u3710

u3711:
	goto	l3814
u3710:
	line	45
	
l3818:
	movff	(c:___lltoft@c),(c:___ftpack@arg)
	movff	(c:___lltoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___lltoft@c+2),(c:___ftpack@arg+2)
	movff	(c:___lltoft@exp),(c:___ftpack@exp)
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lltoft)
	movff	1+?___ftpack,(c:?___lltoft+1)
	movff	2+?___ftpack,(c:?___lltoft+2)
	line	46
	
l833:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	_log10

;; *************** function _log10 *****************
;; Defined at:
;;		line 39 in file "/opt/microchip/xc8/v1.45/sources/common/log.c"
;; Parameters:    Size  Location     Type
;;  x               3   62[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   62[COMRAM] float 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___ftmul
;;		_log
;; This function is called by:
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/log.c"
	line	39
global __ptext23
__ptext23:
psect	text23
	file	"/opt/microchip/xc8/v1.45/sources/common/log.c"
	line	39
	global	__size_of_log10
	__size_of_log10	equ	__end_of_log10-_log10
	
_log10:
;incstack = 0
	opt	stack 23
	line	41
	
l3884:
	movff	(c:log10@x),(c:log@x)
	movff	(c:log10@x+1),(c:log@x+1)
	movff	(c:log10@x+2),(c:log@x+2)
	call	_log	;wreg free
	movff	0+?_log,(c:_log10$1314)
	movff	1+?_log,(c:_log10$1314+1)
	movff	2+?_log,(c:_log10$1314+2)
	
l3886:
	movff	(c:_log10$1314),(c:___ftmul@f1)
	movff	(c:_log10$1314+1),(c:___ftmul@f1+1)
	movff	(c:_log10$1314+2),(c:___ftmul@f1+2)
	movlw	low(float24(0.43429448189999997))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.43429448189999997))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.43429448189999997))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_log10)
	movff	1+?___ftmul,(c:?_log10+1)
	movff	2+?___ftmul,(c:?_log10+2)
	line	42
	
l849:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_log10
	__end_of_log10:
	signat	_log10,4219
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "/opt/microchip/xc8/v1.45/sources/common/log.c"
;; Parameters:    Size  Location     Type
;;  x               3   57[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exponent        2   60[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  3   57[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_log10
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=1
	line	5
global __ptext24
__ptext24:
psect	text24
	file	"/opt/microchip/xc8/v1.45/sources/common/log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:
;incstack = 0
	opt	stack 23
	line	24
	
l3822:
	btfsc	((c:log@x+2)),c,7
	goto	u3720
	goto	u3721

u3721:
	goto	l3826
u3720:
	line	26
	
l3824:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c

	goto	l845
	line	28
	
l3826:
	movf	((c:log@x)),c,w
iorwf	((c:log@x+1)),c,w
iorwf	((c:log@x+2)),c,w
	btfss	status,2
	goto	u3731
	goto	u3730

u3731:
	goto	l3830
u3730:
	line	30
	
l3828:
	clrf	((c:?_log)),c
	clrf	((c:?_log+1)),c
	clrf	((c:?_log+2)),c

	goto	l845
	line	32
	
l3830:
	movlw	low(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(2.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

		movlw	low(log@exponent)
	movwf	((c:frexp@eptr)),c

	movff	(c:log@x),(c:frexp@value)
	movff	(c:log@x+1),(c:frexp@value+1)
	movff	(c:log@x+2),(c:frexp@value+2)
	call	_frexp	;wreg free
	movff	0+?_frexp,(c:___ftmul@f1)
	movff	1+?_frexp,(c:___ftmul@f1+1)
	movff	2+?_frexp,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movlw	low(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(-1.0000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:log@x)
	movff	1+?___ftadd,(c:log@x+1)
	movff	2+?___ftadd,(c:log@x+2)
	line	33
	
l3832:
	decf	((c:log@exponent)),c
	btfss	status,0
	decf	((c:log@exponent+1)),c
	line	34
	
l3834:
	movff	(c:log@x),(c:eval_poly@x)
	movff	(c:log@x+1),(c:eval_poly@x+1)
	movff	(c:log@x+2),(c:eval_poly@x+2)
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
	line	35
	
l3836:
	movlw	low(float24(0.69314718055994995))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.69314718055994995))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.69314718055994995))
	movwf	((c:___ftmul@f2+2)),c

	movff	(c:log@exponent),(c:___awtoft@c)
	movff	(c:log@exponent+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftmul@f1)
	movff	1+?___awtoft,(c:___ftmul@f1+1)
	movff	2+?___awtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	movff	(c:log@x),(c:___ftadd@f2)
	movff	(c:log@x+1),(c:___ftadd@f2+1)
	movff	(c:log@x+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?_log)
	movff	1+?___ftadd,(c:?_log+1)
	movff	2+?___ftadd,(c:?_log+2)
	line	36
	
l845:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "/opt/microchip/xc8/v1.45/sources/common/frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    8[COMRAM] int 
;;  eptr            1   11[COMRAM] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] PTR int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_log
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/frexp.c"
	line	254
global __ptext25
__ptext25:
psect	text25
	file	"/opt/microchip/xc8/v1.45/sources/common/frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:
;incstack = 0
	opt	stack 25
	line	256
	
l3484:
	movf	((c:frexp@value)),c,w
iorwf	((c:frexp@value+1)),c,w
iorwf	((c:frexp@value+2)),c,w
	btfss	status,2
	goto	u3231
	goto	u3230

u3231:
	goto	l3492
u3230:
	line	257
	
l3486:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	258
	
l3488:
	clrf	((c:?_frexp)),c
	clrf	((c:?_frexp+1)),c
	clrf	((c:?_frexp+2)),c

	goto	l689
	line	261
	
l3492:
	movf	(0+((c:frexp@value)+02h)),c,w
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
	btfsc	(0+((c:frexp@value)+01h)),c,7
	goto	u3241
	goto	u3240
u3241:
	movlw	1
	goto	u3246
u3240:
	movlw	0
u3246:
	iorwf	postinc2
	movlw	0
	iorwf	postdec2
	line	263
	
l3494:
	movf	((c:frexp@eptr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(-126)
	addwf	postinc2
	movlw	high(-126)
	addwfc	postdec2
	line	268
	
l3496:
	movf	(0+((c:frexp@value)+02h)),c,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	(0+((c:frexp@value)+02h)),c
	line	269
	
l3498:
	bcf	(0+((c:frexp@value)+01h)),c,7
	line	273
	
l3500:
	movff	(c:frexp@value),(c:?_frexp)
	movff	(c:frexp@value+1),(c:?_frexp+1)
	movff	(c:frexp@value+2),(c:?_frexp+2)
	line	274
	
l689:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.45/sources/common/evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               3   47[COMRAM] PTR int 
;;  d               1   50[COMRAM] PTR const 
;;		 -> exp@coeff(30), log@coeff(27), 
;;  n               2   51[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  res             3   54[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  3   47[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;;		___ftmul
;; This function is called by:
;;		_log
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/evalpoly.c"
	line	4
global __ptext26
__ptext26:
psect	text26
	file	"/opt/microchip/xc8/v1.45/sources/common/evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:
;incstack = 0
	opt	stack 23
	line	8
	
l3686:
	movf	((c:eval_poly@n)),c,w
	mullw	03h
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
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res+1)
	tblrd*-
		dw	0FFFFh; errata NOP

	movff	tablat,(c:eval_poly@res+2)

	line	9
	goto	l3690
	line	10
	
l3688:
	movff	(c:eval_poly@res),(c:___ftmul@f2)
	movff	(c:eval_poly@res+1),(c:___ftmul@f2+1)
	movff	(c:eval_poly@res+2),(c:___ftmul@f2+2)
	movff	(c:eval_poly@x),(c:___ftmul@f1)
	movff	(c:eval_poly@x+1),(c:___ftmul@f1+1)
	movff	(c:eval_poly@x+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	decf	((c:eval_poly@n)),c
	btfss	status,0
	decf	((c:eval_poly@n+1)),c
	movf	((c:eval_poly@n)),c,w
	mullw	03h
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
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___ftadd@f2)
	tblrd*+
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___ftadd@f2+1)
	tblrd*-
		dw	0FFFFh; errata NOP

	movff	tablat,(c:___ftadd@f2+2)

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:eval_poly@res)
	movff	1+?___ftadd,(c:eval_poly@res+1)
	movff	2+?___ftadd,(c:eval_poly@res+2)
	line	9
	
l3690:
	movf	((c:eval_poly@n)),c,w
iorwf	((c:eval_poly@n+1)),c,w
	btfss	status,2
	goto	u3541
	goto	u3540

u3541:
	goto	l3688
u3540:
	
l1060:
	line	11
	movff	(c:eval_poly@res),(c:?_eval_poly)
	movff	(c:eval_poly@res+1),(c:?_eval_poly+1)
	movff	(c:eval_poly@res+2),(c:?_eval_poly+2)
	line	12
	
l1061:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12411
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.45/sources/common/ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   32[COMRAM] float 
;;  f2              3   35[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   42[COMRAM] unsigned um
;;  sign            1   46[COMRAM] unsigned char 
;;  cntr            1   45[COMRAM] unsigned char 
;;  exp             1   41[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
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
psect	text27,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/ftmul.c"
	line	62
global __ptext27
__ptext27:
psect	text27
	file	"/opt/microchip/xc8/v1.45/sources/common/ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 26
	line	67
	
l3440:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u3171
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u3171:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	movf	((c:___ftmul@exp)),c,w
	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l3444
u3180:
	line	68
	
l3442:
	clrf	((c:?___ftmul)),c
	clrf	((c:?___ftmul+1)),c
	clrf	((c:?___ftmul+2)),c

	goto	l753
	line	69
	
l3444:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u3191
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u3191:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	movf	((c:___ftmul@sign)),c,w
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l3448
u3200:
	line	70
	
l3446:
	clrf	((c:?___ftmul)),c
	clrf	((c:?___ftmul+1)),c
	clrf	((c:?___ftmul+2)),c

	goto	l753
	line	71
	
l3448:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l3450:
	movff	0+((c:___ftmul@f1)+02h),(c:___ftmul@sign)
	line	73
	movf	(0+((c:___ftmul@f2)+02h)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l3452:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l3454:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l3456:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l3458:
	clrf	((c:___ftmul@f3_as_product)),c
	clrf	((c:___ftmul@f3_as_product+1)),c
	clrf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l3460:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	line	136
	
l3462:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l3466
u3210:
	line	137
	
l3464:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	line	138
	
l3466:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	139
	bcf	status,0
	rlcf	((c:___ftmul@f2)),c
	rlcf	((c:___ftmul@f2+1)),c
	rlcf	((c:___ftmul@f2+2)),c
	line	140
	
l3468:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l3462
	line	143
	
l3470:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	line	145
	
l3472:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l3476
u3220:
	line	146
	
l3474:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	line	147
	
l3476:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	148
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2)),c
	rrcf	((c:___ftmul@f3_as_product+1)),c
	rrcf	((c:___ftmul@f3_as_product)),c
	line	149
	
l3478:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l3472
	line	156
	
l3480:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	line	157
	
l753:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "/opt/microchip/xc8/v1.45/sources/common/ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   20[COMRAM] float 
;;  f2              3   23[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   31[COMRAM] unsigned char 
;;  exp2            1   30[COMRAM] unsigned char 
;;  sign            1   29[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   20[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;;		___ftsub
;;		_log
;;		_eval_poly
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/ftadd.c"
	line	86
global __ptext28
__ptext28:
psect	text28
	file	"/opt/microchip/xc8/v1.45/sources/common/ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 25
	line	90
	
l3376:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u2961
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u2961:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u2971
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u2971:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l3378:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l706
u2980:
	
l3380:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u2991
	goto	u2990

u2991:
	goto	l3384
u2990:
	
l3382:
	movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u3001
	goto	u3000

u3001:
	goto	l3384
u3000:
	
l706:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l707
	line	94
	
l3384:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l710
u3010:
	
l3386:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u3021
	goto	u3020

u3021:
	goto	l3390
u3020:
	
l3388:
	movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u3031
	goto	u3030

u3031:
	goto	l3390
u3030:
	
l710:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l707
	line	96
	
l3390:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l3392:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l3396
u3040:
	line	98
	
l3394:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	line	99
	
l3396:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l712
u3050:
	line	100
	
l3398:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l712:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l3400:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l3402:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l3404:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u3061
	goto	u3060

u3061:
	goto	l3416
u3060:
	line	110
	
l3406:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l3408:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u3071
	goto	u3070

u3071:
	goto	l3414
u3070:
	
l3410:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l3406
u3080:
	goto	l3414
	line	114
	
l3412:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	line	113
	
l3414:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u3091
	goto	u3090

u3091:
	goto	l3412
u3090:
	goto	l721
	line	117
	
l3416:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u3101
	goto	u3100

u3101:
	goto	l721
u3100:
	line	121
	
l3418:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l3420:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u3111
	goto	u3110

u3111:
	goto	l3426
u3110:
	
l3422:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l3418
u3120:
	goto	l3426
	line	125
	
l3424:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	line	124
	
l3426:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u3131
	goto	u3130

u3131:
	goto	l3424
u3130:
	line	129
	
l721:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l730
u3140:
	line	131
	
l3428:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2)),c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2)),c

	line	133
	
l730:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l731
u3150:
	line	136
	
l3430:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	138
	
l731:
	line	139
	clrf	((c:___ftadd@sign)),c
	line	140
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l3436
u3160:
	line	142
	
l3432:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	144
	
l3434:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	line	146
	
l3436:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	line	148
	
l707:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "/opt/microchip/xc8/v1.45/sources/common/awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_format_double
;;		_log
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/awtoft.c"
	line	32
global __ptext29
__ptext29:
psect	text29
	file	"/opt/microchip/xc8/v1.45/sources/common/awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 24
	line	36
	
l3640:
	clrf	((c:___awtoft@sign)),c
	line	37
	
l3642:
	btfsc	((c:___awtoft@c+1)),c,7
	goto	u3470
	goto	u3471

u3471:
	goto	l3648
u3470:
	line	38
	
l3644:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l3646:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	line	41
	
l3648:
	movff	(c:___awtoft@c),(c:___ftpack@arg)
	movff	(c:___awtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movff	(c:___awtoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___awtoft)
	movff	1+?___ftpack,(c:?___awtoft+1)
	movff	2+?___ftpack,(c:?___awtoft+2)
	line	42
	
l630:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	_calibrate

;; *************** function _calibrate *****************
;; Defined at:
;;		line 26 in file "src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   66[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___lwtoft
;;		_delay10ms
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_putch
;;		_measure_freq
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"src/measure.c"
	line	26
global __ptext30
__ptext30:
psect	text30
	file	"src/measure.c"
	line	26
	global	__size_of_calibrate
	__size_of_calibrate	equ	__end_of_calibrate-_calibrate
	
_calibrate:
;incstack = 0
	opt	stack 23
	line	30
	
l4070:
;measure.c: 27: uint8_t i;
;measure.c: 30: lcd_clear();
	call	_lcd_clear	;wreg free
	line	32
	
l4072:
;measure.c: 32: lcd_gotoxy(0, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	33
	
l4074:
;measure.c: 33: put_str("Calibrating");
		movlw	low(STR_6)
	movwf	((c:put_str@s)),c

	call	_put_str	;wreg free
	line	35
	
l4076:
;measure.c: 35: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	39
	
l4078:
;measure.c: 39: put_str("please wait...");
		movlw	low(STR_7)
	movwf	((c:put_str@s)),c

	call	_put_str	;wreg free
	line	42
	
l4080:
;measure.c: 42: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	44
	
l4082:
;measure.c: 44: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtoft@c)
	movff	1+?_measure_freq,(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:_F1)
	movff	1+?___lwtoft,(c:_F1+1)
	movff	2+?___lwtoft,(c:_F1+2)
	line	45
	
l4084:
;measure.c: 45: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	47
;measure.c: 47: F1 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtoft@c)
	movff	1+?_measure_freq,(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:_F1)
	movff	1+?___lwtoft,(c:_F1+1)
	movff	2+?___lwtoft,(c:_F1+2)
	line	48
	
l4086:
;measure.c: 48: LATC |= (1 << 5);
	bsf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	50
	
l4088:
;measure.c: 50: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtoft@c)
	movff	1+?_measure_freq,(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(_F2)
	movff	1+?___lwtoft,(_F2+1)
	movff	2+?___lwtoft,(_F2+2)
	line	51
	
l4090:
;measure.c: 51: delay10ms(50);
	movlw	(032h)&0ffh
	
	call	_delay10ms
	line	53
	
l4092:
;measure.c: 53: F2 = (double)measure_freq();
	call	_measure_freq	;wreg free
	movff	0+?_measure_freq,(c:___lwtoft@c)
	movff	1+?_measure_freq,(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(_F2)
	movff	1+?___lwtoft,(_F2+1)
	movff	2+?___lwtoft,(_F2+2)
	line	54
	
l4094:
;measure.c: 54: LATC &= ~(1 << 5);
	bcf	(0+(5/8)+(c:3979)),c,(5)&7	;volatile
	line	57
	
l4096:
;measure.c: 57: lcd_gotoxy(11, 0);
	movlw	low(0)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0Bh)&0ffh
	
	call	_lcd_gotoxy
	line	58
	
l4098:
;measure.c: 58: for(i = 0; i < 6; i++) {
	clrf	((c:calibrate@i)),c
	line	59
	
l4104:
;measure.c: 59: lcd_putch('=');
	movlw	(03Dh)&0ffh
	
	call	_lcd_putch
	line	61
	
l4106:
;measure.c: 61: delay10ms(28);
	movlw	(01Ch)&0ffh
	
	call	_delay10ms
	line	58
	incf	((c:calibrate@i)),c
	
l4108:
		movlw	06h-1
	cpfsgt	((c:calibrate@i)),c
	goto	u3941
	goto	u3940

u3941:
	goto	l4104
u3940:
	line	67
	
l366:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_calibrate
	__end_of_calibrate:
	signat	_calibrate,89
	global	_put_str

;; *************** function _put_str *****************
;; Defined at:
;;		line 501 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  s               1   13[COMRAM] PTR const unsigned char 
;;		 -> STR_10(13), STR_9(10), STR_7(15), STR_6(12), 
;; Auto vars:     Size  Location     Type
;;  i               2   15[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_output_putch
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	file	"src/print.c"
	line	501
global __ptext31
__ptext31:
psect	text31
	file	"src/print.c"
	line	501
	global	__size_of_put_str
	__size_of_put_str	equ	__end_of_put_str-_put_str
	
_put_str:
;incstack = 0
	opt	stack 23
	line	504
	
l3924:
;print.c: 502: int i;
;print.c: 504: for(i = 0; s[i]; i++) {
	clrf	((c:put_str@i)),c
	clrf	((c:put_str@i+1)),c
	goto	l3930
	line	505
	
l3926:
;print.c: 505: output_putch(s[i]);
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	
	call	_output_putch
	line	504
	
l3928:
	infsnz	((c:put_str@i)),c
	incf	((c:put_str@i+1)),c
	
l3930:
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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l3926
u3870:
	line	507
	
l430:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_put_str
	__end_of_put_str:
	signat	_put_str,4217
	global	_output_putch

;; *************** function _output_putch *****************
;; Defined at:
;;		line 488 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_put_str
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	line	488
global __ptext32
__ptext32:
psect	text32
	file	"src/print.c"
	line	488
	global	__size_of_output_putch
	__size_of_output_putch	equ	__end_of_output_putch-_output_putch
	
_output_putch:
;incstack = 0
	opt	stack 23
;output_putch@c stored from wreg
	movwf	((c:output_putch@c)),c
	line	490
	
l3810:
;print.c: 490: lcd_putch(c);
	movf	((c:output_putch@c)),c,w
	
	call	_lcd_putch
	line	495
	
l424:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_output_putch
	__end_of_output_putch:
	signat	_output_putch,4217
	global	_lcd_putch

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 170 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_puts
;;		_calibrate
;;		_output_putch
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	file	"lib/lcd44780.c"
	line	170
global __ptext33
__ptext33:
psect	text33
	file	"lib/lcd44780.c"
	line	170
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:
;incstack = 0
	opt	stack 24
;lcd_putch@value stored from wreg
	movwf	((c:lcd_putch@value)),c
	line	171
	
l3562:
;lcd44780.c: 171: lcd_send((unsigned char)value, 1);
	movlw	low(01h)
	movwf	((c:lcd_send@mode)),c
	movf	((c:lcd_putch@value)),c,w
	
	call	_lcd_send
	line	172
	
l216:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
	signat	_lcd_putch,4217
	global	_measure_freq

;; *************** function _measure_freq *****************
;; Defined at:
;;		line 73 in file "src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   61[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   58[COMRAM] unsigned short 
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
;; Hardware stack levels required when called:    6
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
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"src/measure.c"
	line	73
global __ptext34
__ptext34:
psect	text34
	file	"src/measure.c"
	line	73
	global	__size_of_measure_freq
	__size_of_measure_freq	equ	__end_of_measure_freq-_measure_freq
	
_measure_freq:
;incstack = 0
	opt	stack 23
	line	76
	
l3932:
;measure.c: 74: uint16_t count;
;measure.c: 76: INTCONbits.TMR0IF = 0;
	bcf	((c:4082)),c,2	;volatile
	line	80
	
l3934:
;measure.c: 80: TRISA &= ~0b00010000;
	bcf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	82
	
l3936:
;measure.c: 82: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	98
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	118
u4167:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4167
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4167
	nop2
opt asmopt_pop

	line	85
	
l3938:
;measure.c: 85: TMR0 = 0x00;
	clrf	((c:4054)),c	;volatile
	clrf	((c:4054+1)),c	;volatile
	line	90
	
l3940:
;measure.c: 90: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4177:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4177
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4177
opt asmopt_pop

	line	91
	
l3942:
;measure.c: 91: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4187:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4187
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4187
opt asmopt_pop

	line	92
	
l3944:
;measure.c: 92: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4197:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4197
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4197
opt asmopt_pop

	line	93
	
l3946:
;measure.c: 93: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4207:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4207
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4207
opt asmopt_pop

	line	94
	
l3948:
;measure.c: 94: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4217:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4217
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4217
opt asmopt_pop

	line	95
	
l3950:
;measure.c: 95: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4227:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4227
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4227
opt asmopt_pop

	line	96
	
l3952:
;measure.c: 96: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4237:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4237
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4237
opt asmopt_pop

	line	97
	
l3954:
;measure.c: 97: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4247:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4247
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4247
opt asmopt_pop

	line	98
	
l3956:
;measure.c: 98: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4257:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4257
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4257
opt asmopt_pop

	line	99
	
l3958:
;measure.c: 99: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	49
movwf	(??_measure_freq+0+0)&0ffh,c,f
	movlw	187
u4267:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4267
	decfsz	(??_measure_freq+0+0)&0ffh,c,f
	bra	u4267
opt asmopt_pop

	line	104
	
l3960:
;measure.c: 104: TRISA |= 0b00010000;
	bsf	(0+(4/8)+(c:3986)),c,(4)&7	;volatile
	line	107
	
l3962:
;measure.c: 107: count = timer0_read_ps();
	call	_timer0_read_ps	;wreg free
	movff	0+?_timer0_read_ps,(c:measure_freq@count)
	movff	1+?_timer0_read_ps,(c:measure_freq@count+1)
	line	110
	
l3964:
;measure.c: 110: lcd_gotoxy(0, 1);
	movlw	low(01h)
	movwf	((c:lcd_gotoxy@row)),c
	movlw	(0)&0ffh
	
	call	_lcd_gotoxy
	line	112
	
l3966:
;measure.c: 112: buffer_init();
	call	_buffer_init	;wreg free
	line	113
	
l3968:; BSR set to: 0

;measure.c: 113: buffer_puts("Freq=");
		movlw	low(STR_8)
	movwf	((c:buffer_puts@x)),c

	call	_buffer_puts	;wreg free
	line	114
	
l3970:; BSR set to: 0

;measure.c: 114: format_number(count, 10, 5);
	movff	(c:measure_freq@count),(c:format_number@n)
	movff	(c:measure_freq@count+1),(c:format_number@n+1)
	movlw	low(0Ah)
	movwf	((c:format_number@base)),c
	movlw	low(05h)
	movwf	((c:format_number@pad)),c
	call	_format_number	;wreg free
	line	115
	
l3972:
;measure.c: 115: print_buffer();
	call	_print_buffer	;wreg free
	line	117
	
l3974:
;measure.c: 117: return count;
	movff	(c:measure_freq@count),(c:?_measure_freq)
	movff	(c:measure_freq@count+1),(c:?_measure_freq+1)
	line	118
	
l369:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_measure_freq
	__end_of_measure_freq:
	signat	_measure_freq,90
	global	_timer0_read_ps

;; *************** function _timer0_read_ps *****************
;; Defined at:
;;		line 77 in file "lib/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   13[COMRAM] unsigned int 
;;  prev            1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMRAM] unsigned short 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	file	"lib/timer.c"
	line	77
global __ptext35
__ptext35:
psect	text35
	file	"lib/timer.c"
	line	77
	global	__size_of_timer0_read_ps
	__size_of_timer0_read_ps	equ	__end_of_timer0_read_ps-_timer0_read_ps
	
_timer0_read_ps:
;incstack = 0
	opt	stack 26
	line	78
	
l3796:
;timer.c: 78: uint8_t prev = TMR0;
	movff	(c:4054),(c:timer0_read_ps@prev)	;volatile
	line	79
;timer.c: 79: uint16_t count = 0;
	clrf	((c:timer0_read_ps@count)),c
	clrf	((c:timer0_read_ps@count+1)),c
	line	81
;timer.c: 81: T0CONbits.T0CS = 1;
	bsf	((c:4053)),c,5	;volatile
	line	83
;timer.c: 83: do {
	
l310:
	line	85
;timer.c: 85: T0CONbits.T0SE = 1;
	bsf	((c:4053)),c,4	;volatile
	line	87
;timer.c: 87: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	88
;timer.c: 88: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	90
;timer.c: 90: T0CONbits.T0SE = 0;
	bcf	((c:4053)),c,4	;volatile
	line	92
;timer.c: 92: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	93
;timer.c: 93: __nop();
	opt	asmopt_push
	opt	asmopt_off
	nop
	opt	asmopt_pop
	line	95
	
l3798:
;timer.c: 95: ++count;
	infsnz	((c:timer0_read_ps@count)),c
	incf	((c:timer0_read_ps@count+1)),c
	line	98
	
l3800:
;timer.c: 98: } while(prev == TMR0 && count <= 255);
	movf	((c:timer0_read_ps@prev)),c,w
	xorwf	((c:4054)),c,w	;volatile
	iorwf	((c:4054+1)),c,w	;volatile

	btfss	status,2
	goto	u3691
	goto	u3690
u3691:
	goto	l3804
u3690:
	
l3802:
		decf	((c:timer0_read_ps@count+1)),c,w
	btfss	status,0
	goto	u3701
	goto	u3700

u3701:
	goto	l310
u3700:
	line	100
	
l3804:
;timer.c: 100: count = ((prev << 8) + (256 - count));
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
	line	101
	
l3806:
;timer.c: 101: return count;
	movff	(c:timer0_read_ps@count),(c:?_timer0_read_ps)
	movff	(c:timer0_read_ps@count+1),(c:?_timer0_read_ps+1)
	line	102
	
l314:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_timer0_read_ps
	__end_of_timer0_read_ps:
	signat	_timer0_read_ps,90
	global	_print_buffer

;; *************** function _print_buffer *****************
;; Defined at:
;;		line 510 in file "src/print.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	file	"src/print.c"
	line	510
global __ptext36
__ptext36:
psect	text36
	file	"src/print.c"
	line	510
	global	__size_of_print_buffer
	__size_of_print_buffer	equ	__end_of_print_buffer-_print_buffer
	
_print_buffer:
;incstack = 0
	opt	stack 26
	line	518
	
l433:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_print_buffer
	__end_of_print_buffer:
	signat	_print_buffer,89
	global	_lcd_gotoxy

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 135 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1   13[COMRAM] unsigned char 
;;  row_offsets     4   14[COMRAM] unsigned char [4]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;;		_calibrate
;;		_measure_freq
;;		_measure_capacitance
;;		_measure_inductance
;;		_print_unit
;;		_print_reading
;;		_print_indicator
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"lib/lcd44780.c"
	line	135
global __ptext37
__ptext37:
psect	text37
	file	"lib/lcd44780.c"
	line	135
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:
;incstack = 0
	opt	stack 24
;lcd_gotoxy@col stored from wreg
	movwf	((c:lcd_gotoxy@col)),c
	line	137
	
l3730:
;lcd44780.c: 137: uint8_t row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	movff	(lcd_gotoxy@F2308),(c:lcd_gotoxy@row_offsets)
	movff	(lcd_gotoxy@F2308+1),(c:lcd_gotoxy@row_offsets+1)
	movff	(lcd_gotoxy@F2308+2),(c:lcd_gotoxy@row_offsets+2)
	movff	(lcd_gotoxy@F2308+3),(c:lcd_gotoxy@row_offsets+3)
	line	146
	
l3732:
;lcd44780.c: 146: if(LCD_lines == 1) {
	movlb	0	; () banked
		decf	((_LCD_lines))&0ffh,w
	btfss	status,2
	goto	u3611
	goto	u3610

u3611:
	goto	l3736
u3610:
	line	147
	
l3734:; BSR set to: 0

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
	
l3736:; BSR set to: 0

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
	
l207:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
	signat	_lcd_gotoxy,8313
	global	_format_number

;; *************** function _format_number *****************
;; Defined at:
;;		line 19 in file "lib/format.c"
;; Parameters:    Size  Location     Type
;;  n               2   15[COMRAM] unsigned int 
;;  base            1   17[COMRAM] unsigned char 
;;  pad             1   18[COMRAM] char 
;; Auto vars:     Size  Location     Type
;;  buf            32   21[COMRAM] unsigned char [32]
;;  i               1   57[COMRAM] char 
;;  di              1   56[COMRAM] unsigned char 
;;  padchar         1   55[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_buffer_putch
;; This function is called by:
;;		_measure_freq
;;		_print_reading
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	file	"lib/format.c"
	line	19
global __ptext38
__ptext38:
psect	text38
	file	"lib/format.c"
	line	19
	global	__size_of_format_number
	__size_of_format_number	equ	__end_of_format_number-_format_number
	
_format_number:
;incstack = 0
	opt	stack 25
	line	22
	
l3746:
;format.c: 20: char buf[8 * sizeof(long)];
;format.c: 21: uint8_t di;
;format.c: 22: int8_t i = 0;
	clrf	((c:format_number@i)),c
	line	23
	
l3748:
;format.c: 23: char padchar = ' ';
	movlw	low(020h)
	movwf	((c:format_number@padchar)),c
	line	25
	
l3750:
;format.c: 25: if(pad < 0) {
	btfsc	((c:format_number@pad)),c,7
	goto	u3630
	goto	u3631

u3631:
	goto	l3756
u3630:
	line	26
	
l3752:
;format.c: 26: pad = -pad;
	negf	((c:format_number@pad)),c
	line	27
	
l3754:
;format.c: 27: padchar = '0';
	movlw	low(030h)
	movwf	((c:format_number@padchar)),c
	line	39
	
l3756:
;format.c: 39: di = n % base;
	movff	(c:format_number@n),(c:___lwmod@dividend)
	movff	(c:format_number@n+1),(c:___lwmod@dividend+1)
	movff	(c:format_number@base),(c:___lwmod@divisor)
	clrf	((c:___lwmod@divisor+1)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	movwf	((c:format_number@di)),c
	line	40
	
l3758:
;format.c: 40: buf[i++] = (di < 10 ? (uint8_t)'0' + di : (uint8_t)'A' + di - 10);
		movlw	0Ah-1
	cpfsgt	((c:format_number@di)),c
	goto	u3641
	goto	u3640

u3641:
	goto	l3762
u3640:
	
l3760:
	movlw	low(037h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$293)),c
	clrf	1+((c:_format_number$293)),c
	movlw	high(037h)
	addwfc	1+((c:_format_number$293)),c
	goto	l3764
	
l3762:
	movlw	low(030h)
	addwf	((c:format_number@di)),c,w
	movwf	((c:_format_number$293)),c
	clrf	1+((c:_format_number$293)),c
	movlw	high(030h)
	addwfc	1+((c:_format_number$293)),c
	
l3764:
	movf	((c:format_number@i)),c,w
	addlw	low(format_number@buf)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:_format_number$293),indf2

	
l3766:
	incf	((c:format_number@i)),c
	line	42
	
l3768:
;format.c: 42: n /= base;
	movff	(c:format_number@n),(c:___lwdiv@dividend)
	movff	(c:format_number@n+1),(c:___lwdiv@dividend+1)
	movff	(c:format_number@base),(c:___lwdiv@divisor)
	clrf	((c:___lwdiv@divisor+1)),c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:format_number@n)
	movff	1+?___lwdiv,(c:format_number@n+1)
	line	43
	
l3770:
;format.c: 43: } while(n > 0);
	movf	((c:format_number@n)),c,w
iorwf	((c:format_number@n+1)),c,w
	btfss	status,2
	goto	u3651
	goto	u3650

u3651:
	goto	l3756
u3650:
	goto	l3774
	line	45
	
l3772:
	movf	((c:format_number@padchar)),c,w
	
	call	_buffer_putch
	
l3774:
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
	goto	u3661
	goto	u3660

u3661:
	goto	l3772
u3660:
	line	47
	
l3776:
;format.c: 47: for(; i > 0; i--) {
		movf	((c:format_number@i)),c,w
	xorlw	80h
	addlw	-(80h^01h)
	btfsc	status,0
	goto	u3671
	goto	u3670

u3671:
	goto	l3780
u3670:
	goto	l157
	line	48
	
l3780:
;format.c: 48: buffer_putch((char)buf[(int16_t)i - 1]);
	movff	(c:format_number@i),??_format_number+0+0
	movlw	0FFh
	addwf	(??_format_number+0+0),c
	movf	(??_format_number+0+0),c,w
	addlw	low(format_number@buf)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_buffer_putch
	line	47
	
l3782:; BSR set to: 0

	decf	((c:format_number@i)),c
	goto	l3776
	line	51
	
l157:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_format_number
	__end_of_format_number:
	signat	_format_number,12409
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.45/sources/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    8[COMRAM] unsigned int 
;;  divisor         2   10[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMRAM] unsigned int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_print_reading
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/lwmod.c"
	line	8
global __ptext39
__ptext39:
psect	text39
	file	"/opt/microchip/xc8/v1.45/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 25
	line	13
	
l3714:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u3581
	goto	u3580

u3581:
	goto	l887
u3580:
	line	14
	
l3716:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l3720
	line	16
	
l3718:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	line	15
	
l3720:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l3718
u3590:
	line	20
	
l3722:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u3601
	goto	u3600

u3601:
	goto	l3726
u3600:
	line	21
	
l3724:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	line	22
	
l3726:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l3728:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l3722
	line	24
	
l887:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l894:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    8[COMRAM] unsigned int 
;;  divisor         2   10[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   13[COMRAM] unsigned int 
;;  counter         1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMRAM] unsigned int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_print_reading
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
	line	8
global __ptext40
__ptext40:
psect	text40
	file	"/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 25
	line	14
	
l3692:
	clrf	((c:___lwdiv@quotient)),c
	clrf	((c:___lwdiv@quotient+1)),c
	line	15
	
l3694:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u3551
	goto	u3550

u3551:
	goto	l877
u3550:
	line	16
	
l3696:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l3700
	line	18
	
l3698:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	line	17
	
l3700:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l3698
u3560:
	line	22
	
l3702:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l3704:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u3571
	goto	u3570

u3571:
	goto	l3710
u3570:
	line	24
	
l3706:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l3708:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	line	27
	
l3710:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l3712:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l3702
	line	29
	
l877:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l884:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_buffer_puts

;; *************** function _buffer_puts *****************
;; Defined at:
;;		line 56 in file "lib/buffer.c"
;; Parameters:    Size  Location     Type
;;  x               1   11[COMRAM] PTR const unsigned char 
;;		 -> STR_8(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_buffer_putch
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	file	"lib/buffer.c"
	line	56
global __ptext41
__ptext41:
psect	text41
	file	"lib/buffer.c"
	line	56
	global	__size_of_buffer_puts
	__size_of_buffer_puts	equ	__end_of_buffer_puts-_buffer_puts
	
_buffer_puts:
;incstack = 0
	opt	stack 25
	line	57
	
l3788:; BSR set to: 0

;buffer.c: 57: while(*x) {
	goto	l3794
	line	58
	
l3790:; BSR set to: 0

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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	
	call	_buffer_putch
	line	59
	
l3792:; BSR set to: 0

;buffer.c: 59: ++x;
	incf	((c:buffer_puts@x)),c
	line	57
	
l3794:; BSR set to: 0

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
		dw	0FFFFh; errata NOP

	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l3790
u3680:
	line	62
	
l131:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_buffer_puts
	__end_of_buffer_puts:
	signat	_buffer_puts,4217
	global	_buffer_putch

;; *************** function _buffer_putch *****************
;; Defined at:
;;		line 30 in file "lib/buffer.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_buffer_puts
;;		_format_number
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	line	30
global __ptext42
__ptext42:
psect	text42
	file	"lib/buffer.c"
	line	30
	global	__size_of_buffer_putch
	__size_of_buffer_putch	equ	__end_of_buffer_putch-_buffer_putch
	
_buffer_putch:; BSR set to: 0

;incstack = 0
	opt	stack 25
;buffer_putch@ch stored from wreg
	movwf	((c:buffer_putch@ch)),c
	line	31
	
l3564:
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
	goto	u3360
	movf	(??_buffer_putch+0+1),c,w
	bnz	u3361
	decf	(??_buffer_putch+0+0),c,w
	btfsc	status,0
	goto	u3361
	goto	u3360

u3361:
	goto	l3568
u3360:
	goto	l118
	line	33
	
l3568:; BSR set to: 0

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
	
l3570:; BSR set to: 0

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
	
l118:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_buffer_putch
	__end_of_buffer_putch:
	signat	_buffer_putch,4217
	global	_buffer_init

;; *************** function _buffer_init *****************
;; Defined at:
;;		line 10 in file "lib/buffer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	line	10
global __ptext43
__ptext43:
psect	text43
	file	"lib/buffer.c"
	line	10
	global	__size_of_buffer_init
	__size_of_buffer_init	equ	__end_of_buffer_init-_buffer_init
	
_buffer_init:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	11
	
l3786:
;buffer.c: 11: buffer.p = 0;
	movlw	((0 & ((1<<4)-1))<<0)|not (((1<<4)-1)<<0)
	movlb	0	; () banked
	andwf	(0+(_buffer+010h))&0ffh
	line	12
;buffer.c: 12: buffer.n = 0;
	movlw	((0 & ((1<<4)-1))<<4)|not (((1<<4)-1)<<4)
	andwf	(0+(_buffer+010h))&0ffh
	line	13
	
l111:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_buffer_init
	__end_of_buffer_init:
	signat	_buffer_init,89
	global	_lcd_clear

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 292 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	file	"lib/lcd44780.c"
	line	292
global __ptext44
__ptext44:
psect	text44
	file	"lib/lcd44780.c"
	line	292
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:; BSR set to: 0

;incstack = 0
	opt	stack 25
	line	293
	
l3880:
;lcd44780.c: 293: lcd_command(0x01);
	movlw	(01h)&0ffh
	
	call	_lcd_command
	line	294
	
l3882:
;lcd44780.c: 294: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_push
opt asmopt_off
movlw	10
movwf	(??_lcd_clear+0+0)&0ffh,c,f
	movlw	190
u4277:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4277
	decfsz	(??_lcd_clear+0+0)&0ffh,c,f
	bra	u4277
	nop2
opt asmopt_pop

	line	296
	
l237:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
	signat	_lcd_clear,89
	global	_lcd_command

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 127 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_lcd_gotoxy
;;		_lcd_clear
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	line	127
global __ptext45
__ptext45:
psect	text45
	file	"lib/lcd44780.c"
	line	127
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:
;incstack = 0
	opt	stack 24
;lcd_command@value stored from wreg
	movwf	((c:lcd_command@value)),c
	line	128
	
l3594:
;lcd44780.c: 128: lcd_send(value, 0);
	movlw	low(0)
	movwf	((c:lcd_send@mode)),c
	movf	((c:lcd_command@value)),c,w
	
	call	_lcd_send
	line	129
	
l201:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
	signat	_lcd_command,4217
	global	_lcd_send

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 103 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  mode            1    9[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write4bits
;; This function is called by:
;;		_lcd_command
;;		_lcd_putch
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=0
	line	103
global __ptext46
__ptext46:
psect	text46
	file	"lib/lcd44780.c"
	line	103
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:
;incstack = 0
	opt	stack 24
;lcd_send@value stored from wreg
	movwf	((c:lcd_send@value)),c
	line	104
	
l3348:
;lcd44780.c: 104: if(mode) {
	movf	((c:lcd_send@mode)),c,w
	btfsc	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l3352
u2930:
	line	105
	
l3350:
;lcd44780.c: 105: LATB |= 0b0100;
	bsf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	106
;lcd44780.c: 106: } else {
	goto	l3354
	line	107
	
l3352:
;lcd44780.c: 107: LATB &= ~0b0100;
	bcf	(0+(2/8)+(c:3978)),c,(2)&7	;volatile
	line	116
	
l3354:
;lcd44780.c: 108: }
;lcd44780.c: 115: {
;lcd44780.c: 116: lcd_write4bits(value >> 4);
	swapf	((c:lcd_send@value)),c,w
	andlw	(0ffh shr 4) & 0ffh
	
	call	_lcd_write4bits
	line	117
	
l3356:
;lcd44780.c: 117: lcd_write4bits(value);
	movf	((c:lcd_send@value)),c,w
	
	call	_lcd_write4bits
	line	119
	
l198:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
	signat	_lcd_send,8313
	global	_lcd_write4bits

;; *************** function _lcd_write4bits *****************
;; Defined at:
;;		line 34 in file "lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    8[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=0
	line	34
global __ptext47
__ptext47:
psect	text47
	file	"lib/lcd44780.c"
	line	34
	global	__size_of_lcd_write4bits
	__size_of_lcd_write4bits	equ	__end_of_lcd_write4bits-_lcd_write4bits
	
_lcd_write4bits:
;incstack = 0
	opt	stack 24
;lcd_write4bits@value stored from wreg
	movwf	((c:lcd_write4bits@value)),c
	line	39
	
l3306:
;lcd44780.c: 39: LATB &= 0b00001111;
	movlw	(0Fh)&0ffh
	andwf	((c:3978)),c	;volatile
	line	40
;lcd44780.c: 40: LATB |= value << 4;
	swapf	((c:lcd_write4bits@value)),c,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	((c:3978)),c	;volatile
	line	55
	
l3308:
;lcd44780.c: 55: LATB |= 0b1000; _delay((unsigned long)((4)*(20000000/4000000.0))); LATB &= ~0b1000; _delay((unsigned long)((100)*(20000000/4000000.0)));;
	bsf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	opt asmopt_push
opt asmopt_off
	movlw	5
u4287:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4287
opt asmopt_pop

	
l3310:
	bcf	(0+(3/8)+(c:3978)),c,(3)&7	;volatile
	
l3312:
	opt asmopt_push
opt asmopt_off
	movlw	125
u4297:
	dw	0FFFFh; errata NOP
decfsz	wreg,f
	bra	u4297
opt asmopt_pop

	line	60
	
l193:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_lcd_write4bits
	__end_of_lcd_write4bits:
	signat	_lcd_write4bits,4217
	global	_delay10ms

;; *************** function _delay10ms *****************
;; Defined at:
;;		line 64 in file "LC-meter.c"
;; Parameters:    Size  Location     Type
;;  period_10ms     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period_10ms     1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=0
	file	"LC-meter.c"
	line	64
global __ptext48
__ptext48:
psect	text48
	file	"LC-meter.c"
	line	64
	global	__size_of_delay10ms
	__size_of_delay10ms	equ	__end_of_delay10ms-_delay10ms
	
_delay10ms:
;incstack = 0
	opt	stack 28
	line	68
	
l65:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_delay10ms
	__end_of_delay10ms:
	signat	_delay10ms,4217
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "/opt/microchip/xc8/v1.45/sources/common/lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   63[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   63[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/lwtoft.c"
	line	28
global __ptext49
__ptext49:
psect	text49
	file	"/opt/microchip/xc8/v1.45/sources/common/lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:
;incstack = 0
	opt	stack 26
	line	30
	
l3994:
	movff	(c:___lwtoft@c),(c:___ftpack@arg)
	movff	(c:___lwtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lwtoft)
	movff	1+?___ftpack,(c:?___lwtoft+1)
	movff	2+?___ftpack,(c:?___lwtoft+2)
	line	31
	
l899:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.45/sources/common/float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    8[COMRAM] unsigned um
;;  exp             1   11[COMRAM] unsigned char 
;;  sign            1   12[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text50,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v1.45/sources/common/float.c"
	line	62
global __ptext50
__ptext50:
psect	text50
	file	"/opt/microchip/xc8/v1.45/sources/common/float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 26
	line	64
	
l3314:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u2851
	goto	u2850
u2851:
	goto	l646
u2850:
	
l3316:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u2861
	goto	u2860

u2861:
	goto	l3320
u2860:
	
l646:
	line	65
	clrf	((c:?___ftpack)),c
	clrf	((c:?___ftpack+1)),c
	clrf	((c:?___ftpack+2)),c

	goto	l647
	line	67
	
l3318:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	line	66
	
l3320:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u2871
	goto	u2870

u2871:
	goto	l3318
u2870:
	goto	l3326
	line	71
	
l3322:
	incf	((c:___ftpack@exp)),c
	line	72
	
l3324:
	movlw	low(01h)
	addwf	((c:___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	line	70
	
l3326:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u2881
	goto	u2880

u2881:
	goto	l3322
u2880:
	goto	l3330
	line	76
	
l3328:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	line	75
	
l3330:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l658
u2890:
	
l3332:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u2901
	goto	u2900

u2901:
	goto	l3328
u2900:
	
l658:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l3336
u2910:
	line	80
	
l3334:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	line	81
	
l3336:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	
l3338:
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l3340:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l3344
u2920:
	line	84
	
l3342:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	line	85
	
l3344:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	line	86
	
l647:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 84 in file "LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   79[None  ] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i2___lwdiv
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"LC-meter.c"
	line	84
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:
;incstack = 0
	opt	stack 23
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	line	85
	
i2l3196:
;LC-meter.c: 85: if(PIR1bits.TMR2IF) {
	btfss	((c:3998)),c,1	;volatile
	goto	i2u275_41
	goto	i2u275_40
i2u275_41:
	goto	i2l83
i2u275_40:
	line	86
	
i2l3198:
;LC-meter.c: 86: bres += 256;
	movlw	0
	movlb	0	; () banked
	addwf	((_bres))&0ffh	;volatile
	movlw	01h
	addwfc	((_bres+1))&0ffh	;volatile
	movlw	0
	addwfc	((_bres+2))&0ffh	;volatile
	movlw	0
	addwfc	((_bres+3))&0ffh	;volatile
	line	87
;LC-meter.c: 87: if(bres >= ((unsigned long)((double)((20000000) / 4) / 1000))) {
		movf	((_bres+3))&0ffh,w	;volatile
	iorwf	((_bres+2))&0ffh,w	;volatile
	bnz	i2u276_40
	movlw	136
	subwf	 ((_bres))&0ffh,w	;volatile
	movlw	19
	subwfb	((_bres+1))&0ffh,w	;volatile
	btfss	status,0
	goto	i2u276_41
	goto	i2u276_40

i2u276_41:
	goto	i2l3214
i2u276_40:
	line	88
	
i2l3200:; BSR set to: 0

;LC-meter.c: 88: bres -= ((unsigned long)((double)((20000000) / 4) / 1000));
	movlw	088h
	subwf	((_bres))&0ffh	;volatile
	movlw	013h
	subwfb	((_bres+1))&0ffh	;volatile
	movlw	0
	subwfb	((_bres+2))&0ffh	;volatile
	movlw	0
	subwfb	((_bres+3))&0ffh	;volatile
	line	89
	
i2l3202:; BSR set to: 0

;LC-meter.c: 89: msecpart++;
	infsnz	((_msecpart))&0ffh	;volatile
	incf	((_msecpart+1))&0ffh	;volatile
	line	90
	
i2l3204:; BSR set to: 0

;LC-meter.c: 90: led_cycle++;
	infsnz	((_led_cycle))&0ffh	;volatile
	incf	((_led_cycle+1))&0ffh	;volatile
	line	92
	
i2l3206:; BSR set to: 0

;LC-meter.c: 92: LATC &= ~(1 << 2); LATC |= (!!(led_cycle >= 0 && led_cycle < led_interval/6)) << 2;;
	bcf	(0+(2/8)+(c:3979)),c,(2)&7	;volatile
	
i2l3208:; BSR set to: 0

	movff	(_led_interval),(c:i2___lwdiv@dividend)	;volatile
	movff	(_led_interval+1),(c:i2___lwdiv@dividend+1)	;volatile
	movlw	high(06h)
	movwf	((c:i2___lwdiv@divisor+1)),c
	movlw	low(06h)
	movwf	((c:i2___lwdiv@divisor)),c
	call	i2___lwdiv	;wreg free
		movf	(0+?i2___lwdiv),c,w
	subwf	((_led_cycle))&0ffh,w	;volatile
	movf	(1+?i2___lwdiv),c,w
	subwfb	((_led_cycle+1))&0ffh,w	;volatile
	btfss	status,0
	goto	i2u277_41
	goto	i2u277_40

i2u277_41:
	clrf	(??_isr+0+0)&0ffh,c
	incf	(??_isr+0+0)&0ffh,c
	goto	i2u278_48
i2u277_40:
	clrf	(??_isr+0+0)&0ffh,c
i2u278_48:
	bcf	status,0
	rlcf	(??_isr+0+0),c
	bcf	status,0
	rlcf	(??_isr+0+0),c,w
	iorwf	((c:3979)),c	;volatile
	line	96
	
i2l3210:
;LC-meter.c: 96: if(msecpart >= 1000) {
		movlw	232
	movlb	0	; () banked
	subwf	 ((_msecpart))&0ffh,w	;volatile
	movlw	3
	subwfb	((_msecpart+1))&0ffh,w	;volatile
	btfss	status,0
	goto	i2u279_41
	goto	i2u279_40

i2u279_41:
	goto	i2l3214
i2u279_40:
	line	98
	
i2l3212:; BSR set to: 0

;LC-meter.c: 98: seconds++;
	movlw	low(01h)
	addwf	((_seconds))&0ffh	;volatile
	movlw	0
	addwfc	((_seconds+1))&0ffh	;volatile
	addwfc	((_seconds+2))&0ffh	;volatile
	addwfc	((_seconds+3))&0ffh	;volatile
	line	99
;LC-meter.c: 99: msecpart -= 1000;
	movlw	low(03E8h)
	subwf	((_msecpart))&0ffh	;volatile
	movlw	high(03E8h)
	subwfb	((_msecpart+1))&0ffh	;volatile
	line	103
	
i2l3214:; BSR set to: 0

;LC-meter.c: 100: }
;LC-meter.c: 101: }
;LC-meter.c: 103: PIR1bits.TMR2IF=0;
	bcf	((c:3998)),c,1	;volatile
	line	111
	
i2l83:
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,90
	global	i2___lwdiv

;; *************** function i2___lwdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwdiv         2    4[COMRAM] unsigned int 
;;  __lwdiv         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 3F/0
;;		Unchanged: 3F/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text52,class=CODE,space=0,reloc=2,group=0
	file	"/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
	line	8
global __ptext52
__ptext52:
psect	text52
	file	"/opt/microchip/xc8/v1.45/sources/common/lwdiv.c"
	line	8
	global	__size_ofi2___lwdiv
	__size_ofi2___lwdiv	equ	__end_ofi2___lwdiv-i2___lwdiv
	
i2___lwdiv:
;incstack = 0
	opt	stack 23
	line	14
	
i2l3174:; BSR set to: 0

	clrf	((c:i2___lwdiv@quotient)),c
	clrf	((c:i2___lwdiv@quotient+1)),c
	line	15
	
i2l3176:; BSR set to: 0

	movf	((c:i2___lwdiv@divisor)),c,w
iorwf	((c:i2___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	i2u272_41
	goto	i2u272_40

i2u272_41:
	goto	i2l877
i2u272_40:
	line	16
	
i2l3178:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:i2___lwdiv@counter)),c
	line	17
	goto	i2l3182
	line	18
	
i2l3180:; BSR set to: 0

	bcf	status,0
	rlcf	((c:i2___lwdiv@divisor)),c
	rlcf	((c:i2___lwdiv@divisor+1)),c
	line	19
	incf	((c:i2___lwdiv@counter)),c
	line	17
	
i2l3182:; BSR set to: 0

	
	btfss	((c:i2___lwdiv@divisor+1)),c,(15)&7
	goto	i2u273_41
	goto	i2u273_40
i2u273_41:
	goto	i2l3180
i2u273_40:
	line	22
	
i2l3184:; BSR set to: 0

	bcf	status,0
	rlcf	((c:i2___lwdiv@quotient)),c
	rlcf	((c:i2___lwdiv@quotient+1)),c
	line	23
	
i2l3186:; BSR set to: 0

		movf	((c:i2___lwdiv@divisor)),c,w
	subwf	((c:i2___lwdiv@dividend)),c,w
	movf	((c:i2___lwdiv@divisor+1)),c,w
	subwfb	((c:i2___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	i2u274_41
	goto	i2u274_40

i2u274_41:
	goto	i2l3192
i2u274_40:
	line	24
	
i2l3188:; BSR set to: 0

	movf	((c:i2___lwdiv@divisor)),c,w
	subwf	((c:i2___lwdiv@dividend)),c
	movf	((c:i2___lwdiv@divisor+1)),c,w
	subwfb	((c:i2___lwdiv@dividend+1)),c

	line	25
	
i2l3190:; BSR set to: 0

	bsf	(0+(0/8)+(c:i2___lwdiv@quotient)),c,(0)&7
	line	27
	
i2l3192:; BSR set to: 0

	bcf	status,0
	rrcf	((c:i2___lwdiv@divisor+1)),c
	rrcf	((c:i2___lwdiv@divisor)),c
	line	28
	
i2l3194:; BSR set to: 0

	decfsz	((c:i2___lwdiv@counter)),c
	
	goto	i2l3184
	line	29
	
i2l877:; BSR set to: 0

	line	30
	movff	(c:i2___lwdiv@quotient),(c:?i2___lwdiv)
	movff	(c:i2___lwdiv@quotient+1),(c:?i2___lwdiv+1)
	line	31
	
i2l884:; BSR set to: 0

	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_ofi2___lwdiv
	__end_ofi2___lwdiv:
	signat	i2___lwdiv,90
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
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp6
	wtemp6 set btemp+1
	end

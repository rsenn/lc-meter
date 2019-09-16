opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 201502162209"

opt pagewidth 120

	opt pm

	processor	16F876A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T1CON equ 010h ;# 
# 615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T2CON equ 012h ;# 
# 691 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXREG equ 019h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T1CON equ 010h ;# 
# 615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T2CON equ 012h ;# 
# 691 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXREG equ 019h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T1CON equ 010h ;# 
# 615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T2CON equ 012h ;# 
# 691 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXREG equ 019h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T1CON equ 010h ;# 
# 615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T2CON equ 012h ;# 
# 691 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXREG equ 019h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T1CON equ 010h ;# 
# 615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T2CON equ 012h ;# 
# 691 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXREG equ 019h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T1CON equ 010h ;# 
# 615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T2CON equ 012h ;# 
# 691 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXREG equ 019h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T1CON equ 010h ;# 
# 615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T2CON equ 012h ;# 
# 691 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXREG equ 019h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON2 equ 018Dh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INDF equ 00h ;# 
# 57 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR0 equ 01h ;# 
# 63 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCL equ 02h ;# 
# 69 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
STATUS equ 03h ;# 
# 156 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
FSR equ 04h ;# 
# 162 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTA equ 05h ;# 
# 211 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTB equ 06h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PORTC equ 07h ;# 
# 333 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCLATH equ 0Ah ;# 
# 352 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
INTCON equ 0Bh ;# 
# 429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR1 equ 0Ch ;# 
# 484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIR2 equ 0Dh ;# 
# 523 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1 equ 0Eh ;# 
# 529 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1L equ 0Eh ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR1H equ 0Fh ;# 
# 541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T1CON equ 010h ;# 
# 615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TMR2 equ 011h ;# 
# 621 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
T2CON equ 012h ;# 
# 691 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPBUF equ 013h ;# 
# 697 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON equ 014h ;# 
# 766 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1 equ 015h ;# 
# 772 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1L equ 015h ;# 
# 778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR1H equ 016h ;# 
# 784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP1CON equ 017h ;# 
# 841 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCSTA equ 018h ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXREG equ 019h ;# 
# 941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
RCREG equ 01Ah ;# 
# 947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2 equ 01Bh ;# 
# 953 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2L equ 01Bh ;# 
# 959 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCPR2H equ 01Ch ;# 
# 965 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CCP2CON equ 01Dh ;# 
# 1022 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESH equ 01Eh ;# 
# 1028 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON0 equ 01Fh ;# 
# 1123 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
OPTION_REG equ 081h ;# 
# 1192 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISA equ 085h ;# 
# 1241 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISB equ 086h ;# 
# 1302 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TRISC equ 087h ;# 
# 1363 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE1 equ 08Ch ;# 
# 1418 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PIE2 equ 08Dh ;# 
# 1457 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PCON equ 08Eh ;# 
# 1490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPCON2 equ 091h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
PR2 equ 092h ;# 
# 1557 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPADD equ 093h ;# 
# 1563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SSPSTAT equ 094h ;# 
# 1731 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
TXSTA equ 098h ;# 
# 1811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
SPBRG equ 099h ;# 
# 1817 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CMCON equ 09Ch ;# 
# 1886 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
CVRCON equ 09Dh ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADRESL equ 09Eh ;# 
# 1956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
ADCON1 equ 09Fh ;# 
# 2014 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATA equ 010Ch ;# 
# 2020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADR equ 010Dh ;# 
# 2026 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEDATH equ 010Eh ;# 
# 2032 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EEADRH equ 010Fh ;# 
# 2038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON1 equ 018Ch ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f876a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_calibrate
	FNCALL	_main,_delay10ms
	FNCALL	_main,_format_double
	FNCALL	_main,_indicator
	FNCALL	_main,_lcd_begin
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_lcd_gotoxy
	FNCALL	_main,_lcd_init
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_measure_capacitance
	FNCALL	_main,_measure_inductance
	FNCALL	_main,_timer0_init
	FNCALL	_main,_timer2_init
	FNCALL	_main,_uart_init
	FNCALL	_main,_uart_puts
	FNCALL	_uart_init,_uart_enable
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
	FNCALL	_print_unit,_uart_puts
	FNCALL	_print_reading,___lwdiv
	FNCALL	_print_reading,___lwmod
	FNCALL	_print_reading,_format_number
	FNCALL	_print_reading,_lcd_gotoxy
	FNCALL	_print_reading,_lcd_puts
	FNCALL	_lcd_begin,_lcd_command
	FNCALL	_lcd_begin,_lcd_write4bits
	FNCALL	_indicator,_lcd_gotoxy
	FNCALL	_indicator,_lcd_puts
	FNCALL	_lcd_puts,_lcd_putch
	FNCALL	_format_double,___awtofl
	FNCALL	_format_double,___fldiv
	FNCALL	_format_double,___flge
	FNCALL	_format_double,___flmul
	FNCALL	_format_double,___flsub
	FNCALL	_format_double,___fltol
	FNCALL	_format_double,_floor
	FNCALL	_format_double,_format_putchar
	FNCALL	_format_double,_lcd_putch
	FNCALL	_format_double,_log10
	FNCALL	_format_double,_output_putch
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
	FNCALL	_ldexp,___flge
	FNCALL	_ldexp,___flneg
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
	FNCALL	_log,___flge
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
	FNCALL	_calibrate,_lcd_putch
	FNCALL	_calibrate,_measure_freq
	FNCALL	_calibrate,_put_str
	FNCALL	_calibrate,_uart_puts
	FNCALL	_uart_puts,_uart_putch
	FNCALL	_measure_freq,_format_number
	FNCALL	_measure_freq,_lcd_gotoxy
	FNCALL	_measure_freq,_put_str
	FNCALL	_measure_freq,_timer0_read_ps
	FNCALL	_put_str,_output_putch
	FNCALL	_lcd_gotoxy,_lcd_command
	FNCALL	_format_number,___lwdiv
	FNCALL	_format_number,___lwmod
	FNCALL	_format_number,_format_putchar
	FNCALL	_format_number,_lcd_putch
	FNCALL	_format_number,_output_putch
	FNCALL	_output_putch,_lcd_putch
	FNCALL	_lcd_putch,_lcd_send
	FNCALL	_lcd_clear,_lcd_command
	FNCALL	_lcd_command,_lcd_send
	FNCALL	_lcd_send,_lcd_write4bits
	FNCALL	___lwtofl,___flpack
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_putchar_ptr
	global	lcd_gotoxy@F1126
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"../../../lib/format.c"
	line	10

;initializer for _putchar_ptr
	retlw	low((fp__format_putchar-fpbase))
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"../../../lib/lcd44780.c"
	line	154

;initializer for lcd_gotoxy@F1126
	retlw	low(0)
	retlw	040h
	retlw	014h
	retlw	054h
	global	exp@coeff
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	17
exp@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x18
	retlw	0x72
	retlw	0x31
	retlw	0x3f

	retlw	0xf0
	retlw	0xfd
	retlw	0x75
	retlw	0x3e

	retlw	0x47
	retlw	0x58
	retlw	0x63
	retlw	0x3d

	retlw	0x58
	retlw	0x95
	retlw	0x1d
	retlw	0x3c

	retlw	0x82
	retlw	0xc4
	retlw	0xae
	retlw	0x3a

	retlw	0xa8
	retlw	0x78
	retlw	0x21
	retlw	0x39

	retlw	0xef
	retlw	0x93
	retlw	0x80
	retlw	0x37

	retlw	0xa0
	retlw	0x92
	retlw	0xa7
	retlw	0x35

	retlw	0x46
	retlw	0x56
	retlw	0x15
	retlw	0x34

	global __end_ofexp@coeff
__end_ofexp@coeff:
	global	log@coeff
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	9
log@coeff:
	retlw	0x0
	retlw	0x0
	retlw	0x0
	retlw	0x0

	retlw	0xc4
	retlw	0xff
	retlw	0x7f
	retlw	0x3f

	retlw	0x80
	retlw	0xef
	retlw	0xff
	retlw	0xbe

	retlw	0x90
	retlw	0xe1
	retlw	0xa9
	retlw	0x3e

	retlw	0xec
	retlw	0x82
	retlw	0x76
	retlw	0xbe

	retlw	0x82
	retlw	0xad
	retlw	0x2b
	retlw	0x3e

	retlw	0xe
	retlw	0x3c
	retlw	0xc3
	retlw	0xbd

	retlw	0x87
	retlw	0xd1
	retlw	0x13
	retlw	0x3d

	retlw	0x41
	retlw	0x78
	retlw	0xd3
	retlw	0xbb

	global __end_oflog@coeff
__end_oflog@coeff:
	global	exp@coeff
	global	log@coeff
	global	_LCD_function
	global	_F2
	global	_F3
	global	_F1
	global	_msecs
	global	_seconds
	global	_timer1of
	global	_blink
	global	_LCD_ctrl
	global	_LCD_lines
	global	_LCD_mode
	global	_buffer
	global	_CCal
psect	nvBANK3,class=BANK3,space=1,noexec
global __pnvBANK3
__pnvBANK3:
_CCal:
       ds      4

	global	_bres
_bres:
       ds      2

	global	_msecpart
_msecpart:
       ds      2

	global	_INTCON
_INTCON	set	0xB
	global	_PORTC
_PORTC	set	0x7
	global	_RCSTA
_RCSTA	set	0x18
	global	_TMR0
_TMR0	set	0x1
	global	_TMR2
_TMR2	set	0x11
	global	_TXREG
_TXREG	set	0x19
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RB2
_RB2	set	0x32
	global	_RB3
_RB3	set	0x33
	global	_RB4
_RB4	set	0x34
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
	global	_RC3
_RC3	set	0x3B
	global	_RC4
_RC4	set	0x3C
	global	_RC6
_RC6	set	0x3E
	global	_SSPEN
_SSPEN	set	0xA5
	global	_T2CKPS0
_T2CKPS0	set	0x90
	global	_T2CKPS1
_T2CKPS1	set	0x91
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_TMR2IF
_TMR2IF	set	0x61
	global	_TMR2ON
_TMR2ON	set	0x92
	global	_TOUTPS0
_TOUTPS0	set	0x93
	global	_TOUTPS1
_TOUTPS1	set	0x94
	global	_TOUTPS2
_TOUTPS2	set	0x95
	global	_TXIF
_TXIF	set	0x64
	global	_CMCON
_CMCON	set	0x9C
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISA
_TRISA	set	0x85
	global	_TRISC
_TRISC	set	0x87
	global	_TXSTA
_TXSTA	set	0x98
	global	_RCIE
_RCIE	set	0x465
	global	_T0SE
_T0SE	set	0x40C
	global	_TMR2IE
_TMR2IE	set	0x461
	global	_TRISB2
_TRISB2	set	0x432
	global	_TRISB3
_TRISB3	set	0x433
	global	_TRISB4
_TRISB4	set	0x434
	global	_TRISB5
_TRISB5	set	0x435
	global	_TRISB6
_TRISB6	set	0x436
	global	_TRISB7
_TRISB7	set	0x437
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC6
_TRISC6	set	0x43E
	global	_TRISC7
_TRISC7	set	0x43F
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
	global	_nRBPU
_nRBPU	set	0x40F
psect	strings
	
STR_21:	
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	119	;'w'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_25:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	117	;'u'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_19:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	0
psect	strings
	
STR_24:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	112	;'p'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_13:	
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	45	;'-'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_15:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_23:	
	retlw	70	;'F'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	113	;'q'
	retlw	61	;'='
	retlw	0
psect	strings
	
STR_14:	
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	13
	retlw	10
	retlw	0
psect	strings
	
STR_18:	
	retlw	82	;'R'
	retlw	67	;'C'
	retlw	52	;'4'
	retlw	61	;'='
	retlw	0
psect	strings
	
STR_11:	
	retlw	45	;'-'
	retlw	42	;'*'
	retlw	45	;'-'
	retlw	0
psect	strings
	
STR_5:	
	retlw	109	;'m'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_7:	
	retlw	110	;'n'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_8:	
	retlw	112	;'p'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_6:	
	retlw	117	;'u'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_2:	
	retlw	109	;'m'
	retlw	72	;'H'
	retlw	0
psect	strings
	
STR_4:	
	retlw	110	;'n'
	retlw	72	;'H'
	retlw	0
psect	strings
	
STR_3:	
	retlw	117	;'u'
	retlw	72	;'H'
	retlw	0
psect	strings
STR_1	equ	STR_2+1
STR_16	equ	STR_15+0
STR_10	equ	STR_15+1
STR_17	equ	STR_15+1
STR_12	equ	STR_15+3
STR_9	equ	STR_14+3
STR_20	equ	STR_14+3
STR_22	equ	STR_14+3
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"dist/default/production\LC_meter_16f876a_xc8.X.production.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_LCD_function:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"../../../lib/format.c"
	line	10
_putchar_ptr:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_F2:
       ds      4

_F3:
       ds      4

_F1:
       ds      4

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_msecs:
       ds      4

_seconds:
       ds      4

_timer1of:
       ds      4

_blink:
       ds      2

_LCD_ctrl:
       ds      1

_LCD_lines:
       ds      1

_LCD_mode:
       ds      1

_buffer:
       ds      18

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"../../../lib/lcd44780.c"
	line	154
lcd_gotoxy@F1126:
       ds      4

	file	"dist/default/production\LC_meter_16f876a_xc8.X.production.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Ch)
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+023h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK3
	global __pidataBANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	fcall	__pidataBANK3+0		;fetch initializer
	movwf	__pdataBANK3+0&07fh		
	fcall	__pidataBANK3+1		;fetch initializer
	movwf	__pdataBANK3+1&07fh		
	fcall	__pidataBANK3+2		;fetch initializer
	movwf	__pdataBANK3+2&07fh		
	fcall	__pidataBANK3+3		;fetch initializer
	movwf	__pdataBANK3+3&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
?_format_double:	; 0 bytes @ 0x0
	global	format_double@num
format_double@num:	; 4 bytes @ 0x0
	ds	4
	global	_format_double$1046
_format_double$1046:	; 4 bytes @ 0x4
	ds	4
	global	_format_double$1047
_format_double$1047:	; 4 bytes @ 0x8
	ds	4
	global	format_double@weight
format_double@weight:	; 4 bytes @ 0xC
	ds	4
	global	format_double@digit
format_double@digit:	; 2 bytes @ 0x10
	ds	2
	global	format_double@m
format_double@m:	; 2 bytes @ 0x12
	ds	2
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_ldexp:	; 0 bytes @ 0x0
	global	?_log10
?_log10:	; 4 bytes @ 0x0
	global	log10@x
log10@x:	; 4 bytes @ 0x0
	ds	2
	global	_ldexp$686
_ldexp$686:	; 4 bytes @ 0x2
	ds	2
	global	_log10$1058
_log10$1058:	; 4 bytes @ 0x4
	ds	4
	global	?___fltol
?___fltol:	; 4 bytes @ 0x8
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x8
	ds	4
??___fltol:	; 0 bytes @ 0xC
	ds	4
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x10
	ds	1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x11
	ds	1
	global	?___altofl
?___altofl:	; 4 bytes @ 0x12
	global	measure_inductance@numerator
measure_inductance@numerator:	; 4 bytes @ 0x12
	global	___altofl@c
___altofl@c:	; 4 bytes @ 0x12
	global	_measure_capacitance$1048
_measure_capacitance$1048:	; 4 bytes @ 0x12
	ds	4
	global	?_floor
?_floor:	; 4 bytes @ 0x16
	global	measure_inductance@denominator
measure_inductance@denominator:	; 4 bytes @ 0x16
	global	floor@x
floor@x:	; 4 bytes @ 0x16
	global	_measure_capacitance$1049
_measure_capacitance$1049:	; 4 bytes @ 0x16
	ds	4
	global	floor@i
floor@i:	; 4 bytes @ 0x1A
	global	_measure_capacitance$1050
_measure_capacitance$1050:	; 4 bytes @ 0x1A
	global	_measure_inductance$1051
_measure_inductance$1051:	; 4 bytes @ 0x1A
	ds	4
	global	measure_capacitance@unit
measure_capacitance@unit:	; 1 bytes @ 0x1E
	global	floor@expon
floor@expon:	; 2 bytes @ 0x1E
	global	_measure_inductance$1055
_measure_inductance$1055:	; 4 bytes @ 0x1E
	ds	1
	global	measure_capacitance@var
measure_capacitance@var:	; 2 bytes @ 0x1F
	ds	1
	global	?_exp
?_exp:	; 4 bytes @ 0x20
	global	exp@x
exp@x:	; 4 bytes @ 0x20
	ds	1
	global	measure_capacitance@Cin
measure_capacitance@Cin:	; 4 bytes @ 0x21
	ds	1
	global	_measure_inductance$1056
_measure_inductance$1056:	; 4 bytes @ 0x22
	ds	2
	global	_exp$1061
_exp$1061:	; 4 bytes @ 0x24
	ds	2
	global	_measure_inductance$1057
_measure_inductance$1057:	; 4 bytes @ 0x26
	ds	2
	global	_exp$786
_exp$786:	; 4 bytes @ 0x28
	ds	2
	global	measure_inductance@unit
measure_inductance@unit:	; 1 bytes @ 0x2A
	ds	1
	global	_measure_inductance$1052
_measure_inductance$1052:	; 4 bytes @ 0x2B
	ds	1
	global	exp@exponent
exp@exponent:	; 2 bytes @ 0x2C
	ds	2
	global	exp@sign
exp@sign:	; 1 bytes @ 0x2E
	ds	1
	global	?_pow
?_pow:	; 4 bytes @ 0x2F
	global	pow@x
pow@x:	; 4 bytes @ 0x2F
	global	_measure_inductance$1053
_measure_inductance$1053:	; 4 bytes @ 0x2F
	ds	4
	global	pow@y
pow@y:	; 4 bytes @ 0x33
	global	_measure_inductance$1054
_measure_inductance$1054:	; 4 bytes @ 0x33
	ds	4
	global	measure_inductance@var
measure_inductance@var:	; 2 bytes @ 0x37
	global	_pow$1059
_pow$1059:	; 4 bytes @ 0x37
	ds	2
	global	measure_inductance@Lin
measure_inductance@Lin:	; 4 bytes @ 0x39
	ds	2
	global	_pow$1060
_pow$1060:	; 4 bytes @ 0x3B
	ds	4
	global	pow@sign
pow@sign:	; 1 bytes @ 0x3F
	ds	1
	global	pow@yi
pow@yi:	; 4 bytes @ 0x40
	ds	4
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_uart_puts:	; 0 bytes @ 0x0
?_lcd_puts:	; 0 bytes @ 0x0
?_lcd_init:	; 0 bytes @ 0x0
?_uart_init:	; 0 bytes @ 0x0
?_calibrate:	; 0 bytes @ 0x0
?_lcd_clear:	; 0 bytes @ 0x0
?_measure_capacitance:	; 0 bytes @ 0x0
?_measure_inductance:	; 0 bytes @ 0x0
?_print_unit:	; 0 bytes @ 0x0
?_indicator:	; 0 bytes @ 0x0
?_put_str:	; 0 bytes @ 0x0
?_timer0_init:	; 0 bytes @ 0x0
?_timer2_init:	; 0 bytes @ 0x0
?_delay10ms:	; 0 bytes @ 0x0
??_isr:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_lcd_write4bits:	; 0 bytes @ 0x0
?_lcd_command:	; 0 bytes @ 0x0
?_uart_putch:	; 0 bytes @ 0x0
?_uart_enable:	; 0 bytes @ 0x0
?_isr:	; 2 bytes @ 0x0
print_unit@unit:	; 1 bytes @ 0x0
delay10ms@period_10ms:	; 1 bytes @ 0x0
	ds	2
??_lcd_init:	; 0 bytes @ 0x2
??_uart_init:	; 0 bytes @ 0x2
??_timer0_init:	; 0 bytes @ 0x2
??_timer2_init:	; 0 bytes @ 0x2
??_delay10ms:	; 0 bytes @ 0x2
??_lcd_write4bits:	; 0 bytes @ 0x2
??_uart_putch:	; 0 bytes @ 0x2
??_uart_enable:	; 0 bytes @ 0x2
?___flge:	; 1 bit 
	global	?_timer0_read_ps
?_timer0_read_ps:	; 2 bytes @ 0x2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x2
	global	?___flpack
?___flpack:	; 4 bytes @ 0x2
	global	?_frexp
?_frexp:	; 4 bytes @ 0x2
	global	?___flneg
?___flneg:	; 4 bytes @ 0x2
	global	lcd_init@fourbitmode
lcd_init@fourbitmode:	; 1 bytes @ 0x2
	global	uart_putch@byte
uart_putch@byte:	; 1 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	global	___flpack@arg
___flpack@arg:	; 4 bytes @ 0x2
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x2
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x2
	global	frexp@value
frexp@value:	; 4 bytes @ 0x2
	ds	1
??_uart_puts:	; 0 bytes @ 0x3
	global	timer2_init@ps_mode
timer2_init@ps_mode:	; 1 bytes @ 0x3
	global	lcd_write4bits@value
lcd_write4bits@value:	; 1 bytes @ 0x3
	global	uart_puts@s
uart_puts@s:	; 1 bytes @ 0x3
	global	_lcd_init$338
_lcd_init$338:	; 2 bytes @ 0x3
	ds	1
??_timer0_read_ps:	; 0 bytes @ 0x4
?_lcd_send:	; 0 bytes @ 0x4
	global	timer2_init@ps
timer2_init@ps:	; 1 bytes @ 0x4
	global	lcd_send@mode
lcd_send@mode:	; 1 bytes @ 0x4
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x4
	ds	1
??_lcd_send:	; 0 bytes @ 0x5
	global	lcd_send@value
lcd_send@value:	; 1 bytes @ 0x5
	ds	1
??_lcd_command:	; 0 bytes @ 0x6
??___flneg:	; 0 bytes @ 0x6
??___lwdiv:	; 0 bytes @ 0x6
??___lwmod:	; 0 bytes @ 0x6
	global	lcd_command@value
lcd_command@value:	; 1 bytes @ 0x6
	global	___flpack@exp
___flpack@exp:	; 1 bytes @ 0x6
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x6
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x6
	ds	1
?_lcd_putch:	; 0 bytes @ 0x7
??_lcd_putch:	; 0 bytes @ 0x7
?_lcd_gotoxy:	; 0 bytes @ 0x7
?_lcd_begin:	; 0 bytes @ 0x7
??_lcd_clear:	; 0 bytes @ 0x7
??_frexp:	; 0 bytes @ 0x7
?_output_putch:	; 0 bytes @ 0x7
?_format_putchar:	; 0 bytes @ 0x7
	global	output_putch@c
output_putch@c:	; 1 bytes @ 0x7
	global	format_putchar@c
format_putchar@c:	; 1 bytes @ 0x7
	global	lcd_putch@value
lcd_putch@value:	; 1 bytes @ 0x7
	global	lcd_gotoxy@row
lcd_gotoxy@row:	; 1 bytes @ 0x7
	global	lcd_begin@dotsize
lcd_begin@dotsize:	; 1 bytes @ 0x7
	global	___flpack@sign
___flpack@sign:	; 1 bytes @ 0x7
	ds	1
??_lcd_gotoxy:	; 0 bytes @ 0x8
??_lcd_puts:	; 0 bytes @ 0x8
??_lcd_begin:	; 0 bytes @ 0x8
??_print_unit:	; 0 bytes @ 0x8
??_output_putch:	; 0 bytes @ 0x8
??_put_str:	; 0 bytes @ 0x8
??_format_putchar:	; 0 bytes @ 0x8
??___awtofl:	; 0 bytes @ 0x8
??___lltofl:	; 0 bytes @ 0x8
	global	lcd_puts@i
lcd_puts@i:	; 1 bytes @ 0x8
	global	___awtofl@sign
___awtofl@sign:	; 1 bytes @ 0x8
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	ds	1
??_format_number:	; 0 bytes @ 0x9
??___flsub:	; 0 bytes @ 0x9
	global	lcd_puts@string
lcd_puts@string:	; 1 bytes @ 0x9
	ds	1
??_log10:	; 0 bytes @ 0xA
??_pow:	; 0 bytes @ 0xA
??_floor:	; 0 bytes @ 0xA
??_calibrate:	; 0 bytes @ 0xA
??_measure_capacitance:	; 0 bytes @ 0xA
??_measure_inductance:	; 0 bytes @ 0xA
??_exp:	; 0 bytes @ 0xA
??_print_reading:	; 0 bytes @ 0xA
??_indicator:	; 0 bytes @ 0xA
??_format_double:	; 0 bytes @ 0xA
??_main:	; 0 bytes @ 0xA
??___altofl:	; 0 bytes @ 0xA
??_log:	; 0 bytes @ 0xA
??___lwtofl:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_format_number:	; 0 bytes @ 0x0
??___flpack:	; 0 bytes @ 0x0
??___flge:	; 0 bytes @ 0x0
	global	timer0_read_ps@prev
timer0_read_ps@prev:	; 1 bytes @ 0x0
	global	lcd_gotoxy@col
lcd_gotoxy@col:	; 1 bytes @ 0x0
	global	lcd_begin@lines
lcd_begin@lines:	; 1 bytes @ 0x0
	global	put_str@i
put_str@i:	; 2 bytes @ 0x0
	global	_timer0_init$124
_timer0_init$124:	; 2 bytes @ 0x0
	global	format_number@n
format_number@n:	; 2 bytes @ 0x0
	ds	1
	global	timer0_read_ps@count
timer0_read_ps@count:	; 2 bytes @ 0x1
	global	lcd_gotoxy@row_offsets
lcd_gotoxy@row_offsets:	; 4 bytes @ 0x1
	ds	1
	global	put_str@s
put_str@s:	; 1 bytes @ 0x2
	global	format_number@base
format_number@base:	; 1 bytes @ 0x2
	global	_timer0_init$125
_timer0_init$125:	; 2 bytes @ 0x2
	ds	1
	global	format_number@pad
format_number@pad:	; 1 bytes @ 0x3
	ds	1
	global	?___awtofl
?___awtofl:	; 4 bytes @ 0x4
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x4
	global	?___lltofl
?___lltofl:	; 4 bytes @ 0x4
	global	_timer0_init$126
_timer0_init$126:	; 2 bytes @ 0x4
	global	___awtofl@c
___awtofl@c:	; 2 bytes @ 0x4
	global	___fldiv@f2
___fldiv@f2:	; 4 bytes @ 0x4
	global	___lltofl@c
___lltofl@c:	; 4 bytes @ 0x4
	global	format_number@buf
format_number@buf:	; 32 bytes @ 0x4
	ds	1
	global	indicator@indicate
indicator@indicate:	; 1 bytes @ 0x5
	ds	1
	global	_timer0_init$127
_timer0_init$127:	; 2 bytes @ 0x6
	ds	2
	global	timer0_init@prescaler
timer0_init@prescaler:	; 1 bytes @ 0x8
	global	___fldiv@f1
___fldiv@f1:	; 4 bytes @ 0x8
	ds	1
	global	timer0_init@ps_mode
timer0_init@ps_mode:	; 1 bytes @ 0x9
	ds	3
??___fldiv:	; 0 bytes @ 0xC
	ds	4
	global	___fldiv@f3
___fldiv@f3:	; 4 bytes @ 0x10
	ds	4
	global	___fldiv@cntr
___fldiv@cntr:	; 1 bytes @ 0x14
	ds	1
	global	___fldiv@exp
___fldiv@exp:	; 1 bytes @ 0x15
	ds	1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x16
	ds	1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x17
	global	___flmul@f1
___flmul@f1:	; 4 bytes @ 0x17
	ds	4
	global	___flmul@f2
___flmul@f2:	; 4 bytes @ 0x1B
	ds	4
??___flmul:	; 0 bytes @ 0x1F
	ds	4
	global	___flmul@exp
___flmul@exp:	; 1 bytes @ 0x23
	ds	1
	global	format_number@padchar
format_number@padchar:	; 1 bytes @ 0x24
	global	___flmul@f3_as_product
___flmul@f3_as_product:	; 4 bytes @ 0x24
	ds	1
	global	_format_number$169
_format_number$169:	; 2 bytes @ 0x25
	ds	2
	global	format_number@di
format_number@di:	; 1 bytes @ 0x27
	ds	1
	global	format_number@i
format_number@i:	; 1 bytes @ 0x28
	global	___flmul@cntr
___flmul@cntr:	; 1 bytes @ 0x28
	ds	1
?_print_reading:	; 0 bytes @ 0x29
	global	?_measure_freq
?_measure_freq:	; 2 bytes @ 0x29
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x29
	global	print_reading@measurement
print_reading@measurement:	; 2 bytes @ 0x29
	ds	1
	global	?___fladd
?___fladd:	; 4 bytes @ 0x2A
	global	___fladd@f1
___fladd@f1:	; 4 bytes @ 0x2A
	ds	1
??_measure_freq:	; 0 bytes @ 0x2B
	global	_print_reading$1042
_print_reading$1042:	; 2 bytes @ 0x2B
	ds	2
	global	measure_freq@count
measure_freq@count:	; 2 bytes @ 0x2D
	global	_print_reading$1043
_print_reading$1043:	; 2 bytes @ 0x2D
	ds	1
	global	___fladd@f2
___fladd@f2:	; 4 bytes @ 0x2E
	ds	1
	global	?___lwtofl
?___lwtofl:	; 4 bytes @ 0x2F
	global	___lwtofl@c
___lwtofl@c:	; 2 bytes @ 0x2F
	ds	3
??___fladd:	; 0 bytes @ 0x32
	ds	1
	global	calibrate@i
calibrate@i:	; 1 bytes @ 0x33
	ds	3
	global	___fladd@sign
___fladd@sign:	; 1 bytes @ 0x36
	ds	1
	global	___fladd@exp2
___fladd@exp2:	; 1 bytes @ 0x37
	ds	1
	global	___fladd@exp1
___fladd@exp1:	; 1 bytes @ 0x38
	ds	1
	global	?_eval_poly
?_eval_poly:	; 4 bytes @ 0x39
	global	?___flsub
?___flsub:	; 4 bytes @ 0x39
	global	___flsub@f2
___flsub@f2:	; 4 bytes @ 0x39
	global	eval_poly@x
eval_poly@x:	; 4 bytes @ 0x39
	ds	4
	global	eval_poly@d
eval_poly@d:	; 1 bytes @ 0x3D
	global	___flsub@f1
___flsub@f1:	; 4 bytes @ 0x3D
	ds	1
	global	eval_poly@n
eval_poly@n:	; 2 bytes @ 0x3E
	ds	2
??_eval_poly:	; 0 bytes @ 0x40
	ds	5
	global	eval_poly@res
eval_poly@res:	; 4 bytes @ 0x45
	ds	4
	global	?_ldexp
?_ldexp:	; 4 bytes @ 0x49
	global	?_log
?_log:	; 4 bytes @ 0x49
	global	ldexp@value
ldexp@value:	; 4 bytes @ 0x49
	global	log@x
log@x:	; 4 bytes @ 0x49
	ds	4
	global	ldexp@newexp
ldexp@newexp:	; 2 bytes @ 0x4D
	global	log@exponent
log@exponent:	; 2 bytes @ 0x4D
	ds	2
	global	___altofl@sign
___altofl@sign:	; 1 bytes @ 0x4F
	ds	1
;!
;!Data Sizes:
;!    Strings     109
;!    Constant    76
;!    Data        5
;!    BSS         48
;!    Persistent  8
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      12
;!    BANK0            80     80      80
;!    BANK1            80     68      80
;!    BANK3            96     20      67
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    eval_poly@d	PTR const  size(1) Largest target is 40
;!		 -> exp@coeff(CODE[40]), log@coeff(CODE[36]), 
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> log@exponent(BANK0[2]), floor@expon(BANK1[2]), 
;!
;!    uart_puts@s	PTR const unsigned char  size(1) Largest target is 6
;!		 -> STR_22(CODE[3]), STR_20(CODE[3]), STR_14(CODE[6]), STR_9(CODE[3]), 
;!
;!    sp__memcpy	PTR void  size(1) Largest target is 18
;!		 -> buffer.x(BANK3[16]), buffer(BANK3[18]), 
;!
;!    lcd_puts@string	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_18(CODE[5]), STR_17(CODE[6]), STR_16(CODE[7]), STR_15(CODE[7]), 
;!		 -> STR_13(CODE[10]), STR_12(CODE[4]), STR_11(CODE[4]), STR_10(CODE[6]), 
;!
;!    putchar_ptr	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;!		 -> format_putchar(), output_putch(), lcd_putch(), 
;!
;!    put_str@s	PTR const unsigned char  size(1) Largest target is 15
;!		 -> STR_25(CODE[13]), STR_24(CODE[10]), STR_23(CODE[6]), STR_21(CODE[15]), 
;!		 -> STR_19(CODE[12]), 
;!
;!    print_unit@units	PTR const unsigned char [8] size(1) Largest target is 3
;!		 -> STR_8(CODE[3]), STR_7(CODE[3]), STR_6(CODE[3]), STR_5(CODE[3]), 
;!		 -> STR_4(CODE[3]), STR_3(CODE[3]), STR_2(CODE[3]), STR_1(CODE[2]), 
;!
;!    S31$op	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;!
;!    buffer.op	PTR FTN(unsigned char ,)void  size(1) Largest target is 0
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_lcd_begin
;!    _main->_lcd_puts
;!    _measure_inductance->___flge
;!    _measure_inductance->_print_unit
;!    _measure_capacitance->___flge
;!    _measure_capacitance->_print_unit
;!    _print_unit->_lcd_gotoxy
;!    _print_reading->_format_number
;!    _print_reading->_lcd_puts
;!    _lcd_begin->_lcd_command
;!    _indicator->_lcd_puts
;!    _lcd_puts->_lcd_putch
;!    _format_double->___flge
;!    _pow->___flge
;!    _exp->___flge
;!    _ldexp->___flge
;!    _floor->___flge
;!    ___flsub->___awtofl
;!    ___fldiv->___flpack
;!    ___lltofl->___flpack
;!    _log->___flge
;!    ___flmul->___awtofl
;!    ___flmul->_frexp
;!    ___fladd->___awtofl
;!    ___fladd->_frexp
;!    ___awtofl->___flpack
;!    _uart_puts->_uart_putch
;!    _measure_freq->_format_number
;!    _put_str->_output_putch
;!    _lcd_gotoxy->_lcd_command
;!    _format_number->___lwdiv
;!    _lcd_clear->_lcd_command
;!    _lcd_command->_lcd_send
;!    _lcd_send->_lcd_write4bits
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _print_unit->_lcd_gotoxy
;!    _print_reading->_format_number
;!    _indicator->_lcd_gotoxy
;!    _ldexp->_eval_poly
;!    _floor->___altofl
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
;!    _measure_freq->_format_number
;!    ___lwtofl->_measure_freq
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _measure_inductance->___fltol
;!    _measure_capacitance->___fltol
;!    _format_double->_pow
;!    _pow->_exp
;!    _exp->_floor
;!    _floor->___altofl
;!    ___fltol->_log10
;!    ___altofl->___fltol
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    _main->_format_double
;!
;!Critical Paths under _isr in BANK3
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

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0  258740
;!                          _calibrate
;!                          _delay10ms
;!                      _format_double
;!                          _indicator
;!                          _lcd_begin
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                           _lcd_init
;!                           _lcd_puts
;!                _measure_capacitance
;!                 _measure_inductance
;!                        _timer0_init
;!                        _timer2_init
;!                          _uart_init
;!                          _uart_puts
;! ---------------------------------------------------------------------------------
;! (1) _uart_init                                            4     4      0      48
;!                                              2 COMMON     4     4      0
;!                        _uart_enable
;! ---------------------------------------------------------------------------------
;! (2) _uart_enable                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _timer2_init                                          4     4      0     157
;!                                              2 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _timer0_init                                         10    10      0     371
;!                                              0 BANK0     10    10      0
;! ---------------------------------------------------------------------------------
;! (1) _measure_inductance                                  55    55      0   42294
;!                                             18 BANK1     43    43      0
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
;! (1) _measure_capacitance                                 19    19      0   41784
;!                                             18 BANK1     19    19      0
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
;! (2) _print_unit                                           3     3      0    1867
;!                                              8 COMMON     2     2      0
;!                         _lcd_gotoxy
;!                          _uart_puts
;! ---------------------------------------------------------------------------------
;! (2) _print_reading                                        6     4      2    8384
;!                                             41 BANK0      6     4      2
;!                            ___lwdiv
;!                            ___lwmod
;!                      _format_number
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (1) _lcd_init                                             3     3      0      46
;!                                              2 COMMON     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _lcd_begin                                            4     3      1     709
;!                                              7 COMMON     3     2      1
;!                                              0 BANK0      1     1      0
;!                        _lcd_command
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (1) _indicator                                            1     1      0    2812
;!                                              5 BANK0      1     1      0
;!                         _lcd_gotoxy
;!                           _lcd_puts
;! ---------------------------------------------------------------------------------
;! (3) _lcd_puts                                             2     2      0    1089
;!                                              8 COMMON     2     2      0
;!                          _lcd_putch
;! ---------------------------------------------------------------------------------
;! (1) _format_double                                       20    16      4  152936
;!                                              0 BANK3     20    16      4
;!                           ___awtofl
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;!                              _floor
;!                     _format_putchar *
;!                          _lcd_putch *
;!                              _log10
;!                       _output_putch *
;!                                _pow
;! ---------------------------------------------------------------------------------
;! (2) _pow                                                 21    13      8   85814
;!                                             47 BANK1     21    13      8
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___fltol
;!                           ___lltofl
;!                                _exp
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _exp                                                 15    11      4   46127
;!                                             32 BANK1     15    11      4
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
;! (4) _ldexp                                               12     6      6    2907
;!                                             73 BANK0      6     0      6
;!                                              0 BANK1      6     6      0
;!                             ___flge
;!                            ___flneg
;!                          _eval_poly (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___flneg                                              4     0      4     257
;!                                              2 COMMON     4     0      4
;! ---------------------------------------------------------------------------------
;! (4) _floor                                               10     6      4   10352
;!                                             22 BANK1     10     6      4
;!                           ___altofl
;!                            ___fladd
;!                            ___fldiv (ARG)
;!                             ___flge
;!                            ___fltol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (2) ___fltol                                             10     6      4     680
;!                                              8 BANK1     10     6      4
;!                            ___fldiv (ARG)
;!                              _log10 (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___altofl                                             5     1      4    2446
;!                                             79 BANK0      1     1      0
;!                                             18 BANK1      4     0      4
;!                           ___flpack
;!                            ___fltol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flsub                                              8     0      8    5089
;!                                             57 BANK0      8     0      8
;!                           ___awtofl (ARG)
;!                            ___fladd
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___fldiv                                             19    11      8    3931
;!                                              4 BANK0     19    11      8
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (3) ___lltofl                                             4     0      4    2344
;!                                              4 BANK0      4     0      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (2) _log10                                                8     4      4   33717
;!                                              0 BANK1      8     4      4
;!                            ___flmul
;!                                _log
;! ---------------------------------------------------------------------------------
;! (3) _log                                                  6     2      4   27200
;!                                             73 BANK0      6     2      4
;!                           ___awtofl
;!                            ___fladd
;!                             ___flge
;!                            ___flmul
;!                          _eval_poly
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (4) _frexp                                                7     2      5     436
;!                                              2 COMMON     7     2      5
;! ---------------------------------------------------------------------------------
;! (4) _eval_poly                                           16     9      7   11109
;!                                             57 BANK0     16     9      7
;!                            ___fladd
;!                            ___flmul
;! ---------------------------------------------------------------------------------
;! (2) ___flmul                                             19    11      8    6342
;!                                             23 BANK0     19    11      8
;!                           ___awtofl (ARG)
;!                            ___fldiv (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___fladd                                             15     7      8    4123
;!                                             42 BANK0     15     7      8
;!                           ___awtofl (ARG)
;!                            ___flmul (ARG)
;!                           ___flpack
;!                              _frexp (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___flge                                              12     4      8    2124
;!                                              2 COMMON     8     0      8
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (4) ___awtofl                                             9     5      4    2686
;!                                              8 COMMON     1     1      0
;!                                              4 BANK0      4     0      4
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (1) _calibrate                                            1     1      0   14240
;!                                             51 BANK0      1     1      0
;!                           ___lwtofl
;!                          _delay10ms
;!                          _lcd_clear
;!                         _lcd_gotoxy
;!                          _lcd_putch
;!                       _measure_freq
;!                            _put_str
;!                          _uart_puts
;! ---------------------------------------------------------------------------------
;! (1) _uart_puts                                            1     1      0     175
;!                                              3 COMMON     1     1      0
;!                         _uart_putch
;! ---------------------------------------------------------------------------------
;! (2) _uart_putch                                           1     1      0      22
;!                                              2 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _measure_freq                                         6     4      2    7446
;!                                             41 BANK0      6     4      2
;!                      _format_number
;!                         _lcd_gotoxy
;!                            _put_str
;!                     _timer0_read_ps
;! ---------------------------------------------------------------------------------
;! (3) _timer0_read_ps                                       9     7      2     167
;!                                              2 COMMON     6     4      2
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _put_str                                              3     3      0    1084
;!                                              0 BANK0      3     3      0
;!                       _output_putch
;! ---------------------------------------------------------------------------------
;! (3) _lcd_gotoxy                                           6     5      1    1692
;!                                              7 COMMON     1     0      1
;!                                              0 BANK0      5     5      0
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (3) _format_number                                       42    38      4    4438
;!                                              9 COMMON     1     1      0
;!                                              0 BANK0     41    37      4
;!                            ___lwdiv
;!                            ___lwmod
;!                     _format_putchar *
;!                          _lcd_putch *
;!                       _output_putch *
;! ---------------------------------------------------------------------------------
;! (3) _output_putch                                         1     0      1     804
;!                                              7 COMMON     1     0      1
;!                          _lcd_putch
;! ---------------------------------------------------------------------------------
;! (4) _lcd_putch                                            1     0      1     719
;!                                              7 COMMON     1     0      1
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (4) _format_putchar                                       1     0      1     220
;!                                              7 COMMON     1     0      1
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     451
;!                                              2 COMMON     5     1      4
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     454
;!                                              2 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _lcd_clear                                            2     2      0     387
;!                                              7 COMMON     2     2      0
;!                        _lcd_command
;! ---------------------------------------------------------------------------------
;! (4) _lcd_command                                          1     1      0     387
;!                                              6 COMMON     1     1      0
;!                           _lcd_send
;! ---------------------------------------------------------------------------------
;! (5) _lcd_send                                             2     1      1     356
;!                                              4 COMMON     2     1      1
;!                     _lcd_write4bits
;! ---------------------------------------------------------------------------------
;! (6) _lcd_write4bits                                       2     2      0     133
;!                                              2 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _delay10ms                                            1     1      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___lwtofl                                             4     0      4    2669
;!                                             47 BANK0      4     0      4
;!                           ___flpack
;!                       _measure_freq (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___flpack                                            10     4      6    2248
;!                                              2 COMMON     6     0      6
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (8) _isr                                                  2     2      0       0
;!                                              0 COMMON     2     2      0
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
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _format_putchar *
;!           _lcd_putch *
;!             _lcd_send
;!               _lcd_write4bits
;!           _output_putch *
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _put_str
;!           _output_putch
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
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
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _put_str
;!         _output_putch
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!       _timer0_read_ps
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!     _uart_puts
;!       _uart_putch
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
;!           ___flge
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
;!               ___flge
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
;!             ___flge
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
;!     _format_putchar *
;!     _lcd_putch *
;!       _lcd_send
;!         _lcd_write4bits
;!     _log10 *
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
;!         ___flge
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
;!     _output_putch *
;!       _lcd_putch
;!         _lcd_send
;!           _lcd_write4bits
;!     _pow *
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
;!             ___flge
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
;!               ___flge
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
;!                   ___flge
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
;!                 ___flge
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
;!           ___flge
;!           ___flneg
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
;!           ___flge
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
;!         ___flge
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
;!   _indicator
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _lcd_puts
;!       _lcd_putch
;!         _lcd_send
;!           _lcd_write4bits
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
;!           ___flge
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
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _format_putchar *
;!           _lcd_putch *
;!             _lcd_send
;!               _lcd_write4bits
;!           _output_putch *
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _put_str
;!           _output_putch
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!         _timer0_read_ps
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _measure_freq
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _put_str
;!         _output_putch
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!       _timer0_read_ps
;!     _print_reading
;!       ___lwdiv
;!       ___lwmod
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
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
;!       _uart_puts
;!         _uart_putch
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
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
;!           ___flge
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
;!         _format_number
;!           ___lwdiv
;!           ___lwmod
;!           _format_putchar *
;!           _lcd_putch *
;!             _lcd_send
;!               _lcd_write4bits
;!           _output_putch *
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!         _lcd_gotoxy
;!           _lcd_command
;!             _lcd_send
;!               _lcd_write4bits
;!         _put_str
;!           _output_putch
;!             _lcd_putch
;!               _lcd_send
;!                 _lcd_write4bits
;!         _timer0_read_ps
;!     _lcd_gotoxy
;!       _lcd_command
;!         _lcd_send
;!           _lcd_write4bits
;!     _measure_freq
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!       _lcd_gotoxy
;!         _lcd_command
;!           _lcd_send
;!             _lcd_write4bits
;!       _put_str
;!         _output_putch
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
;!       _timer0_read_ps
;!     _print_reading
;!       ___lwdiv
;!       ___lwmod
;!       _format_number
;!         ___lwdiv
;!         ___lwmod
;!         _format_putchar *
;!         _lcd_putch *
;!           _lcd_send
;!             _lcd_write4bits
;!         _output_putch *
;!           _lcd_putch
;!             _lcd_send
;!               _lcd_write4bits
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
;!       _uart_puts
;!         _uart_putch
;!     _put_str
;!       _output_putch
;!         _lcd_putch
;!           _lcd_send
;!             _lcd_write4bits
;!   _timer0_init
;!   _timer2_init
;!   _uart_init
;!     _uart_enable
;!   _uart_puts
;!     _uart_putch
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     14      43       9       69.8%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     44      50       7      100.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     50      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       C       1       85.7%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      EF      12        0.0%
;!ABS                  0      0      EF       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 112 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_calibrate
;;		_delay10ms
;;		_format_double
;;		_indicator
;;		_lcd_begin
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_init
;;		_lcd_puts
;;		_measure_capacitance
;;		_measure_inductance
;;		_timer0_init
;;		_timer2_init
;;		_uart_init
;;		_uart_puts
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"../../../src/LC-meter.c"
	line	112
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../../../src/LC-meter.c"
	line	112
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 0
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	113
	
l4345:	
;LC-meter.c: 113: bres = msecpart = msecs = seconds = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_seconds)^0180h	;volatile
	clrf	(_seconds+1)^0180h	;volatile
	clrf	(_seconds+2)^0180h	;volatile
	clrf	(_seconds+3)^0180h	;volatile
	movf	((_seconds+3)^0180h),w	;volatile
	movwf	(_msecs+3)^0180h	;volatile
	movf	((_seconds+2)^0180h),w	;volatile
	movwf	(_msecs+2)^0180h	;volatile
	movf	((_seconds+1)^0180h),w	;volatile
	movwf	(_msecs+1)^0180h	;volatile
	movf	((_seconds)^0180h),w	;volatile
	movwf	(_msecs)^0180h	;volatile

	movf	1+((((_msecs)^0180h))),w	;volatile
	movwf	(_msecpart+1)^0180h	;volatile
	movf	0+((((_msecs)^0180h))),w	;volatile
	movwf	(_msecpart)^0180h	;volatile
	movf	((_msecpart+1)^0180h),w	;volatile
	movwf	(_bres+1)^0180h	;volatile
	movf	((_msecpart)^0180h),w	;volatile
	movwf	(_bres)^0180h	;volatile
	line	115
;LC-meter.c: 115: CCal = 1000;
	movlw	0x44
	movwf	(_CCal+3)^0180h
	movlw	0x7a
	movwf	(_CCal+2)^0180h
	movlw	0x0
	movwf	(_CCal+1)^0180h
	movlw	0x0
	movwf	(_CCal)^0180h

	line	122
;LC-meter.c: 122: CMCON = 0b00000101;
	movlw	low(05h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(156)^080h	;volatile
	line	124
;LC-meter.c: 124: TRISA = 0b11001111;
	movlw	low(0CFh)
	movwf	(133)^080h	;volatile
	line	127
	
l4347:	
;LC-meter.c: 127: timer0_init(0b100 | 0x40);
	movlw	low(044h)
	fcall	_timer0_init
	line	130
	
l4349:	
;LC-meter.c: 130: T0SE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1036/8)^080h,(1036)&7	;volatile
	line	141
	
l4351:	
;LC-meter.c: 141: nRBPU = 0;
	bcf	(1039/8)^080h,(1039)&7	;volatile
	line	144
	
l4353:	
;LC-meter.c: 144: TRISC3 = 0;
	bcf	(1083/8)^080h,(1083)&7	;volatile
	line	145
	
l4355:	
;LC-meter.c: 145: RC3 = ((1) == 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(59/8),(59)&7	;volatile
	line	147
	
l4357:	
;LC-meter.c: 147: SSPEN = 0;
	bcf	(165/8),(165)&7	;volatile
	line	152
	
l4359:	
;LC-meter.c: 152: timer2_init(0b000 | 0x80);
	movlw	low(080h)
	fcall	_timer2_init
	line	157
	
l4361:	
;LC-meter.c: 157: TRISC &= 0b10110101;
	movlw	low(0B5h)
	andwf	(135)^080h,f	;volatile
	line	169
	
l4363:	
;LC-meter.c: 169: lcd_init(!0);
	movlw	low(01h)
	fcall	_lcd_init
	line	170
	
l4365:	
;LC-meter.c: 170: lcd_begin(2, 1);
	clrf	(lcd_begin@dotsize)
	incf	(lcd_begin@dotsize),f
	movlw	low(02h)
	fcall	_lcd_begin
	line	173
	
l4367:	
;LC-meter.c: 173: TRISC |= (1 << 4);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(135)^080h+(4/8),(4)&7	;volatile
	line	174
	
l4369:	
;LC-meter.c: 174: TRISC &= ~(1 << 5);
	bcf	(135)^080h+(5/8),(5)&7	;volatile
	line	176
	
l4371:	
;LC-meter.c: 176: PORTC &= ~(1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(5/8),(5)&7	;volatile
	line	177
	
l4373:	
;LC-meter.c: 177: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	178
	
l4375:	
;LC-meter.c: 178: PORTC |= (1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(5/8),(5)&7	;volatile
	line	179
	
l4377:	
;LC-meter.c: 179: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	180
	
l4379:	
;LC-meter.c: 180: PORTC &= ~(1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(5/8),(5)&7	;volatile
	line	181
	
l4381:	
;LC-meter.c: 181: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	182
	
l4383:	
;LC-meter.c: 182: PORTC |= (1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(7)+(5/8),(5)&7	;volatile
	line	183
	
l4385:	
;LC-meter.c: 183: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	184
	
l4387:	
;LC-meter.c: 184: PORTC &= ~(1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(7)+(5/8),(5)&7	;volatile
	line	190
	
l4389:	
;LC-meter.c: 190: uart_init();
	fcall	_uart_init
	line	194
	
l4391:	
;LC-meter.c: 194: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	195
	
l4393:	
;LC-meter.c: 195: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	198
	
l4395:	
;LC-meter.c: 198: putchar_ptr = &lcd_putch;
	movlw	(low((fp__lcd_putch-fpbase)))&0ffh
	movwf	(_putchar_ptr)
	line	205
	
l4397:	
;LC-meter.c: 205: lcd_gotoxy(0, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	207
	
l4399:	
;LC-meter.c: 207: lcd_puts("LC-meter ");
	movlw	(low((((STR_13)-__stringbase)|8000h)))&0ffh
	fcall	_lcd_puts
	line	208
	
l4401:	
;LC-meter.c: 208: format_double( CCal);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+3)^0180h,w
	movwf	(format_double@num+3)^0180h
	movf	(_CCal+2)^0180h,w
	movwf	(format_double@num+2)^0180h
	movf	(_CCal+1)^0180h,w
	movwf	(format_double@num+1)^0180h
	movf	(_CCal)^0180h,w
	movwf	(format_double@num)^0180h

	fcall	_format_double
	line	214
	
l4403:	
;LC-meter.c: 214: delay10ms(200);
	movlw	low(0C8h)
	fcall	_delay10ms
	line	217
	
l4405:	
;LC-meter.c: 217: calibrate();
	fcall	_calibrate
	line	219
	
l4407:	
;LC-meter.c: 219: lcd_clear();
	fcall	_lcd_clear
	line	230
	
l4409:	
;LC-meter.c: 230: uart_puts("...\r\n");
	movlw	(low((((STR_14)-__stringbase)|8000h)))&0ffh
	fcall	_uart_puts
	line	231
	
l4411:	
;LC-meter.c: 231: if(RC4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7	;volatile
	goto	u4091
	goto	u4090
u4091:
	goto	l4415
u4090:
	line	232
	
l4413:	
;LC-meter.c: 232: measure_capacitance();
	fcall	_measure_capacitance
	goto	l4417
	line	234
	
l4415:	
;LC-meter.c: 233: else
;LC-meter.c: 234: measure_inductance();
	fcall	_measure_inductance
	line	236
	
l4417:	
;LC-meter.c: 236: indicator(1);
	movlw	low(01h)
	fcall	_indicator
	line	237
	
l4419:	
;LC-meter.c: 237: delay10ms(30);
	movlw	low(01Eh)
	fcall	_delay10ms
	line	238
	
l4421:	
;LC-meter.c: 238: indicator(0);
	movlw	low(0)
	fcall	_indicator
	line	239
	
l4423:	
;LC-meter.c: 239: delay10ms(20);
	movlw	low(014h)
	fcall	_delay10ms
	line	240
;LC-meter.c: 240: }
	goto	l4409
	global	start
	ljmp	start
	opt stack 0
	line	241
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_uart_init

;; *************** function _uart_init *****************
;; Defined at:
;;		line 93 in file "../../../lib/uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart_enable
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"../../../lib/uart.c"
	line	93
global __ptext1
__ptext1:	;psect for function _uart_init
psect	text1
	file	"../../../lib/uart.c"
	line	93
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
;incstack = 0
	opt	stack 5
; Regs used in _uart_init: [wreg+status,2+status,0+pclath+cstack]
	line	96
	
l3211:	
;uart.c: 96: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	97
;uart.c: 97: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7	;volatile
	line	98
;uart.c: 98: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(62/8),(62)&7	;volatile
	line	99
	
l3213:	
;uart.c: 99: SPBRG = ((unsigned short int)((double)(20000000) / (16 * (double)(38400))) - 1);
	movlw	low(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	102
	
l3215:	
;uart.c: 101: RCSTA |= 0x90
;uart.c: 102: | (0 == 1 ? 0b1 : 0);
	movlw	low(090h)
	bcf	status, 5	;RP0=0, select bank0
	iorwf	(24),f	;volatile
	line	104
;uart.c: 104: TXSTA |= (1 == 1) ? 0b100 : 0b000;
	
l3219:	
	
l3221:	
;uart.c: 106: TX9 |= (0 == 1) ? 0b01000000 : 0;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(152)^080h+(2/8),(2)&7	;volatile
	line	106
	
l3223:	
	
l3227:	
	line	108
	
l3229:	
;uart.c: 108: uart_enable();
	fcall	_uart_enable
	line	109
	
l563:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
	signat	_uart_init,88
	global	_uart_enable

;; *************** function _uart_enable *****************
;; Defined at:
;;		line 75 in file "../../../lib/uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart_init
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	75
global __ptext2
__ptext2:	;psect for function _uart_enable
psect	text2
	file	"../../../lib/uart.c"
	line	75
	global	__size_of_uart_enable
	__size_of_uart_enable	equ	__end_of_uart_enable-_uart_enable
	
_uart_enable:	
;incstack = 0
	opt	stack 5
; Regs used in _uart_enable: []
	line	76
	
l3035:	
;uart.c: 76: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7	;volatile
	line	77
;uart.c: 77: TRISC6 = RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(62/8),(62)&7	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1086/8)^080h,(1086)&7	;volatile
	line	78
;uart.c: 78: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	79
;uart.c: 79: RCSTA |= 0x80;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(24)+(7/8),(7)&7	;volatile
	line	80
;uart.c: 80: RCIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1125/8)^080h,(1125)&7	;volatile
	line	81
	
l549:	
	return
	opt stack 0
GLOBAL	__end_of_uart_enable
	__end_of_uart_enable:
	signat	_uart_enable,88
	global	_timer2_init

;; *************** function _timer2_init *****************
;; Defined at:
;;		line 110 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1    3[COMMON] unsigned char 
;;  postscaler      1    0        unsigned char 
;;  ps              1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"../../../lib/timer.c"
	line	110
global __ptext3
__ptext3:	;psect for function _timer2_init
psect	text3
	file	"../../../lib/timer.c"
	line	110
	global	__size_of_timer2_init
	__size_of_timer2_init	equ	__end_of_timer2_init-_timer2_init
	
_timer2_init:	
;incstack = 0
	opt	stack 6
; Regs used in _timer2_init: [wreg+status,2+status,0]
;timer2_init@ps_mode stored from wreg
	movwf	(timer2_init@ps_mode)
	line	111
	
l3095:	
;timer.c: 111: unsigned char ps = ps_mode & 0b1111;
	movf	(timer2_init@ps_mode),w
	movwf	(timer2_init@ps)
	
l3097:	
	movlw	low(0Fh)
	andwf	(timer2_init@ps),f
	line	112
	
l3099:	
	line	115
	
l3101:	
;timer.c: 115: TOUTPS0 = postscaler & 1;
	bcf	(147/8),(147)&7	;volatile
	line	116
	
l3103:	
;timer.c: 116: TOUTPS1 = (postscaler >> 1) & 1;
	bcf	(148/8),(148)&7	;volatile
	line	117
	
l3105:	
;timer.c: 117: TOUTPS2 = (postscaler >> 2) & 1;
	bcf	(149/8),(149)&7	;volatile
	line	119
	
l3107:	
;timer.c: 119: T2CKPS0 = (ps >> 1) & 1;
	movf	(timer2_init@ps),w
	movwf	(??_timer2_init+0)+0
	clrc
	rrf	(??_timer2_init+0)+0,f
	btfsc	0+(??_timer2_init+0)+0,0
	goto	u2701
	goto	u2700
	
u2701:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(144/8),(144)&7	;volatile
	goto	u2714
u2700:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(144/8),(144)&7	;volatile
u2714:
	line	120
	
l3109:	
;timer.c: 120: T2CKPS1 = (ps >> 2) & 1;
	movf	(timer2_init@ps),w
	movwf	(??_timer2_init+0)+0
	clrc
	rrf	(??_timer2_init+0)+0,f
	clrc
	rrf	(??_timer2_init+0)+0,f
	btfsc	0+(??_timer2_init+0)+0,0
	goto	u2721
	goto	u2720
	
u2721:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(145/8),(145)&7	;volatile
	goto	u2734
u2720:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(145/8),(145)&7	;volatile
u2734:
	line	122
	
l3111:	
;timer.c: 122: TMR2 = 0;
	clrf	(17)	;volatile
	line	124
	
l3113:	
;timer.c: 124: TMR2ON = 1;
	bsf	(146/8),(146)&7	;volatile
	line	126
	
l3115:	
;timer.c: 126: TMR2IF = 0;
	bcf	(97/8),(97)&7	;volatile
	line	127
	
l3117:	
;timer.c: 127: TMR2IE = !!(ps_mode & 0x80);
	btfsc	(timer2_init@ps_mode),(7)&7
	goto	u2741
	goto	u2740
	
u2741:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	goto	u2754
u2740:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1121/8)^080h,(1121)&7	;volatile
u2754:
	line	128
	
l123:	
	return
	opt stack 0
GLOBAL	__end_of_timer2_init
	__end_of_timer2_init:
	signat	_timer2_init,4216
	global	_timer0_init

;; *************** function _timer0_init *****************
;; Defined at:
;;		line 7 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;  ps_mode         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps_mode         1    9[BANK0 ] unsigned char 
;;  prescaler       1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : B00/100
;;		On exit  : B00/0
;;		Unchanged: 800/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	7
global __ptext4
__ptext4:	;psect for function _timer0_init
psect	text4
	file	"../../../lib/timer.c"
	line	7
	global	__size_of_timer0_init
	__size_of_timer0_init	equ	__end_of_timer0_init-_timer0_init
	
_timer0_init:	
;incstack = 0
	opt	stack 6
; Regs used in _timer0_init: [wreg+status,2+status,0]
;timer0_init@ps_mode stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(timer0_init@ps_mode)
	line	8
	
l4079:	
;timer.c: 8: unsigned char prescaler = ps_mode & 0b1111;
	movf	(timer0_init@ps_mode),w
	movwf	(timer0_init@prescaler)
	
l4081:	
	movlw	low(0Fh)
	andwf	(timer0_init@prescaler),f
	line	10
	
l4083:	
;timer.c: 10: TMR0 = 0;
	clrf	(1)	;volatile
	line	13
	
l4085:	
;timer.c: 13: OPTION_REG |= (!!(ps_mode & 0x40)) ? 0x20 : 0x00;
	btfsc	(timer0_init@ps_mode),(6)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l4089
u3890:
	
l4087:	
	clrf	(_timer0_init$124)
	clrf	(_timer0_init$124+1)
	goto	l4091
	
l4089:	
	movlw	020h
	movwf	(_timer0_init$124)
	clrf	(_timer0_init$124+1)
	
l4091:	
	movf	(_timer0_init$124),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(129)^080h,f	;volatile
	line	16
	
l4093:	
;timer.c: 16: OPTION_REG |= (!!(ps_mode & 0x10)) ? 0x10 : 0x00;
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(timer0_init@ps_mode),(4)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l4097
u3900:
	
l4095:	
	clrf	(_timer0_init$125)
	clrf	(_timer0_init$125+1)
	goto	l4099
	
l4097:	
	movlw	010h
	movwf	(_timer0_init$125)
	clrf	(_timer0_init$125+1)
	
l4099:	
	movf	(_timer0_init$125),w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(129)^080h,f	;volatile
	line	19
	
l4101:	
;timer.c: 19: OPTION_REG &= (!!prescaler) ? ~0x08 : ~0x00;
	bcf	status, 5	;RP0=0, select bank0
	movf	((timer0_init@prescaler)),w
	btfss	status,2
	goto	u3911
	goto	u3910
u3911:
	goto	l4105
u3910:
	
l4103:	
	movlw	0FFh
	movwf	(_timer0_init$126)
	movlw	0FFh
	movwf	((_timer0_init$126))+1
	goto	l4107
	
l4105:	
	movlw	0F7h
	movwf	(_timer0_init$126)
	movlw	0FFh
	movwf	((_timer0_init$126))+1
	
l4107:	
	movf	(_timer0_init$126),w
	bsf	status, 5	;RP0=1, select bank1
	andwf	(129)^080h,f	;volatile
	line	26
	
l4109:	
;timer.c: 26: OPTION_REG &= ~0b111;
	movlw	low(0F8h)
	andwf	(129)^080h,f	;volatile
	line	28
	
l4111:	
;timer.c: 28: if(prescaler > 0) {
	bcf	status, 5	;RP0=0, select bank0
	movf	((timer0_init@prescaler)),w
	btfsc	status,2
	goto	u3921
	goto	u3920
u3921:
	goto	l4115
u3920:
	line	29
	
l4113:	
;timer.c: 29: OPTION_REG |= (prescaler - 1) & 0b111;
	movf	(timer0_init@prescaler),w
	addlw	0FFh
	andlw	07h
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(129)^080h,f	;volatile
	line	40
	
l4115:	
;timer.c: 35: }
;timer.c: 40: INTCON &= ~0x40;
	bcf	(11)+(6/8),(6)&7	;volatile
	line	41
	
l4117:	
;timer.c: 41: INTCON |= (!!(ps_mode & 0x80)) ? 0x20 : 0x00;
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(timer0_init@ps_mode),(7)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l4121
u3930:
	
l4119:	
	clrf	(_timer0_init$127)
	clrf	(_timer0_init$127+1)
	goto	l4123
	
l4121:	
	movlw	020h
	movwf	(_timer0_init$127)
	clrf	(_timer0_init$127+1)
	
l4123:	
	movf	(_timer0_init$127),w
	iorwf	(11),f	;volatile
	line	42
	
l109:	
	return
	opt stack 0
GLOBAL	__end_of_timer0_init
	__end_of_timer0_init:
	signat	_timer0_init,4216
	global	_measure_inductance

;; *************** function _measure_inductance *****************
;; Defined at:
;;		line 192 in file "../../../lib/../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Lin             4   57[BANK1 ] unsigned char 
;;  denominator     4   22[BANK1 ] unsigned char 
;;  numerator       4   18[BANK1 ] unsigned char 
;;  var             2   55[BANK1 ] unsigned short 
;;  unit            1   42[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      43       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      43       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
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
psect	text5,local,class=CODE,delta=2,merge=1
	file	"../../../lib/../src/measure.c"
	line	192
global __ptext5
__ptext5:	;psect for function _measure_inductance
psect	text5
	file	"../../../lib/../src/measure.c"
	line	192
	global	__size_of_measure_inductance
	__size_of_measure_inductance	equ	__end_of_measure_inductance-_measure_inductance
	
_measure_inductance:	
;incstack = 0
	opt	stack 0
; Regs used in _measure_inductance: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	199
	
l4281:	
;measure.c: 193: unsigned char unit;
;measure.c: 194: unsigned short int var;
;measure.c: 196: double Lin, numerator, denominator;
;measure.c: 199: lcd_gotoxy(0, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	200
;measure.c: 200: put_str("Inductivity ");
	movlw	(low((((STR_25)-__stringbase)|8000h)))&0ffh
	fcall	_put_str
	line	202
	
l4283:	
;measure.c: 202: var = measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@var+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@var)^080h
	line	204
	
l4285:	
;measure.c: 204: F3 = (double)var;
	movf	(measure_inductance@var+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwtofl@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@var)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F3+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F3+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F3+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F3)^080h

	line	205
	
l4287:	
;measure.c: 205: if(F3 > F1)
	movf	(_F1+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(_F1+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(_F1+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(_F1)^080h,w
	movwf	(___flge@ff1)

	movf	(_F3+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(_F3+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(_F3+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(_F3)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4051
	goto	u4050
u4051:
	goto	l4291
u4050:
	line	206
	
l4289:	
;measure.c: 206: F3 = F1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_F1+3)^080h,w
	movwf	(_F3+3)^080h
	movf	(_F1+2)^080h,w
	movwf	(_F3+2)^080h
	movf	(_F1+1)^080h,w
	movwf	(_F3+1)^080h
	movf	(_F1)^080h,w
	movwf	(_F3)^080h

	line	208
	
l4291:	
;measure.c: 208: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1051+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1051+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1051+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1051)^080h

	
l4293:	
;measure.c: 208: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movf	(_measure_inductance$1051+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1051+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1051+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1051)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1052+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1052+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1052+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1052)^080h

	
l4295:	
;measure.c: 208: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1053+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1053+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1053+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1053)^080h

	
l4297:	
;measure.c: 208: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movf	(_measure_inductance$1052+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1052+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1052+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1052)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1053+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1053+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1053+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1053)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1054+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1054+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1054+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1054)^080h

	
l4299:	
;measure.c: 208: numerator = ((F1 * F1) - (F3 * F3)) * ((F1 * F1) - (F2 - F2)) * (100 * 100);
	movlw	0x46
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0x1c
	movwf	(___flmul@f1+2)
	movlw	0x40
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1054+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1054+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1054+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1054)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@numerator+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@numerator+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@numerator+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@numerator)^080h

	line	210
	
l4301:	
;measure.c: 210: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1055+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1055+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1055+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1055)^080h

	
l4303:	
;measure.c: 210: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1055+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1055+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1055+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1055)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1052+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1052+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1052+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1052)^080h

	
l4305:	
;measure.c: 210: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1052+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1052+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1052+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1052)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1053+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1053+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1053+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1053)^080h

	
l4307:	
;measure.c: 210: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1053+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1053+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1053+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1053)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1054+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1054+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1054+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1054)^080h

	
l4309:	
;measure.c: 210: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1054+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1054+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1054+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1054)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1056+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1056+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1056+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1056)^080h

	
l4311:	
;measure.c: 210: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1056+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1056+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1056+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1056)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1057+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1057+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1057+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_inductance$1057)^080h

	
l4313:	
;measure.c: 210: denominator = 4 * 3.14159265358979323846l * 3.14159265358979323846l * F1 * F1 * F2 * F2 * F3 * F3 * CCal;
	movlw	0x42
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0x1d
	movwf	(___flmul@f1+2)
	movlw	0xe9
	movwf	(___flmul@f1+1)
	movlw	0xe6
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1057+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1057+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1057+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_inductance$1057)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@denominator+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@denominator+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@denominator+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@denominator)^080h

	line	212
	
l4315:	
;measure.c: 212: Lin = (numerator / denominator) * 1e+15l;
	movlw	0x58
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0x63
	movwf	(___flmul@f1+2)
	movlw	0x5f
	movwf	(___flmul@f1+1)
	movlw	0xa9
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@denominator)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@numerator)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	214
	
l4317:	
;measure.c: 214: if(Lin > 999) {
	movlw	0x44
	movwf	(___flge@ff1+3)
	movlw	0x79
	movwf	(___flge@ff1+2)
	movlw	0xc0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movf	(measure_inductance@Lin+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(measure_inductance@Lin+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(measure_inductance@Lin+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(measure_inductance@Lin)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4061
	goto	u4060
u4061:
	goto	l4335
u4060:
	line	215
	
l4319:	
;measure.c: 215: if(Lin > (999e+03l)) {
	movlw	0x49
	movwf	(___flge@ff1+3)
	movlw	0x73
	movwf	(___flge@ff1+2)
	movlw	0xe5
	movwf	(___flge@ff1+1)
	movlw	0x80
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(measure_inductance@Lin+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(measure_inductance@Lin+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(measure_inductance@Lin)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4071
	goto	u4070
u4071:
	goto	l4331
u4070:
	line	216
	
l4321:	
;measure.c: 216: if(Lin > (999e+06l)) {
	movlw	0x4e
	movwf	(___flge@ff1+3)
	movlw	0x6e
	movwf	(___flge@ff1+2)
	movlw	0x2e
	movwf	(___flge@ff1+1)
	movlw	0x1f
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(measure_inductance@Lin+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(measure_inductance@Lin+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(measure_inductance@Lin)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4081
	goto	u4080
u4081:
	goto	l4327
u4080:
	line	217
	
l4323:	
;measure.c: 217: Lin = Lin / (1e+09l);
	movlw	0x4e
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+3)
	movlw	0x6e
	movwf	(___fldiv@f2+2)
	movlw	0x6b
	movwf	(___fldiv@f2+1)
	movlw	0x28
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	218
	
l4325:	
;measure.c: 218: unit = 0;
	clrf	(measure_inductance@unit)^080h
	line	219
;measure.c: 219: } else {
	goto	l4337
	line	220
	
l4327:	
;measure.c: 220: Lin = Lin / (1e+06l);
	movlw	0x49
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+3)
	movlw	0x74
	movwf	(___fldiv@f2+2)
	movlw	0x24
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	221
	
l4329:	
;measure.c: 221: unit = 1;
	clrf	(measure_inductance@unit)^080h
	incf	(measure_inductance@unit)^080h,f
	goto	l4337
	line	224
	
l4331:	
;measure.c: 224: Lin = Lin / 1e+03l;
	movlw	0x44
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+3)
	movlw	0x7a
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	225
	
l4333:	
;measure.c: 225: unit = 2;
	movlw	low(02h)
	movwf	(measure_inductance@unit)^080h
	goto	l4337
	line	228
	
l4335:	
;measure.c: 228: unit = 3;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(measure_inductance@unit)^080h
	line	230
	
l4337:	
;measure.c: 230: Lin = Lin * 100;
	movlw	0x42
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0xc8
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@Lin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_inductance@Lin)^080h

	line	231
	
l4339:	
;measure.c: 231: var = (unsigned short int)Lin;
	movf	(measure_inductance@Lin+3)^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(measure_inductance@Lin+2)^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(measure_inductance@Lin+1)^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(measure_inductance@Lin)^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	movwf	(measure_inductance@var+1)^080h
	movf	0+(((0+(?___fltol))^080h)),w
	movwf	(measure_inductance@var)^080h
	line	233
	
l4341:	
;measure.c: 233: print_reading(var);
	movf	(measure_inductance@var+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(print_reading@measurement+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@var)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(print_reading@measurement)
	fcall	_print_reading
	line	234
	
l4343:	
;measure.c: 234: print_unit(unit);
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_inductance@unit)^080h,w
	fcall	_print_unit
	line	235
	
l491:	
	return
	opt stack 0
GLOBAL	__end_of_measure_inductance
	__end_of_measure_inductance:
	signat	_measure_inductance,88
	global	_measure_capacitance

;; *************** function _measure_capacitance *****************
;; Defined at:
;;		line 113 in file "../../../lib/../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Cin             4   33[BANK1 ] unsigned char 
;;  var             2   31[BANK1 ] unsigned short 
;;  unit            1   30[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      19       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      19       0       0
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
;;		_lcd_gotoxy
;;		_measure_freq
;;		_print_reading
;;		_print_unit
;;		_put_str
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	113
global __ptext6
__ptext6:	;psect for function _measure_capacitance
psect	text6
	file	"../../../lib/../src/measure.c"
	line	113
	global	__size_of_measure_capacitance
	__size_of_measure_capacitance	equ	__end_of_measure_capacitance-_measure_capacitance
	
_measure_capacitance:	
;incstack = 0
	opt	stack 0
; Regs used in _measure_capacitance: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	121
	
l4233:	
;measure.c: 114: unsigned char unit;
;measure.c: 115: unsigned short int var;
;measure.c: 117: double Cin;
;measure.c: 121: lcd_gotoxy(0, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	122
;measure.c: 122: put_str("Capacity ");
	movlw	(low((((STR_24)-__stringbase)|8000h)))&0ffh
	fcall	_put_str
	line	124
	
l4235:	
;measure.c: 124: var = measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@var+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_measure_freq)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@var)^080h
	line	126
	
l4237:	
;measure.c: 126: F3 = (double)var;
	movf	(measure_capacitance@var+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwtofl@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@var)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F3+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F3+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F3+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F3)^080h

	line	149
	
l4239:	
;measure.c: 149: putchar_ptr = &output_putch;
	movlw	(low((fp__output_putch-fpbase)))&0ffh
	movwf	(_putchar_ptr)
	line	151
	
l4241:	
;measure.c: 151: if(F3 > F1)
	movf	(_F1+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(_F1+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(_F1+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(_F1)^080h,w
	movwf	(___flge@ff1)

	movf	(_F3+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(_F3+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(_F3+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(_F3)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4011
	goto	u4010
u4011:
	goto	l4245
u4010:
	line	152
	
l4243:	
;measure.c: 152: F3 = F1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_F1+3)^080h,w
	movwf	(_F3+3)^080h
	movf	(_F1+2)^080h,w
	movwf	(_F3+2)^080h
	movf	(_F1+1)^080h,w
	movwf	(_F3+1)^080h
	movf	(_F1)^080h,w
	movwf	(_F3)^080h

	line	154
	
l4245:	
;measure.c: 154: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1048+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1048+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1048+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1048)^080h

	
l4247:	
;measure.c: 154: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1048+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1048+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1048+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1048)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1049+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1049+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1049+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1049)^080h

	
l4249:	
;measure.c: 154: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	movf	(_F2+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_F2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1049+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1049+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1049+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1049)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1050+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1050+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1050+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_measure_capacitance$1050)^080h

	
l4251:	
;measure.c: 154: Cin = F2 * F2 * (F1 * F1 - F3 * F3) * CCal;
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_CCal)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1050+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1050+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1050+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_measure_capacitance$1050)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	164
	
l4253:	
;measure.c: 164: if(Cin > 999) {
	movlw	0x44
	movwf	(___flge@ff1+3)
	movlw	0x79
	movwf	(___flge@ff1+2)
	movlw	0xc0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movf	(measure_capacitance@Cin+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(measure_capacitance@Cin+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(measure_capacitance@Cin+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(measure_capacitance@Cin)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4021
	goto	u4020
u4021:
	goto	l4271
u4020:
	line	165
	
l4255:	
;measure.c: 165: if(Cin > (999e+03l)) {
	movlw	0x49
	movwf	(___flge@ff1+3)
	movlw	0x73
	movwf	(___flge@ff1+2)
	movlw	0xe5
	movwf	(___flge@ff1+1)
	movlw	0x80
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(measure_capacitance@Cin+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(measure_capacitance@Cin+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(measure_capacitance@Cin)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4031
	goto	u4030
u4031:
	goto	l4267
u4030:
	line	166
	
l4257:	
;measure.c: 166: if(Cin > (999e+06l)) {
	movlw	0x4e
	movwf	(___flge@ff1+3)
	movlw	0x6e
	movwf	(___flge@ff1+2)
	movlw	0x2e
	movwf	(___flge@ff1+1)
	movlw	0x1f
	movwf	(___flge@ff1)

	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(measure_capacitance@Cin+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(measure_capacitance@Cin+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(measure_capacitance@Cin)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u4041
	goto	u4040
u4041:
	goto	l4263
u4040:
	line	167
	
l4259:	
;measure.c: 167: Cin = Cin / (1e+09);
	movlw	0x4e
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+3)
	movlw	0x6e
	movwf	(___fldiv@f2+2)
	movlw	0x6b
	movwf	(___fldiv@f2+1)
	movlw	0x28
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	168
	
l4261:	
;measure.c: 168: unit = 4;
	movlw	low(04h)
	movwf	(measure_capacitance@unit)^080h
	line	169
;measure.c: 169: } else {
	goto	l4273
	line	170
	
l4263:	
;measure.c: 170: Cin = Cin / (1e+06);
	movlw	0x49
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+3)
	movlw	0x74
	movwf	(___fldiv@f2+2)
	movlw	0x24
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	171
	
l4265:	
;measure.c: 171: unit = 5;
	movlw	low(05h)
	movwf	(measure_capacitance@unit)^080h
	goto	l4273
	line	174
	
l4267:	
;measure.c: 174: Cin = Cin / 1e+03;
	movlw	0x44
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+3)
	movlw	0x7a
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	175
	
l4269:	
;measure.c: 175: unit = 6;
	movlw	low(06h)
	movwf	(measure_capacitance@unit)^080h
	goto	l4273
	line	178
	
l4271:	
;measure.c: 178: unit = 7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(measure_capacitance@unit)^080h
	line	180
	
l4273:	
;measure.c: 180: Cin = Cin * 100;
	movlw	0x42
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0xc8
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@Cin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(measure_capacitance@Cin)^080h

	line	181
	
l4275:	
;measure.c: 181: var = (unsigned short int)Cin;
	movf	(measure_capacitance@Cin+3)^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(measure_capacitance@Cin+2)^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(measure_capacitance@Cin+1)^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(measure_capacitance@Cin)^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	movwf	(measure_capacitance@var+1)^080h
	movf	0+(((0+(?___fltol))^080h)),w
	movwf	(measure_capacitance@var)^080h
	line	183
	
l4277:	
;measure.c: 183: print_reading(var);
	movf	(measure_capacitance@var+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(print_reading@measurement+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@var)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(print_reading@measurement)
	fcall	_print_reading
	line	184
	
l4279:	
;measure.c: 184: print_unit(unit);
	bsf	status, 5	;RP0=1, select bank1
	movf	(measure_capacitance@unit)^080h,w
	fcall	_print_unit
	line	185
	
l481:	
	return
	opt stack 0
GLOBAL	__end_of_measure_capacitance
	__end_of_measure_capacitance:
	signat	_measure_capacitance,88
	global	_print_unit

;; *************** function _print_unit *****************
;; Defined at:
;;		line 411 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  unit            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  unit            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_gotoxy
;;		_uart_puts
;; This function is called by:
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"../../../src/print.c"
	line	411
global __ptext7
__ptext7:	;psect for function _print_unit
psect	text7
	file	"../../../src/print.c"
	line	411
	global	__size_of_print_unit
	__size_of_print_unit	equ	__end_of_print_unit-_print_unit
	
_print_unit:	
;incstack = 0
	opt	stack 1
; Regs used in _print_unit: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	420
	
l3969:	
;print.c: 419: static const char* units[8] = {"H", "mH", "uH", "nH", "mF", "uF", "nF", "pF"};
;print.c: 420: lcd_gotoxy(14, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(0Eh)
	fcall	_lcd_gotoxy
	line	424
;print.c: 424: lcd_gotoxy(16 - (buffer.n - buffer.p), 0);
	clrf	(lcd_gotoxy@row)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	swapf	0+(_buffer)^0180h+010h,w
	andlw	(1<<4)-1
	movwf	(??_print_unit+0)+0
	movf	0+(_buffer)^0180h+010h,w
	andlw	(1<<4)-1
	movwf	(??_print_unit+1)+0
	movf	(??_print_unit+0)+0,w
	subwf	(??_print_unit+1)+0,w
	addlw	010h
	fcall	_lcd_gotoxy
	line	427
;print.c: 427: uart_puts("\r\n");
	movlw	(low((((STR_9)-__stringbase)|8000h)))&0ffh
	fcall	_uart_puts
	line	429
	
l26:	
	return
	opt stack 0
GLOBAL	__end_of_print_unit
	__end_of_print_unit:
	signat	_print_unit,4216
	global	_print_reading

;; *************** function _print_reading *****************
;; Defined at:
;;		line 432 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  measurement     2   41[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
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
psect	text8,local,class=CODE,delta=2,merge=1
	line	432
global __ptext8
__ptext8:	;psect for function _print_reading
psect	text8
	file	"../../../src/print.c"
	line	432
	global	__size_of_print_reading
	__size_of_print_reading	equ	__end_of_print_reading-_print_reading
	
_print_reading:	
;incstack = 0
	opt	stack 0
; Regs used in _print_reading: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	459
	
l3971:	
;print.c: 459: lcd_gotoxy(9, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(09h)
	fcall	_lcd_gotoxy
	line	460
;print.c: 460: lcd_puts("     ");
	movlw	(low((((STR_10)-__stringbase)|8000h)))&0ffh
	fcall	_lcd_puts
	line	461
;print.c: 461: lcd_gotoxy(9, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(09h)
	fcall	_lcd_gotoxy
	line	463
	
l3973:	
;print.c: 463: format_number( measurement / 100, 10, 0);
	movlw	064h
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(print_reading@measurement+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(print_reading@measurement),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(_print_reading$1042+1)
	movf	(0+(?___lwdiv)),w
	movwf	(_print_reading$1042)
	
l3975:	
;print.c: 463: format_number( measurement / 100, 10, 0);
	movf	(_print_reading$1042+1),w
	movwf	(format_number@n+1)
	movf	(_print_reading$1042),w
	movwf	(format_number@n)
	movlw	low(0Ah)
	movwf	(format_number@base)
	clrf	(format_number@pad)
	fcall	_format_number
	line	465
;print.c: 465: format_number( measurement % 100, 10, 0);
	movlw	064h
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(print_reading@measurement+1),w
	movwf	(___lwmod@dividend+1)
	movf	(print_reading@measurement),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	(_print_reading$1043+1)
	movf	(0+(?___lwmod)),w
	movwf	(_print_reading$1043)
	
l3977:	
;print.c: 465: format_number( measurement % 100, 10, 0);
	movf	(_print_reading$1043+1),w
	movwf	(format_number@n+1)
	movf	(_print_reading$1043),w
	movwf	(format_number@n)
	movlw	low(0Ah)
	movwf	(format_number@base)
	clrf	(format_number@pad)
	fcall	_format_number
	line	468
	
l29:	
	return
	opt stack 0
GLOBAL	__end_of_print_reading
	__end_of_print_reading:
	signat	_print_reading,4216
	global	_lcd_init

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 503 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  fourbitmode     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  fourbitmode     1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"../../../lib/lcd44780.c"
	line	503
global __ptext9
__ptext9:	;psect for function _lcd_init
psect	text9
	file	"../../../lib/lcd44780.c"
	line	503
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
;incstack = 0
	opt	stack 6
; Regs used in _lcd_init: [wreg+status,2+status,0]
;lcd_init@fourbitmode stored from wreg
	movwf	(lcd_init@fourbitmode)
	line	505
	
l3135:	
;lcd44780.c: 505: LCD_ctrl = 0;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_LCD_ctrl)^0180h
	line	506
	
l3137:	
;lcd44780.c: 506: LCD_function = (fourbitmode ? 0x00 : 0x10);
	movf	((lcd_init@fourbitmode)),w
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l3141
u2780:
	
l3139:	
	movlw	010h
	movwf	(_lcd_init$338)
	clrf	(_lcd_init$338+1)
	goto	l3143
	
l3141:	
	clrf	(_lcd_init$338)
	clrf	(_lcd_init$338+1)
	
l3143:	
	movf	(_lcd_init$338),w
	movwf	(_LCD_function)
	line	508
	
l3145:	
;lcd44780.c: 508: LCD_lines = 0;
	clrf	(_LCD_lines)^0180h
	line	510
	
l3147:	
;lcd44780.c: 510: LCD_mode = 0;
	clrf	(_LCD_mode)^0180h
	line	512
	
l3149:	
;lcd44780.c: 512: TRISB2 = 0;
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1074/8)^080h,(1074)&7	;volatile
	line	513
	
l3151:	
;lcd44780.c: 513: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	518
	
l3153:	
;lcd44780.c: 518: TRISB3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	519
	
l3155:	
;lcd44780.c: 519: RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	line	521
	
l3157:	
;lcd44780.c: 521: TRISB4 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	522
	
l3159:	
;lcd44780.c: 522: TRISB5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	523
	
l3161:	
;lcd44780.c: 523: TRISB6 = 0;
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	524
	
l3163:	
;lcd44780.c: 524: TRISB7 = 0;
	bcf	(1079/8)^080h,(1079)&7	;volatile
	line	534
	
l390:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
	signat	_lcd_init,4216
	global	_lcd_begin

;; *************** function _lcd_begin *****************
;; Defined at:
;;		line 430 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  lines           1    wreg     unsigned char 
;;  dotsize         1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  lines           1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;;		_lcd_write4bits
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	430
global __ptext10
__ptext10:	;psect for function _lcd_begin
psect	text10
	file	"../../../lib/lcd44780.c"
	line	430
	global	__size_of_lcd_begin
	__size_of_lcd_begin	equ	__end_of_lcd_begin-_lcd_begin
	
_lcd_begin:	
;incstack = 0
	opt	stack 3
; Regs used in _lcd_begin: [wreg+status,2+status,0+pclath+cstack]
;lcd_begin@lines stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	movwf	(lcd_begin@lines)
	line	431
	
l4141:	
;lcd44780.c: 431: if(lines > 1)
	movlw	low(02h)
	subwf	(lcd_begin@lines),w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l4145
u3960:
	line	432
	
l4143:	
;lcd44780.c: 432: LCD_function |= 0x08;
	bsf	(_LCD_function)+(3/8),(3)&7
	line	435
	
l4145:	
;lcd44780.c: 435: LCD_lines = lines;
	movf	(lcd_begin@lines),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_LCD_lines)^0180h
	line	439
	
l4147:	
;lcd44780.c: 439: if((dotsize != 0) && (lines == 1))
	movf	((lcd_begin@dotsize)),w
	btfsc	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l4153
u3970:
	
l4149:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
		decf	((lcd_begin@lines)),w
	btfss	status,2
	goto	u3981
	goto	u3980
u3981:
	goto	l4153
u3980:
	line	440
	
l4151:	
;lcd44780.c: 440: LCD_function |= 0x04;
	bsf	(_LCD_function)+(2/8),(2)&7
	line	442
	
l4153:	
;lcd44780.c: 442: _delay((unsigned long)((15)*(20000000/4000.0)));
	opt asmopt_off
movlw	98
movwf	((??_lcd_begin+0)+0+1),f
	movlw	101
movwf	((??_lcd_begin+0)+0),f
u4107:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4107
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4107
	nop2
opt asmopt_on

	line	445
	
l4155:	
;lcd44780.c: 445: RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
	line	446
	
l4157:	
;lcd44780.c: 446: RB3 = 0;
	bcf	(51/8),(51)&7	;volatile
	line	449
	
l4159:	
;lcd44780.c: 449: if(!(LCD_function & 0x10)) {
	btfsc	(_LCD_function),(4)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l4171
u3990:
	line	453
	
l4161:	
;lcd44780.c: 453: lcd_write4bits(0x03);
	movlw	low(03h)
	fcall	_lcd_write4bits
	line	454
	
l4163:	
;lcd44780.c: 454: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u4117:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4117
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4117
	nop
opt asmopt_on

	line	456
	
l4165:	
;lcd44780.c: 456: lcd_write4bits(0x03);
	movlw	low(03h)
	fcall	_lcd_write4bits
	line	457
;lcd44780.c: 457: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_off
movlw	249
movwf	(??_lcd_begin+0)+0,f
u4127:
decfsz	(??_lcd_begin+0)+0,f
	goto	u4127
	nop2	;nop
opt asmopt_on

	line	459
	
l4167:	
;lcd44780.c: 459: lcd_write4bits(0x03);
	movlw	low(03h)
	fcall	_lcd_write4bits
	line	460
	
l4169:	
;lcd44780.c: 460: _delay((unsigned long)((150)*(20000000/4000000.0)));
	opt asmopt_off
movlw	249
movwf	(??_lcd_begin+0)+0,f
u4137:
decfsz	(??_lcd_begin+0)+0,f
	goto	u4137
	nop2	;nop
opt asmopt_on

	line	462
;lcd44780.c: 462: lcd_write4bits(0x02);
	movlw	low(02h)
	fcall	_lcd_write4bits
	line	463
;lcd44780.c: 463: }
	goto	l4179
	line	469
	
l4171:	
;lcd44780.c: 465: else {
;lcd44780.c: 469: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	470
	
l4173:	
;lcd44780.c: 470: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u4147:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4147
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4147
	nop
opt asmopt_on

	line	473
	
l4175:	
;lcd44780.c: 473: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	474
;lcd44780.c: 474: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_begin+0)+0+1),f
	movlw	118
movwf	((??_lcd_begin+0)+0),f
u4157:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4157
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4157
	nop
opt asmopt_on

	line	478
	
l4177:	
;lcd44780.c: 478: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	482
	
l4179:	
;lcd44780.c: 479: }
;lcd44780.c: 482: lcd_command(0x20 | LCD_function);
	movf	(_LCD_function),w
	iorlw	020h
	fcall	_lcd_command
	line	485
;lcd44780.c: 485: LCD_ctrl = 0x04 | 0x00 | 0x00;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_LCD_ctrl)^0180h
	line	486
	
l4181:	
;lcd44780.c: 486: lcd_command(0x08 | LCD_ctrl);
	movf	(_LCD_ctrl)^0180h,w
	iorlw	08h
	fcall	_lcd_command
	line	489
	
l4183:	
;lcd44780.c: 489: lcd_command(0x01);
	movlw	low(01h)
	fcall	_lcd_command
	line	490
;lcd44780.c: 490: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_lcd_begin+0)+0+1),f
	movlw	251
movwf	((??_lcd_begin+0)+0),f
u4167:
	decfsz	((??_lcd_begin+0)+0),f
	goto	u4167
	decfsz	((??_lcd_begin+0)+0+1),f
	goto	u4167
	nop2
opt asmopt_on

	line	493
;lcd44780.c: 493: LCD_mode = 0x02 | 0x00;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_LCD_mode)^0180h
	line	495
	
l4185:	
;lcd44780.c: 495: lcd_command(0x04 | LCD_mode);
	movf	(_LCD_mode)^0180h,w
	iorlw	04h
	fcall	_lcd_command
	line	496
	
l383:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_begin
	__end_of_lcd_begin:
	signat	_lcd_begin,8312
	global	_indicator

;; *************** function _indicator *****************
;; Defined at:
;;		line 472 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  indicate        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  indicate        1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
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
psect	text11,local,class=CODE,delta=2,merge=1
	file	"../../../src/print.c"
	line	472
global __ptext11
__ptext11:	;psect for function _indicator
psect	text11
	file	"../../../src/print.c"
	line	472
	global	__size_of_indicator
	__size_of_indicator	equ	__end_of_indicator-_indicator
	
_indicator:	
;incstack = 0
	opt	stack 2
; Regs used in _indicator: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;indicator@indicate stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(indicator@indicate)
	line	486
	
l4071:	
;print.c: 486: lcd_gotoxy(0, 1);
	clrf	(lcd_gotoxy@row)
	incf	(lcd_gotoxy@row),f
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	487
	
l4073:	
;print.c: 487: if(indicate) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((indicator@indicate)),w
	btfsc	status,2
	goto	u3881
	goto	u3880
u3881:
	goto	l4077
u3880:
	line	488
	
l4075:	
;print.c: 488: lcd_puts("-*-");
	movlw	(low((((STR_11)-__stringbase)|8000h)))&0ffh
	fcall	_lcd_puts
	line	489
;print.c: 489: } else {
	goto	l34
	line	490
	
l4077:	
;print.c: 490: lcd_puts("   ");
	movlw	(low((((STR_12)-__stringbase)|8000h)))&0ffh
	fcall	_lcd_puts
	line	493
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_indicator
	__end_of_indicator:
	signat	_indicator,4216
	global	_lcd_puts

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 182 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_18(5), STR_17(6), STR_16(7), STR_15(7), 
;;		 -> STR_13(10), STR_12(4), STR_11(4), STR_10(6), 
;; Auto vars:     Size  Location     Type
;;  string          1    9[COMMON] PTR const unsigned char 
;;		 -> STR_18(5), STR_17(6), STR_16(7), STR_15(7), 
;;		 -> STR_13(10), STR_12(4), STR_11(4), STR_10(6), 
;;  i               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_print_reading
;;		_indicator
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"../../../lib/lcd44780.c"
	line	182
global __ptext12
__ptext12:	;psect for function _lcd_puts
psect	text12
	file	"../../../lib/lcd44780.c"
	line	182
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
;incstack = 0
	opt	stack 1
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@string stored from wreg
	movwf	(lcd_puts@string)
	line	184
	
l3811:	
;lcd44780.c: 183: unsigned char i;
;lcd44780.c: 184: for(i = 0; string[i]; i++) lcd_putch(string[i]);
	clrf	(lcd_puts@i)
	goto	l3817
	
l3813:	
	movf	(lcd_puts@i),w
	addwf	(lcd_puts@string),w
	movwf	fsr0
	fcall	stringdir
	movwf	(lcd_putch@value)
	fcall	_lcd_putch
	
l3815:	
	incf	(lcd_puts@i),f
	
l3817:	
	movf	(lcd_puts@i),w
	addwf	(lcd_puts@string),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l3813
u3640:
	line	185
	
l337:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
	signat	_lcd_puts,4216
	global	_format_double

;; *************** function _format_double *****************
;; Defined at:
;;		line 74 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  num             4    0[BANK3 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  weight          4   12[BANK3 ] unsigned char 
;;  m               2   18[BANK3 ] short 
;;  digit           2   16[BANK3 ] short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/300
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       4       0
;;      Locals:         0       0       0      16       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0      20       0
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
;;		_floor
;;		_format_putchar
;;		_lcd_putch
;;		_log10
;;		_output_putch
;;		_pow
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"../../../lib/format.c"
	line	74
global __ptext13
__ptext13:	;psect for function _format_double
psect	text13
	file	"../../../lib/format.c"
	line	74
	global	__size_of_format_double
	__size_of_format_double	equ	__end_of_format_double-_format_double
	
_format_double:	
;incstack = 0
	opt	stack 1
; Regs used in _format_double: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	75
	
l4125:	
;format.c: 75: short m = (short)log10(num);
	movf	(format_double@num+3)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log10@x+3)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+2)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log10@x+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+1)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log10@x+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(log10@x)^080h

	fcall	_log10
	movf	(3+(?_log10))^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(2+(?_log10))^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(1+(?_log10))^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(0+(?_log10))^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@m+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fltol))^080h)),w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@m)^0180h
	line	79
;format.c: 76: short digit;
;format.c: 79: while(num > 0 + (sizeof(double) == sizeof(float) ? 3.05176e-05 : 1.19209290e-07)) {
	goto	l4139
	line	80
	
l4127:	
;format.c: 80: double weight = pow(10.0l, m);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@m+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtofl@c+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@m)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1046+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___awtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1046+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1046+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtofl)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1046)^0180h

	
l4129:	
;format.c: 80: double weight = pow(10.0l, m);
	movlw	0x41
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@x+3)^080h
	movlw	0x20
	movwf	(pow@x+2)^080h
	movlw	0x0
	movwf	(pow@x+1)^080h
	movlw	0x0
	movwf	(pow@x)^080h

	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1046+3)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y+3)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1046+2)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1046+1)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1046)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(pow@y)^080h

	fcall	_pow
	movf	(3+(?_pow))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@weight+3)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_pow))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@weight+2)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_pow))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@weight+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_pow))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@weight)^0180h

	line	81
	
l4131:	
;format.c: 81: digit = (short)floor(num / weight);
	movf	(format_double@num+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f1)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(floor@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(floor@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(floor@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(floor@x)^080h

	fcall	_floor
	movf	(3+(?_floor))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1047+3)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?_floor))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1047+2)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?_floor))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1047+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?_floor))^080h,w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_format_double$1047)^0180h

;format.c: 81: digit = (short)floor(num / weight);
	movf	(_format_double$1047+3)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1+3)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1047+2)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1+2)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1047+1)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1+1)^080h
	bsf	status, 6	;RP1=1, select bank3
	movf	(_format_double$1047)^0180h,w
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@digit+1)^0180h
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___fltol))^080h)),w
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@digit)^0180h
	line	82
;format.c: 82: num -= (digit * weight);
	movf	(format_double@digit+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtofl@c+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@digit)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___awtofl)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___awtofl)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___awtofl)),w
	movwf	(___flmul@f2)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@weight)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flmul@f1)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flsub@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___flsub@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___flsub@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(format_double@num)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@num+3)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@num+2)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@num+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(format_double@num)^0180h

	line	83
;format.c: 83: putchar_ptr((char)('0' + digit));
	movf	(format_double@digit)^0180h,w
	addlw	030h
	movwf	(format_putchar@c)
	movf	(_putchar_ptr),w
	fcall	fptable
	line	84
	
l4133:	
;format.c: 84: if(m == 0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	((format_double@m)^0180h),w
iorwf	((format_double@m+1)^0180h),w
	btfss	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l4137
u3940:
	line	85
	
l4135:	
;format.c: 85: putchar_ptr('.');
	movlw	low(02Eh)
	movwf	(format_putchar@c)
	movf	(_putchar_ptr),w
	fcall	fptable
	line	86
	
l4137:	
;format.c: 86: m--;
	movlw	-1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(format_double@m)^0180h,f
	skipc
	decf	(format_double@m+1)^0180h,f
	line	79
	
l4139:	
	movlw	0x38
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x6
	movwf	(___flge@ff1)

	movf	(format_double@num+3)^0180h,w
	movwf	(___flge@ff2+3)
	movf	(format_double@num+2)^0180h,w
	movwf	(___flge@ff2+2)
	movf	(format_double@num+1)^0180h,w
	movwf	(___flge@ff2+1)
	movf	(format_double@num)^0180h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u3951
	goto	u3950
u3951:
	goto	l4127
u3950:
	line	88
	
l166:	
	return
	opt stack 0
GLOBAL	__end_of_format_double
	__end_of_format_double:
	signat	_format_double,4216
	global	_pow

;; *************** function _pow *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
;; Parameters:    Size  Location     Type
;;  x               4   47[BANK1 ] short 
;;  y               4   51[BANK1 ] short 
;; Auto vars:     Size  Location     Type
;;  yi              4   64[BANK1 ] unsigned long 
;;  sign            1   63[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   47[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       8       0       0
;;      Locals:         0       0      13       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      21       0       0
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
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
	line	5
global __ptext14
__ptext14:	;psect for function _pow
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\pow.c"
	line	5
	global	__size_of_pow
	__size_of_pow	equ	__end_of_pow-_pow
	
_pow:	
;incstack = 0
	opt	stack 1
; Regs used in _pow: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	7
	
l3985:	
	clrf	(pow@sign)^080h
	line	10
	
l3987:	
	movf	(pow@x+3)^080h,w
	iorwf	(pow@x+2)^080h,w
	iorwf	(pow@x+1)^080h,w
	iorwf	(pow@x)^080h,w
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l3991
u3830:
	line	11
	
l3989:	
	clrf	(___flge@ff1)
	clrf	(___flge@ff1+1)
	clrf	(___flge@ff1+2)
	clrf	(___flge@ff1+3)
	movf	(pow@y+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(pow@y+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(pow@y+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(pow@y)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	line	13
	
l1077:	
	line	14
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_pow)^080h
	clrf	(?_pow+1)^080h
	clrf	(?_pow+2)^080h
	clrf	(?_pow+3)^080h
	goto	l1078
	line	16
	
l3991:	
	movf	(pow@y+3)^080h,w
	iorwf	(pow@y+2)^080h,w
	iorwf	(pow@y+1)^080h,w
	iorwf	(pow@y)^080h,w
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l3997
u3840:
	line	17
	
l3993:	
	movlw	0x3f
	movwf	(?_pow+3)^080h
	movlw	0x80
	movwf	(?_pow+2)^080h
	movlw	0x0
	movwf	(?_pow+1)^080h
	movlw	0x0
	movwf	(?_pow)^080h

	goto	l1078
	line	18
	
l3997:	
	movf	(pow@x+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(pow@x+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(pow@x+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(pow@x)^080h,w
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfsc	status,0
	goto	u3851
	goto	u3850
u3851:
	goto	l4009
u3850:
	line	19
	
l3999:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@y+3)^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(pow@y+2)^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(pow@y+1)^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(pow@y)^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	(3+(?___fltol))^080h,w
	movwf	(pow@yi+3)^080h
	movf	(2+(?___fltol))^080h,w
	movwf	(pow@yi+2)^080h
	movf	(1+(?___fltol))^080h,w
	movwf	(pow@yi+1)^080h
	movf	(0+(?___fltol))^080h,w
	movwf	(pow@yi)^080h

	line	20
	movf	(pow@yi+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltofl@c+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@yi+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltofl@c+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@yi+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltofl@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@yi)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___lltofl@c)

	fcall	___lltofl
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(3+(?___lltofl)),w
	skipz
	goto	u3865
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(2+(?___lltofl)),w
	skipz
	goto	u3865
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(1+(?___lltofl)),w
	skipz
	goto	u3865
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	xorwf	(0+(?___lltofl)),w
u3865:
	skipnz
	goto	u3861
	goto	u3860
u3861:
	goto	l4003
u3860:
	line	22
	
l4001:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(?_pow)^080h
	clrf	(?_pow+1)^080h
	clrf	(?_pow+2)^080h
	clrf	(?_pow+3)^080h
	goto	l1078
	line	24
	
l4003:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@yi)^080h,w
	movwf	(pow@sign)^080h
	
l4005:	
	movlw	low(01h)
	andwf	(pow@sign)^080h,f
	line	25
	
l4007:	
	movf	(pow@x+3)^080h,w
	movwf	(___flneg@f1+3)
	movf	(pow@x+2)^080h,w
	movwf	(___flneg@f1+2)
	movf	(pow@x+1)^080h,w
	movwf	(___flneg@f1+1)
	movf	(pow@x)^080h,w
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	movwf	(pow@x+3)^080h
	movf	(2+(?___flneg)),w
	movwf	(pow@x+2)^080h
	movf	(1+(?___flneg)),w
	movwf	(pow@x+1)^080h
	movf	(0+(?___flneg)),w
	movwf	(pow@x)^080h

	line	27
	
l4009:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(pow@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(log@x+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(log@x+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(log@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(log@x)

	fcall	_log
	movf	(3+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1059+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1059+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1059+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1059)^080h

	
l4011:	
	movf	(pow@y+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(pow@y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_pow$1059+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_pow$1059+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_pow$1059+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_pow$1059)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1060+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1060+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1060+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_pow$1060)^080h

	movf	(_pow$1060+3)^080h,w
	movwf	(exp@x+3)^080h
	movf	(_pow$1060+2)^080h,w
	movwf	(exp@x+2)^080h
	movf	(_pow$1060+1)^080h,w
	movwf	(exp@x+1)^080h
	movf	(_pow$1060)^080h,w
	movwf	(exp@x)^080h

	fcall	_exp
	movf	(3+(?_exp))^080h,w
	movwf	(pow@x+3)^080h
	movf	(2+(?_exp))^080h,w
	movwf	(pow@x+2)^080h
	movf	(1+(?_exp))^080h,w
	movwf	(pow@x+1)^080h
	movf	(0+(?_exp))^080h,w
	movwf	(pow@x)^080h

	line	28
	
l4013:	
	movf	((pow@sign)^080h),w
	btfsc	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l1082
u3870:
	line	29
	
l4015:	
	movf	(pow@x+3)^080h,w
	movwf	(___flneg@f1+3)
	movf	(pow@x+2)^080h,w
	movwf	(___flneg@f1+2)
	movf	(pow@x+1)^080h,w
	movwf	(___flneg@f1+1)
	movf	(pow@x)^080h,w
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	movwf	(?_pow+3)^080h
	movf	(2+(?___flneg)),w
	movwf	(?_pow+2)^080h
	movf	(1+(?___flneg)),w
	movwf	(?_pow+1)^080h
	movf	(0+(?___flneg)),w
	movwf	(?_pow)^080h

	goto	l1078
	
l1082:	
	line	30
	line	31
	
l1078:	
	return
	opt stack 0
GLOBAL	__end_of_pow
	__end_of_pow:
	signat	_pow,8316
	global	_exp

;; *************** function _exp *****************
;; Defined at:
;;		line 12 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
;; Parameters:    Size  Location     Type
;;  x               4   32[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exponent        2   44[BANK1 ] int 
;;  sign            1   46[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   32[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      15       0       0
;;Total ram usage:       15 bytes
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
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	12
global __ptext15
__ptext15:	;psect for function _exp
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\exp.c"
	line	12
	global	__size_of_exp
	__size_of_exp	equ	__end_of_exp-_exp
	
_exp:	
;incstack = 0
	opt	stack 1
; Regs used in _exp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l3919:	
	movf	(exp@x+3)^080h,w
	iorwf	(exp@x+2)^080h,w
	iorwf	(exp@x+1)^080h,w
	iorwf	(exp@x)^080h,w
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l3925
u3750:
	line	32
	
l3921:	
	movlw	0x3f
	movwf	(?_exp+3)^080h
	movlw	0x80
	movwf	(?_exp+2)^080h
	movlw	0x0
	movwf	(?_exp+1)^080h
	movlw	0x0
	movwf	(?_exp)^080h

	goto	l1104
	line	34
	
l3925:	
	movlw	0x44
	movwf	(___flge@ff1+3)
	movlw	0x31
	movwf	(___flge@ff1+2)
	movlw	0x72
	movwf	(___flge@ff1+1)
	movlw	0x18
	movwf	(___flge@ff1)

	movf	(exp@x+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(exp@x+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(exp@x+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(exp@x)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3761
	goto	u3760
u3761:
	goto	l3935
u3760:
	line	36
	
l3931:	
	movlw	0x7f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_exp+3)^080h
	movlw	0x7f
	movwf	(?_exp+2)^080h
	movlw	0xfe
	movwf	(?_exp+1)^080h
	movlw	0xf7
	movwf	(?_exp)^080h

	goto	l1104
	line	38
	
l3935:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(exp@x+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(exp@x+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(exp@x)^080h,w
	movwf	(___flge@ff1)

	movlw	0xc4
	movwf	(___flge@ff2+3)
	movlw	0x3a
	movwf	(___flge@ff2+2)
	movlw	0x48
	movwf	(___flge@ff2+1)
	movlw	0x87
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3771
	goto	u3770
u3771:
	goto	l3939
u3770:
	line	40
	
l3937:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_exp)^080h
	clrf	(?_exp+1)^080h
	clrf	(?_exp+2)^080h
	clrf	(?_exp+3)^080h
	goto	l1104
	line	43
	
l3939:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(exp@x+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(exp@x+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(exp@x+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(exp@x)^080h,w
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfss	status,0
	goto	u3781
	goto	u3780
u3781:
	movlw	1
	goto	u3790
u3780:
	movlw	0
u3790:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(exp@sign)^080h
	line	44
	
l3941:	
	movf	((exp@sign)^080h),w
	btfsc	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l3945
u3800:
	line	45
	
l3943:	
	movf	(exp@x+3)^080h,w
	movwf	(___flneg@f1+3)
	movf	(exp@x+2)^080h,w
	movwf	(___flneg@f1+2)
	movf	(exp@x+1)^080h,w
	movwf	(___flneg@f1+1)
	movf	(exp@x)^080h,w
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	movwf	(exp@x+3)^080h
	movf	(2+(?___flneg)),w
	movwf	(exp@x+2)^080h
	movf	(1+(?___flneg)),w
	movwf	(exp@x+1)^080h
	movf	(0+(?___flneg)),w
	movwf	(exp@x)^080h

	line	46
	
l3945:	
	movlw	0x3f
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0xb8
	movwf	(___flmul@f1+2)
	movlw	0xaa
	movwf	(___flmul@f1+1)
	movlw	0x3b
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x)^080h

	line	47
	
l3947:	
	movf	(exp@x+3)^080h,w
	movwf	(floor@x+3)^080h
	movf	(exp@x+2)^080h,w
	movwf	(floor@x+2)^080h
	movf	(exp@x+1)^080h,w
	movwf	(floor@x+1)^080h
	movf	(exp@x)^080h,w
	movwf	(floor@x)^080h

	fcall	_floor
	movf	(3+(?_floor))^080h,w
	movwf	(_exp$1061+3)^080h
	movf	(2+(?_floor))^080h,w
	movwf	(_exp$1061+2)^080h
	movf	(1+(?_floor))^080h,w
	movwf	(_exp$1061+1)^080h
	movf	(0+(?_floor))^080h,w
	movwf	(_exp$1061)^080h

	
l3949:	
	movf	(_exp$1061+3)^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(_exp$1061+2)^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(_exp$1061+1)^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(_exp$1061)^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	1+(((0+(?___fltol))^080h)),w
	movwf	(exp@exponent+1)^080h
	movf	0+(((0+(?___fltol))^080h)),w
	movwf	(exp@exponent)^080h
	line	48
	
l3951:	
	movf	(exp@exponent+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtofl@c+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@exponent)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movwf	(___flsub@f2+3)
	movf	(2+(?___awtofl)),w
	movwf	(___flsub@f2+2)
	movf	(1+(?___awtofl)),w
	movwf	(___flsub@f2+1)
	movf	(0+(?___awtofl)),w
	movwf	(___flsub@f2)

	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flsub@f1)

	fcall	___flsub
	movf	(3+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x)^080h

	line	49
	
l3953:	
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(eval_poly@x)

	movlw	(low((((exp@coeff)-__stringbase)|8000h)))&0ffh
	movwf	(eval_poly@d)
	movlw	09h
	movwf	(eval_poly@n)
	clrf	(eval_poly@n+1)
	fcall	_eval_poly
	movf	(3+(?_eval_poly)),w
	movwf	(ldexp@value+3)
	movf	(2+(?_eval_poly)),w
	movwf	(ldexp@value+2)
	movf	(1+(?_eval_poly)),w
	movwf	(ldexp@value+1)
	movf	(0+(?_eval_poly)),w
	movwf	(ldexp@value)

	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@exponent+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ldexp@newexp+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@exponent)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(ldexp@newexp)
	fcall	_ldexp
	movf	(3+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_ldexp)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(exp@x)^080h

	line	50
	
l3955:	
	movf	((exp@sign)^080h),w
	btfsc	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l1112
u3810:
	line	52
	
l3961:	
	movlw	0x7f
	movwf	(_exp$786+3)^080h
	movlw	0x7f
	movwf	(_exp$786+2)^080h
	movlw	0xfe
	movwf	(_exp$786+1)^080h
	movlw	0xf7
	movwf	(_exp$786)^080h

	
l1117:	
	movf	(exp@x+3)^080h,w
	xorwf	(_exp$786+3)^080h,w
	skipz
	goto	u3825
	movf	(exp@x+2)^080h,w
	xorwf	(_exp$786+2)^080h,w
	skipz
	goto	u3825
	movf	(exp@x+1)^080h,w
	xorwf	(_exp$786+1)^080h,w
	skipz
	goto	u3825
	movf	(exp@x)^080h,w
	xorwf	(_exp$786)^080h,w
u3825:
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l3965
u3820:
	line	53
	
l3963:	
	clrf	(?_exp)^080h
	clrf	(?_exp+1)^080h
	clrf	(?_exp+2)^080h
	clrf	(?_exp+3)^080h
	goto	l1104
	line	54
	
l3965:	
	movf	(exp@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(exp@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fldiv@f2)

	movlw	0x3f
	movwf	(___fldiv@f1+3)
	movlw	0x80
	movwf	(___fldiv@f1+2)
	movlw	0x0
	movwf	(___fldiv@f1+1)
	movlw	0x0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_exp+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_exp+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_exp)^080h

	goto	l1104
	line	55
	
l1112:	
	line	56
	line	57
	
l1104:	
	return
	opt stack 0
GLOBAL	__end_of_exp
	__end_of_exp:
	signat	_exp,4220
	global	_ldexp

;; *************** function _ldexp *****************
;; Defined at:
;;		line 277 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4   73[BANK0 ] unsigned char 
;;  newexp          2   77[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   73[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       6       6       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flge
;;		___flneg
;; This function is called by:
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	277
global __ptext16
__ptext16:	;psect for function _ldexp
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	277
	global	__size_of_ldexp
	__size_of_ldexp	equ	__end_of_ldexp-_ldexp
	
_ldexp:	
;incstack = 0
	opt	stack 2
; Regs used in _ldexp: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	279
	
l3753:	
	movf	(ldexp@value+3),w
	iorwf	(ldexp@value+2),w
	iorwf	(ldexp@value+1),w
	iorwf	(ldexp@value),w
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l3757
u3560:
	line	280
	
l3755:	
	clrf	(?_ldexp)
	clrf	(?_ldexp+1)
	clrf	(?_ldexp+2)
	clrf	(?_ldexp+3)
	goto	l935
	line	282
	
l3757:	
	movf	0+(ldexp@value)+03h,w
	andlw	(1<<7)-1
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_ldexp+0)^080h+0
	clrf	(??_ldexp+0)^080h+0+1
	clrc
	rlf	(??_ldexp+0)^080h+0,f
	rlf	(??_ldexp+0)^080h+1,f
	movf	0+(??_ldexp+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	bsf	status, 5	;RP0=1, select bank1
	movf	1+(??_ldexp+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	(ldexp@newexp+1),f
	line	283
	rlf	0+(ldexp@value)+02h,w
	rlf	0+(ldexp@value)+02h,w
	andlw	1
	addwf	(ldexp@newexp),f
	skipnc
	incf	(ldexp@newexp+1),f
	line	287
	
l3759:	
	btfss	(ldexp@newexp+1),7
	goto	u3571
	goto	u3570
u3571:
	goto	l3765
u3570:
	line	289
	
l3761:	
	clrf	(?_ldexp)
	clrf	(?_ldexp+1)
	clrf	(?_ldexp+2)
	clrf	(?_ldexp+3)
	goto	l935
	line	291
	
l3765:	
	movf	(ldexp@newexp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(01h)^80h
	subwf	btemp+1,w
	skipz
	goto	u3585
	movlw	0
	subwf	(ldexp@newexp),w
u3585:

	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l3787
u3580:
	line	293
	
l3767:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@value+3),w
	movwf	(___flge@ff1+3)
	movf	(ldexp@value+2),w
	movwf	(___flge@ff1+2)
	movf	(ldexp@value+1),w
	movwf	(___flge@ff1+1)
	movf	(ldexp@value),w
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfsc	status,0
	goto	u3591
	goto	u3590
u3591:
	goto	l3783
u3590:
	line	294
	
l3773:	
	movlw	0x7f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ldexp$686+3)^080h
	movlw	0x7f
	movwf	(_ldexp$686+2)^080h
	movlw	0xfe
	movwf	(_ldexp$686+1)^080h
	movlw	0xf7
	movwf	(_ldexp$686)^080h

	
l3775:	
	movf	(_ldexp$686+3)^080h,w
	movwf	(___flneg@f1+3)
	movf	(_ldexp$686+2)^080h,w
	movwf	(___flneg@f1+2)
	movf	(_ldexp$686+1)^080h,w
	movwf	(___flneg@f1+1)
	movf	(_ldexp$686)^080h,w
	movwf	(___flneg@f1)

	fcall	___flneg
	movf	(3+(?___flneg)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_ldexp+3)
	movf	(2+(?___flneg)),w
	movwf	(?_ldexp+2)
	movf	(1+(?___flneg)),w
	movwf	(?_ldexp+1)
	movf	(0+(?___flneg)),w
	movwf	(?_ldexp)

	goto	l935
	line	296
	
l3783:	
	movlw	0x7f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_ldexp+3)
	movlw	0x7f
	movwf	(?_ldexp+2)
	movlw	0xfe
	movwf	(?_ldexp+1)
	movlw	0xf7
	movwf	(?_ldexp)

	goto	l935
	line	300
	
l3787:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ldexp@newexp+1),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_ldexp+0)^080h+0+1
	bcf	status, 5	;RP0=0, select bank0
	movf	(ldexp@newexp),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_ldexp+0)^080h+0
	rlf	(??_ldexp+0)^080h+1,w
	rrf	(??_ldexp+0)^080h+1,f
	rrf	(??_ldexp+0)^080h+0,f
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(ldexp@value)+03h,w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	0+(??_ldexp+0)^080h+0,w
	andlw	not ((1<<7)-1)
	xorwf	0+(??_ldexp+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(ldexp@value)+03h
	line	301
	movf	(ldexp@newexp),w
	andlw	01h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(??_ldexp+0)^080h+0
	rrf	(??_ldexp+0)^080h+0,f
	rrf	(??_ldexp+0)^080h+0,f
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(ldexp@value)+02h,w
	bsf	status, 5	;RP0=1, select bank1
	xorwf	(??_ldexp+0)^080h+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_ldexp+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(ldexp@value)+02h
	line	306
	
l3789:	
	line	307
	
l935:	
	return
	opt stack 0
GLOBAL	__end_of_ldexp
	__end_of_ldexp:
	signat	_ldexp,8316
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ldexp
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
	line	15
global __ptext17
__ptext17:	;psect for function ___flneg
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flneg.c"
	line	15
	global	__size_of___flneg
	__size_of___flneg	equ	__end_of___flneg-___flneg
	
___flneg:	
;incstack = 0
	opt	stack 2
; Regs used in ___flneg: [wreg]
	line	17
	
l2513:	
	movf	(___flneg@f1+3),w
	iorwf	(___flneg@f1+2),w
	iorwf	(___flneg@f1+1),w
	iorwf	(___flneg@f1),w
	skipnz
	goto	u2021
	goto	u2020
u2021:
	goto	l2517
u2020:
	line	18
	
l2515:	
	movlw	080h
	xorwf	(___flneg@f1+3),f
	line	19
	
l2517:	
	line	20
	
l896:	
	return
	opt stack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               4   22[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  i               4   26[BANK1 ] int 
;;  expon           2   30[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  4   22[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0      10       0       0
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
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
	line	13
global __ptext18
__ptext18:	;psect for function _floor
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
;incstack = 0
	opt	stack 1
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l3669:	
	movf	(floor@x+3)^080h,w
	movwf	(frexp@value+3)
	movf	(floor@x+2)^080h,w
	movwf	(frexp@value+2)
	movf	(floor@x+1)^080h,w
	movwf	(frexp@value+1)
	movf	(floor@x)^080h,w
	movwf	(frexp@value)

	movlw	(low(floor@expon|((0x0)<<8)))&0ffh
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
l3671:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(floor@expon+1)^080h,7
	goto	u3461
	goto	u3460
u3461:
	goto	l3679
u3460:
	line	20
	
l3673:	
	movf	(floor@x+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(floor@x+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(floor@x+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(floor@x)^080h,w
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfsc	status,0
	goto	u3471
	goto	u3470
u3471:
	goto	l902
u3470:
	line	21
	
l3675:	
	movlw	0xbf
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?_floor+3)^080h
	movlw	0x80
	movwf	(?_floor+2)^080h
	movlw	0x0
	movwf	(?_floor+1)^080h
	movlw	0x0
	movwf	(?_floor)^080h

	goto	l903
	
l902:	
	line	22
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(?_floor)^080h
	clrf	(?_floor+1)^080h
	clrf	(?_floor+2)^080h
	clrf	(?_floor+3)^080h
	goto	l903
	line	24
	
l3679:	
	movlw	0
	subwf	(floor@expon+1)^080h,w
	movlw	01Dh
	skipnz
	subwf	(floor@expon)^080h,w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l3683
u3480:
	line	25
	
l3681:	
	goto	l903
	line	26
	
l3683:	
	movf	(floor@x+3)^080h,w
	movwf	(___fltol@f1+3)^080h
	movf	(floor@x+2)^080h,w
	movwf	(___fltol@f1+2)^080h
	movf	(floor@x+1)^080h,w
	movwf	(___fltol@f1+1)^080h
	movf	(floor@x)^080h,w
	movwf	(___fltol@f1)^080h

	fcall	___fltol
	movf	(3+(?___fltol))^080h,w
	movwf	(___altofl@c+3)^080h
	movf	(2+(?___fltol))^080h,w
	movwf	(___altofl@c+2)^080h
	movf	(1+(?___fltol))^080h,w
	movwf	(___altofl@c+1)^080h
	movf	(0+(?___fltol))^080h,w
	movwf	(___altofl@c)^080h

	fcall	___altofl
	movf	(3+(?___altofl))^080h,w
	movwf	(floor@i+3)^080h
	movf	(2+(?___altofl))^080h,w
	movwf	(floor@i+2)^080h
	movf	(1+(?___altofl))^080h,w
	movwf	(floor@i+1)^080h
	movf	(0+(?___altofl))^080h,w
	movwf	(floor@i)^080h

	line	27
	movf	(floor@x+3)^080h,w
	movwf	(___flge@ff1+3)
	movf	(floor@x+2)^080h,w
	movwf	(___flge@ff1+2)
	movf	(floor@x+1)^080h,w
	movwf	(___flge@ff1+1)
	movf	(floor@x)^080h,w
	movwf	(___flge@ff1)

	movf	(floor@i+3)^080h,w
	movwf	(___flge@ff2+3)
	movf	(floor@i+2)^080h,w
	movwf	(___flge@ff2+2)
	movf	(floor@i+1)^080h,w
	movwf	(___flge@ff2+1)
	movf	(floor@i)^080h,w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u3491
	goto	u3490
u3491:
	goto	l3689
u3490:
	line	28
	
l3685:	
	movlw	0xbf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fladd@f1+3)
	movlw	0x80
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(floor@i)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_floor+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_floor+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_floor+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fladd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_floor)^080h

	goto	l903
	line	29
	
l3689:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(floor@i+3)^080h,w
	movwf	(?_floor+3)^080h
	movf	(floor@i+2)^080h,w
	movwf	(?_floor+2)^080h
	movf	(floor@i+1)^080h,w
	movwf	(?_floor+1)^080h
	movf	(floor@i)^080h,w
	movwf	(?_floor)^080h

	line	30
	
l903:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4220
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4    8[BANK1 ] int 
;; Auto vars:     Size  Location     Type
;;  exp1            1   17[BANK1 ] unsigned char 
;;  sign1           1   16[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0      10       0       0
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
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
	line	43
global __ptext19
__ptext19:	;psect for function ___fltol
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fltol.c"
	line	43
	global	__size_of___fltol
	__size_of___fltol	equ	__end_of___fltol-___fltol
	
___fltol:	
;incstack = 0
	opt	stack 5
; Regs used in ___fltol: [wreg+status,2+status,0]
	line	47
	
l2541:	
	movf	(___fltol@f1)^080h,w
	movwf	(??___fltol+0)^080h+0
	movf	(___fltol@f1+1)^080h,w
	movwf	((??___fltol+0)^080h+0+1)
	movf	(___fltol@f1+2)^080h,w
	movwf	((??___fltol+0)^080h+0+2)
	movf	(___fltol@f1+3)^080h,w
	movwf	((??___fltol+0)^080h+0+3)
	clrc
	rlf	(??___fltol+0)^080h+2,w
	rlf	(??___fltol+0)^080h+3,w
	movwf	(___fltol@exp1)^080h
	movf	(((___fltol@exp1)^080h)),w
	btfss	status,2
	goto	u2041
	goto	u2040
u2041:
	goto	l2545
u2040:
	line	48
	
l2543:	
	clrf	(?___fltol)^080h
	clrf	(?___fltol+1)^080h
	clrf	(?___fltol+2)^080h
	clrf	(?___fltol+3)^080h
	goto	l915
	line	49
	
l2545:	
	movf	(___fltol@f1)^080h,w
	movwf	(??___fltol+0)^080h+0
	movf	(___fltol@f1+1)^080h,w
	movwf	((??___fltol+0)^080h+0+1)
	movf	(___fltol@f1+2)^080h,w
	movwf	((??___fltol+0)^080h+0+2)
	movf	(___fltol@f1+3)^080h,w
	movwf	((??___fltol+0)^080h+0+3)
	movlw	01Fh
u2055:
	clrc
	rrf	(??___fltol+0)^080h+3,f
	rrf	(??___fltol+0)^080h+2,f
	rrf	(??___fltol+0)^080h+1,f
	rrf	(??___fltol+0)^080h+0,f
u2050:
	addlw	-1
	skipz
	goto	u2055
	movf	0+(??___fltol+0)^080h+0,w
	movwf	(___fltol@sign1)^080h
	line	50
	
l2547:	
	bsf	(___fltol@f1)^080h+(23/8),(23)&7
	line	51
	
l2549:	
	movlw	0FFh
	andwf	(___fltol@f1)^080h,f
	movlw	0FFh
	andwf	(___fltol@f1+1)^080h,f
	movlw	0FFh
	andwf	(___fltol@f1+2)^080h,f
	movlw	0
	andwf	(___fltol@f1+3)^080h,f
	line	52
	
l2551:	
	movlw	096h
	subwf	(___fltol@exp1)^080h,f
	line	53
	
l2553:	
	btfss	(___fltol@exp1)^080h,7
	goto	u2061
	goto	u2060
u2061:
	goto	l2563
u2060:
	line	54
	
l2555:	
	movf	(___fltol@exp1)^080h,w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2071
	goto	u2070
u2071:
	goto	l2559
u2070:
	goto	l2543
	line	57
	
l2559:	
	clrc
	rrf	(___fltol@f1+3)^080h,f
	rrf	(___fltol@f1+2)^080h,f
	rrf	(___fltol@f1+1)^080h,f
	rrf	(___fltol@f1)^080h,f
	line	58
	
l2561:	
	incfsz	(___fltol@exp1)^080h,f
	goto	u2081
	goto	u2080
u2081:
	goto	l2559
u2080:
	goto	l2571
	line	60
	
l2563:	
	movlw	low(020h)
	subwf	(___fltol@exp1)^080h,w
	skipc
	goto	u2091
	goto	u2090
u2091:
	goto	l2569
u2090:
	goto	l2543
	line	63
	
l2567:	
	clrc
	rlf	(___fltol@f1)^080h,f
	rlf	(___fltol@f1+1)^080h,f
	rlf	(___fltol@f1+2)^080h,f
	rlf	(___fltol@f1+3)^080h,f
	line	64
	decf	(___fltol@exp1)^080h,f
	line	62
	
l2569:	
	movf	((___fltol@exp1)^080h),w
	btfss	status,2
	goto	u2101
	goto	u2100
u2101:
	goto	l2567
u2100:
	line	67
	
l2571:	
	movf	((___fltol@sign1)^080h),w
	btfsc	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l925
u2110:
	line	68
	
l2573:	
	comf	(___fltol@f1)^080h,f
	comf	(___fltol@f1+1)^080h,f
	comf	(___fltol@f1+2)^080h,f
	comf	(___fltol@f1+3)^080h,f
	incf	(___fltol@f1)^080h,f
	skipnz
	incf	(___fltol@f1+1)^080h,f
	skipnz
	incf	(___fltol@f1+2)^080h,f
	skipnz
	incf	(___fltol@f1+3)^080h,f
	
l925:	
	line	69
	line	70
	
l915:	
	return
	opt stack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___altofl

;; *************** function ___altofl *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
;; Parameters:    Size  Location     Type
;;  c               4   18[BANK1 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   79[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   18[BANK1 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       4       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
	line	36
global __ptext20
__ptext20:	;psect for function ___altofl
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\altofl.c"
	line	36
	global	__size_of___altofl
	__size_of___altofl	equ	__end_of___altofl-___altofl
	
___altofl:	
;incstack = 0
	opt	stack 1
; Regs used in ___altofl: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l3529:	
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___altofl@sign)
	line	41
	
l3531:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(___altofl@c+3)^080h,7
	goto	u3171
	goto	u3170
u3171:
	goto	l3535
u3170:
	line	42
	
l3533:	
	comf	(___altofl@c)^080h,f
	comf	(___altofl@c+1)^080h,f
	comf	(___altofl@c+2)^080h,f
	comf	(___altofl@c+3)^080h,f
	incf	(___altofl@c)^080h,f
	skipnz
	incf	(___altofl@c+1)^080h,f
	skipnz
	incf	(___altofl@c+2)^080h,f
	skipnz
	incf	(___altofl@c+3)^080h,f
	line	43
	bcf	status, 5	;RP0=0, select bank0
	clrf	(___altofl@sign)
	incf	(___altofl@sign),f
	line	45
	
l3535:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(___altofl@c+3)^080h,w
	movwf	(___flpack@arg+3)
	movf	(___altofl@c+2)^080h,w
	movwf	(___flpack@arg+2)
	movf	(___altofl@c+1)^080h,w
	movwf	(___flpack@arg+1)
	movf	(___altofl@c)^080h,w
	movwf	(___flpack@arg)

	movlw	low(096h)
	movwf	(___flpack@exp)
	bcf	status, 5	;RP0=0, select bank0
	movf	(___altofl@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?___altofl+3)^080h
	movf	(2+(?___flpack)),w
	movwf	(?___altofl+2)^080h
	movf	(1+(?___flpack)),w
	movwf	(?___altofl+1)^080h
	movf	(0+(?___flpack)),w
	movwf	(?___altofl)^080h

	line	46
	
l748:	
	return
	opt stack 0
GLOBAL	__end_of___altofl
	__end_of___altofl:
	signat	___altofl,4220
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 18 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
;; Parameters:    Size  Location     Type
;;  f2              4   57[BANK0 ] unsigned char 
;;  f1              4   61[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   57[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
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
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
	line	18
global __ptext21
__ptext21:	;psect for function ___flsub
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flsub.c"
	line	18
	global	__size_of___flsub
	__size_of___flsub	equ	__end_of___flsub-___flsub
	
___flsub:	
;incstack = 0
	opt	stack 3
; Regs used in ___flsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l3745:	
	movf	(___flsub@f2+3),w
	iorwf	(___flsub@f2+2),w
	iorwf	(___flsub@f2+1),w
	iorwf	(___flsub@f2),w
	skipnz
	goto	u3551
	goto	u3550
u3551:
	goto	l3749
u3550:
	line	24
	
l3747:	
	movlw	080h
	xorwf	(___flsub@f2+3),f
	line	28
	
l3749:	
	movf	(___flsub@f2+3),w
	movwf	(___fladd@f1+3)
	movf	(___flsub@f2+2),w
	movwf	(___fladd@f1+2)
	movf	(___flsub@f2+1),w
	movwf	(___fladd@f1+1)
	movf	(___flsub@f2),w
	movwf	(___fladd@f1)

	movf	(___flsub@f1+3),w
	movwf	(___fladd@f2+3)
	movf	(___flsub@f1+2),w
	movwf	(___fladd@f2+2)
	movf	(___flsub@f1+1),w
	movwf	(___fladd@f2+1)
	movf	(___flsub@f1),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(?___flsub+3)
	movf	(2+(?___fladd)),w
	movwf	(?___flsub+2)
	movf	(1+(?___fladd)),w
	movwf	(?___flsub+1)
	movf	(0+(?___fladd)),w
	movwf	(?___flsub)

	line	32
	
l911:	
	return
	opt stack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 56 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
;; Parameters:    Size  Location     Type
;;  f2              4    4[BANK0 ] unsigned char 
;;  f1              4    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  f3              4   16[BANK0 ] unsigned char 
;;  sign            1   22[BANK0 ] unsigned char 
;;  exp             1   21[BANK0 ] unsigned char 
;;  cntr            1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
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
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
	line	56
global __ptext22
__ptext22:	;psect for function ___fldiv
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldiv.c"
	line	56
	global	__size_of___fldiv
	__size_of___fldiv	equ	__end_of___fldiv-___fldiv
	
___fldiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___fldiv: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l3705:	
	movf	(___fldiv@f1),w
	movwf	(??___fldiv+0)+0
	movf	(___fldiv@f1+1),w
	movwf	((??___fldiv+0)+0+1)
	movf	(___fldiv@f1+2),w
	movwf	((??___fldiv+0)+0+2)
	movf	(___fldiv@f1+3),w
	movwf	((??___fldiv+0)+0+3)
	clrc
	rlf	(??___fldiv+0)+2,w
	rlf	(??___fldiv+0)+3,w
	movwf	(___fldiv@exp)
	movf	(((___fldiv@exp))),w
	btfss	status,2
	goto	u3511
	goto	u3510
u3511:
	goto	l3709
u3510:
	line	64
	
l3707:	
	clrf	(?___fldiv)
	clrf	(?___fldiv+1)
	clrf	(?___fldiv+2)
	clrf	(?___fldiv+3)
	goto	l870
	line	65
	
l3709:	
	movf	(___fldiv@f2),w
	movwf	(??___fldiv+0)+0
	movf	(___fldiv@f2+1),w
	movwf	((??___fldiv+0)+0+1)
	movf	(___fldiv@f2+2),w
	movwf	((??___fldiv+0)+0+2)
	movf	(___fldiv@f2+3),w
	movwf	((??___fldiv+0)+0+3)
	clrc
	rlf	(??___fldiv+0)+2,w
	rlf	(??___fldiv+0)+3,w
	movwf	(___fldiv@sign)
	movf	(((___fldiv@sign))),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3713
u3520:
	line	66
	
l3711:	
	clrf	(?___fldiv)
	clrf	(?___fldiv+1)
	clrf	(?___fldiv+2)
	clrf	(?___fldiv+3)
	goto	l870
	line	67
	
l3713:	
	movlw	low(089h)
	addwf	(___fldiv@sign),w
	movwf	(??___fldiv+0)+0
	movf	0+(??___fldiv+0)+0,w
	subwf	(___fldiv@exp),f
	line	68
	
l3715:	
	movf	0+(___fldiv@f1)+03h,w
	movwf	(___fldiv@sign)
	line	69
	
l3717:	
	movf	0+(___fldiv@f2)+03h,w
	xorwf	(___fldiv@sign),f
	line	70
	
l3719:	
	movlw	low(080h)
	andwf	(___fldiv@sign),f
	line	71
	
l3721:	
	bsf	(___fldiv@f1)+(23/8),(23)&7
	line	72
	
l3723:	
	movlw	0FFh
	andwf	(___fldiv@f1),f
	movlw	0FFh
	andwf	(___fldiv@f1+1),f
	movlw	0FFh
	andwf	(___fldiv@f1+2),f
	movlw	0
	andwf	(___fldiv@f1+3),f
	line	73
	
l3725:	
	bsf	(___fldiv@f2)+(23/8),(23)&7
	line	74
	
l3727:	
	movlw	0FFh
	andwf	(___fldiv@f2),f
	movlw	0FFh
	andwf	(___fldiv@f2+1),f
	movlw	0FFh
	andwf	(___fldiv@f2+2),f
	movlw	0
	andwf	(___fldiv@f2+3),f
	line	75
	
l3729:	
	movlw	low(020h)
	movwf	(___fldiv@cntr)
	line	77
	
l3731:	
	clrc
	rlf	(___fldiv@f3),f
	rlf	(___fldiv@f3+1),f
	rlf	(___fldiv@f3+2),f
	rlf	(___fldiv@f3+3),f
	line	78
	movf	(___fldiv@f2+3),w
	subwf	(___fldiv@f1+3),w
	skipz
	goto	u3535
	movf	(___fldiv@f2+2),w
	subwf	(___fldiv@f1+2),w
	skipz
	goto	u3535
	movf	(___fldiv@f2+1),w
	subwf	(___fldiv@f1+1),w
	skipz
	goto	u3535
	movf	(___fldiv@f2),w
	subwf	(___fldiv@f1),w
u3535:
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l3737
u3530:
	line	79
	
l3733:	
	movf	(___fldiv@f2),w
	subwf	(___fldiv@f1),f
	movf	(___fldiv@f2+1),w
	skipc
	incfsz	(___fldiv@f2+1),w
	subwf	(___fldiv@f1+1),f
	movf	(___fldiv@f2+2),w
	skipc
	incfsz	(___fldiv@f2+2),w
	subwf	(___fldiv@f1+2),f
	movf	(___fldiv@f2+3),w
	skipc
	incfsz	(___fldiv@f2+3),w
	subwf	(___fldiv@f1+3),f
	line	80
	
l3735:	
	bsf	(___fldiv@f3)+(0/8),(0)&7
	line	82
	
l3737:	
	clrc
	rlf	(___fldiv@f1),f
	rlf	(___fldiv@f1+1),f
	rlf	(___fldiv@f1+2),f
	rlf	(___fldiv@f1+3),f
	line	83
	
l3739:	
	decfsz	(___fldiv@cntr),f
	goto	u3541
	goto	u3540
u3541:
	goto	l3731
u3540:
	line	84
	
l3741:	
	movf	(___fldiv@f3+3),w
	movwf	(___flpack@arg+3)
	movf	(___fldiv@f3+2),w
	movwf	(___flpack@arg+2)
	movf	(___fldiv@f3+1),w
	movwf	(___flpack@arg+1)
	movf	(___fldiv@f3),w
	movwf	(___flpack@arg)

	movf	(___fldiv@exp),w
	movwf	(___flpack@exp)
	movf	(___fldiv@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___fldiv+3)
	movf	(2+(?___flpack)),w
	movwf	(?___fldiv+2)
	movf	(1+(?___flpack)),w
	movwf	(?___fldiv+1)
	movf	(0+(?___flpack)),w
	movwf	(?___fldiv)

	line	85
	
l870:	
	return
	opt stack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	___lltofl

;; *************** function ___lltofl *****************
;; Defined at:
;;		line 30 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
;; Parameters:    Size  Location     Type
;;  c               4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    4[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
	line	30
global __ptext23
__ptext23:	;psect for function ___lltofl
psect	text23
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltofl.c"
	line	30
	global	__size_of___lltofl
	__size_of___lltofl	equ	__end_of___lltofl-___lltofl
	
___lltofl:	
;incstack = 0
	opt	stack 3
; Regs used in ___lltofl: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l3897:	
	movf	(___lltofl@c+3),w
	movwf	(___flpack@arg+3)
	movf	(___lltofl@c+2),w
	movwf	(___flpack@arg+2)
	movf	(___lltofl@c+1),w
	movwf	(___flpack@arg+1)
	movf	(___lltofl@c),w
	movwf	(___flpack@arg)

	movlw	low(096h)
	movwf	(___flpack@exp)
	clrf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___lltofl+3)
	movf	(2+(?___flpack)),w
	movwf	(?___lltofl+2)
	movf	(1+(?___flpack)),w
	movwf	(?___lltofl+1)
	movf	(0+(?___flpack)),w
	movwf	(?___lltofl)

	line	33
	
l995:	
	return
	opt stack 0
GLOBAL	__end_of___lltofl
	__end_of___lltofl:
	signat	___lltofl,4220
	global	_log10

;; *************** function _log10 *****************
;; Defined at:
;;		line 39 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               4    0[BANK1 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[BANK1 ] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/100
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       4       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       8       0       0
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
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	39
global __ptext24
__ptext24:	;psect for function _log10
psect	text24
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	39
	global	__size_of_log10
	__size_of_log10	equ	__end_of_log10-_log10
	
_log10:	
;incstack = 0
	opt	stack 1
; Regs used in _log10: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	41
	
l3979:	
	movf	(log10@x+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(log@x+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log10@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(log@x+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log10@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(log@x+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(log10@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(log@x)

	fcall	_log
	movf	(3+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_log10$1058+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_log10$1058+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_log10$1058+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?_log)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_log10$1058)^080h

	
l3981:	
	movlw	0x3e
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f1+3)
	movlw	0xde
	movwf	(___flmul@f1+2)
	movlw	0x5b
	movwf	(___flmul@f1+1)
	movlw	0xd9
	movwf	(___flmul@f1)

	bsf	status, 5	;RP0=1, select bank1
	movf	(_log10$1058+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_log10$1058+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_log10$1058+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_log10$1058)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log10+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log10+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log10+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___flmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(?_log10)^080h

	line	42
	
l1011:	
	return
	opt stack 0
GLOBAL	__end_of_log10
	__end_of_log10:
	signat	_log10,4220
	global	_log

;; *************** function _log *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
;; Parameters:    Size  Location     Type
;;  x               4   73[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exponent        2   77[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  4   73[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtofl
;;		___fladd
;;		___flge
;;		___flmul
;;		_eval_poly
;;		_frexp
;; This function is called by:
;;		_log10
;;		_pow
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	5
global __ptext25
__ptext25:	;psect for function _log
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\log.c"
	line	5
	global	__size_of_log
	__size_of_log	equ	__end_of_log-_log
	
_log:	
;incstack = 0
	opt	stack 1
; Regs used in _log: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l3901:	
	movf	(log@x+3),w
	movwf	(___flge@ff1+3)
	movf	(log@x+2),w
	movwf	(___flge@ff1+2)
	movf	(log@x+1),w
	movwf	(___flge@ff1+1)
	movf	(log@x),w
	movwf	(___flge@ff1)

	clrf	(___flge@ff2)
	clrf	(___flge@ff2+1)
	clrf	(___flge@ff2+2)
	clrf	(___flge@ff2+3)
	fcall	___flge
	btfsc	status,0
	goto	u3731
	goto	u3730
u3731:
	goto	l3905
u3730:
	line	26
	
l3903:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_log)
	clrf	(?_log+1)
	clrf	(?_log+2)
	clrf	(?_log+3)
	goto	l1007
	line	28
	
l3905:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(log@x+3),w
	iorwf	(log@x+2),w
	iorwf	(log@x+1),w
	iorwf	(log@x),w
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l3909
u3740:
	line	30
	
l3907:	
	clrf	(?_log)
	clrf	(?_log+1)
	clrf	(?_log+2)
	clrf	(?_log+3)
	goto	l1007
	line	32
	
l3909:	
	movlw	0xbf
	movwf	(___fladd@f1+3)
	movlw	0x80
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	movlw	0x40
	movwf	(___flmul@f1+3)
	movlw	0x0
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	(low(log@exponent|((0x0)<<8)))&0ffh
	movwf	(frexp@eptr)
	movf	(log@x+3),w
	movwf	(frexp@value+3)
	movf	(log@x+2),w
	movwf	(frexp@value+2)
	movf	(log@x+1),w
	movwf	(frexp@value+1)
	movf	(log@x),w
	movwf	(frexp@value)

	fcall	_frexp
	movf	(3+(?_frexp)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(___flmul@f2+3)
	movf	(2+(?_frexp)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?_frexp)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?_frexp)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(log@x+3)
	movf	(2+(?___fladd)),w
	movwf	(log@x+2)
	movf	(1+(?___fladd)),w
	movwf	(log@x+1)
	movf	(0+(?___fladd)),w
	movwf	(log@x)

	line	33
	
l3911:	
	movlw	-1
	addwf	(log@exponent),f
	skipc
	decf	(log@exponent+1),f
	line	34
	
l3913:	
	movf	(log@x+3),w
	movwf	(eval_poly@x+3)
	movf	(log@x+2),w
	movwf	(eval_poly@x+2)
	movf	(log@x+1),w
	movwf	(eval_poly@x+1)
	movf	(log@x),w
	movwf	(eval_poly@x)

	movlw	(low((((log@coeff)-__stringbase)|8000h)))&0ffh
	movwf	(eval_poly@d)
	movlw	08h
	movwf	(eval_poly@n)
	clrf	(eval_poly@n+1)
	fcall	_eval_poly
	movf	(3+(?_eval_poly)),w
	movwf	(log@x+3)
	movf	(2+(?_eval_poly)),w
	movwf	(log@x+2)
	movf	(1+(?_eval_poly)),w
	movwf	(log@x+1)
	movf	(0+(?_eval_poly)),w
	movwf	(log@x)

	line	35
	
l3915:	
	movf	(log@x+3),w
	movwf	(___fladd@f1+3)
	movf	(log@x+2),w
	movwf	(___fladd@f1+2)
	movf	(log@x+1),w
	movwf	(___fladd@f1+1)
	movf	(log@x),w
	movwf	(___fladd@f1)

	movlw	0x3f
	movwf	(___flmul@f1+3)
	movlw	0x31
	movwf	(___flmul@f1+2)
	movlw	0x72
	movwf	(___flmul@f1+1)
	movlw	0x18
	movwf	(___flmul@f1)

	movf	(log@exponent+1),w
	movwf	(___awtofl@c+1)
	movf	(log@exponent),w
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___awtofl)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___awtofl)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___awtofl)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(?_log+3)
	movf	(2+(?___fladd)),w
	movwf	(?_log+2)
	movf	(1+(?___fladd)),w
	movwf	(?_log+1)
	movf	(0+(?___fladd)),w
	movwf	(?_log)

	line	36
	
l1007:	
	return
	opt stack 0
GLOBAL	__end_of_log
	__end_of_log:
	signat	_log,4220
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           4    2[COMMON] int 
;;  eptr            1    6[COMMON] PTR int 
;;		 -> log@exponent(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 200/100
;;		On exit  : A00/0
;;		Unchanged: 200/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
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
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	254
global __ptext26
__ptext26:	;psect for function _frexp
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
;incstack = 0
	opt	stack 3
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
l2521:	
	movf	(frexp@value+3),w
	iorwf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u2031
	goto	u2030
u2031:
	goto	l2529
u2030:
	line	257
	
l2523:	
	movf	(frexp@eptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	line	258
	
l2525:	
	clrf	(?_frexp)
	clrf	(?_frexp+1)
	clrf	(?_frexp+2)
	clrf	(?_frexp+3)
	goto	l931
	line	261
	
l2529:	
	movf	0+(frexp@value)+03h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	rlf	0+(frexp@value)+02h,w
	rlf	0+(frexp@value)+02h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
l2531:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	082h
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	0FFh
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
l2533:	
	movf	0+(frexp@value)+03h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+03h
	line	269
	
l2535:	
	bcf	0+(frexp@value)+02h,7
	line	273
	
l2537:	
	line	274
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8316
	global	_eval_poly

;; *************** function _eval_poly *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
;; Parameters:    Size  Location     Type
;;  x               4   57[BANK0 ] PTR int 
;;  d               1   61[BANK0 ] PTR const 
;;		 -> exp@coeff(40), log@coeff(36), 
;;  n               2   62[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  res             4   69[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  4   57[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       7       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
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
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
	line	4
global __ptext27
__ptext27:	;psect for function _eval_poly
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\evalpoly.c"
	line	4
	global	__size_of_eval_poly
	__size_of_eval_poly	equ	__end_of_eval_poly-_eval_poly
	
_eval_poly:	
;incstack = 0
	opt	stack 1
; Regs used in _eval_poly: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	8
	
l3793:	
	movf	(eval_poly@n),w
	movwf	(??_eval_poly+0)+0
	movlw	(02h)-1
u3605:
	clrc
	rlf	(??_eval_poly+0)+0,f
	addlw	-1
	skipz
	goto	u3605
	clrc
	rlf	(??_eval_poly+0)+0,w
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	((??_eval_poly+1)+0)
	fcall	stringdir
	movwf	((??_eval_poly+1)+0+1)
	fcall	stringdir
	movwf	((??_eval_poly+1)+0+2)
	fcall	stringdir
	movwf	((??_eval_poly+1)+0+3)
	movf	3+(??_eval_poly+1)+0,w
	movwf	(eval_poly@res+3)
	movf	2+(??_eval_poly+1)+0,w
	movwf	(eval_poly@res+2)
	movf	1+(??_eval_poly+1)+0,w
	movwf	(eval_poly@res+1)
	movf	0+(??_eval_poly+1)+0,w
	movwf	(eval_poly@res)

	line	9
	goto	l3797
	line	10
	
l3795:	
	movlw	-1
	addwf	(eval_poly@n),f
	skipc
	decf	(eval_poly@n+1),f
	movf	((eval_poly@n)),w
	movwf	(??_eval_poly+0)+0
	movlw	(02h)-1
u3615:
	clrc
	rlf	(??_eval_poly+0)+0,f
	addlw	-1
	skipz
	goto	u3615
	clrc
	rlf	(??_eval_poly+0)+0,w
	addwf	(eval_poly@d),w
	movwf	fsr0
	fcall	stringdir
	movwf	((??_eval_poly+1)+0)
	fcall	stringdir
	movwf	((??_eval_poly+1)+0+1)
	fcall	stringdir
	movwf	((??_eval_poly+1)+0+2)
	fcall	stringdir
	movwf	((??_eval_poly+1)+0+3)
	movf	3+(??_eval_poly+1)+0,w
	movwf	(___fladd@f1+3)
	movf	2+(??_eval_poly+1)+0,w
	movwf	(___fladd@f1+2)
	movf	1+(??_eval_poly+1)+0,w
	movwf	(___fladd@f1+1)
	movf	0+(??_eval_poly+1)+0,w
	movwf	(___fladd@f1)

	movf	(eval_poly@res+3),w
	movwf	(___flmul@f1+3)
	movf	(eval_poly@res+2),w
	movwf	(___flmul@f1+2)
	movf	(eval_poly@res+1),w
	movwf	(___flmul@f1+1)
	movf	(eval_poly@res),w
	movwf	(___flmul@f1)

	movf	(eval_poly@x+3),w
	movwf	(___flmul@f2+3)
	movf	(eval_poly@x+2),w
	movwf	(___flmul@f2+2)
	movf	(eval_poly@x+1),w
	movwf	(___flmul@f2+1)
	movf	(eval_poly@x),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(eval_poly@res+3)
	movf	(2+(?___fladd)),w
	movwf	(eval_poly@res+2)
	movf	(1+(?___fladd)),w
	movwf	(eval_poly@res+1)
	movf	(0+(?___fladd)),w
	movwf	(eval_poly@res)

	line	9
	
l3797:	
	movf	((eval_poly@n)),w
iorwf	((eval_poly@n+1)),w
	btfss	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3795
u3620:
	line	11
	
l3799:	
	movf	(eval_poly@res+3),w
	movwf	(?_eval_poly+3)
	movf	(eval_poly@res+2),w
	movwf	(?_eval_poly+2)
	movf	(eval_poly@res+1),w
	movwf	(?_eval_poly+1)
	movf	(eval_poly@res),w
	movwf	(?_eval_poly)

	line	12
	
l1090:	
	return
	opt stack 0
GLOBAL	__end_of_eval_poly
	__end_of_eval_poly:
	signat	_eval_poly,12412
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
;; Parameters:    Size  Location     Type
;;  f1              4   23[BANK0 ] int 
;;  f2              4   27[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    4   36[BANK0 ] unsigned long 
;;  sign            1   41[BANK0 ] unsigned char 
;;  cntr            1   40[BANK0 ] unsigned char 
;;  exp             1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   23[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
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
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
	line	62
global __ptext28
__ptext28:	;psect for function ___flmul
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flmul.c"
	line	62
	global	__size_of___flmul
	__size_of___flmul	equ	__end_of___flmul-___flmul
	
___flmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___flmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l3615:	
	movf	(___flmul@f1),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@f1+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@f1+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@f1+3),w
	movwf	((??___flmul+0)+0+3)
	clrc
	rlf	(??___flmul+0)+2,w
	rlf	(??___flmul+0)+3,w
	movwf	(___flmul@exp)
	movf	(((___flmul@exp))),w
	btfss	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l3619
u3380:
	line	68
	
l3617:	
	clrf	(?___flmul)
	clrf	(?___flmul+1)
	clrf	(?___flmul+2)
	clrf	(?___flmul+3)
	goto	l885
	line	69
	
l3619:	
	movf	(___flmul@f2),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@f2+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@f2+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@f2+3),w
	movwf	((??___flmul+0)+0+3)
	clrc
	rlf	(??___flmul+0)+2,w
	rlf	(??___flmul+0)+3,w
	movwf	(___flmul@sign)
	movf	(((___flmul@sign))),w
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l3623
u3390:
	line	70
	
l3621:	
	clrf	(?___flmul)
	clrf	(?___flmul+1)
	clrf	(?___flmul+2)
	clrf	(?___flmul+3)
	goto	l885
	line	71
	
l3623:	
	movf	(___flmul@sign),w
	addlw	07Bh
	addwf	(___flmul@exp),f
	line	72
	
l3625:	
	movf	0+(___flmul@f1)+03h,w
	movwf	(___flmul@sign)
	line	73
	
l3627:	
	movf	0+(___flmul@f2)+03h,w
	xorwf	(___flmul@sign),f
	line	74
	
l3629:	
	movlw	low(080h)
	andwf	(___flmul@sign),f
	line	75
	
l3631:	
	bsf	(___flmul@f1)+(23/8),(23)&7
	line	77
	
l3633:	
	bsf	(___flmul@f2)+(23/8),(23)&7
	line	78
	
l3635:	
	movlw	0FFh
	andwf	(___flmul@f2),f
	movlw	0FFh
	andwf	(___flmul@f2+1),f
	movlw	0FFh
	andwf	(___flmul@f2+2),f
	movlw	0
	andwf	(___flmul@f2+3),f
	line	79
	
l3637:	
	clrf	(___flmul@f3_as_product)
	clrf	(___flmul@f3_as_product+1)
	clrf	(___flmul@f3_as_product+2)
	clrf	(___flmul@f3_as_product+3)
	line	197
	
l3639:	
	movlw	low(07h)
	movwf	(___flmul@cntr)
	line	199
	
l3641:	
	btfss	(___flmul@f1),(0)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l3645
u3400:
	line	200
	
l3643:	
	movf	(___flmul@f2),w
	addwf	(___flmul@f3_as_product),f
	movf	(___flmul@f2+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3411
	addwf	(___flmul@f3_as_product+1),f
u3411:
	movf	(___flmul@f2+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3412
	addwf	(___flmul@f3_as_product+2),f
u3412:
	movf	(___flmul@f2+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3413
	addwf	(___flmul@f3_as_product+3),f
u3413:

	line	201
	
l3645:	
	clrc
	rrf	(___flmul@f1+3),f
	rrf	(___flmul@f1+2),f
	rrf	(___flmul@f1+1),f
	rrf	(___flmul@f1),f
	line	202
	
l3647:	
	clrc
	rlf	(___flmul@f2),f
	rlf	(___flmul@f2+1),f
	rlf	(___flmul@f2+2),f
	rlf	(___flmul@f2+3),f
	line	203
	
l3649:	
	decfsz	(___flmul@cntr),f
	goto	u3421
	goto	u3420
u3421:
	goto	l3641
u3420:
	line	206
	
l3651:	
	movlw	low(011h)
	movwf	(___flmul@cntr)
	line	208
	
l3653:	
	btfss	(___flmul@f1),(0)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l3657
u3430:
	line	209
	
l3655:	
	movf	(___flmul@f2),w
	addwf	(___flmul@f3_as_product),f
	movf	(___flmul@f2+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3441
	addwf	(___flmul@f3_as_product+1),f
u3441:
	movf	(___flmul@f2+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3442
	addwf	(___flmul@f3_as_product+2),f
u3442:
	movf	(___flmul@f2+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3443
	addwf	(___flmul@f3_as_product+3),f
u3443:

	line	210
	
l3657:	
	clrc
	rrf	(___flmul@f1+3),f
	rrf	(___flmul@f1+2),f
	rrf	(___flmul@f1+1),f
	rrf	(___flmul@f1),f
	line	211
	
l3659:	
	clrc
	rrf	(___flmul@f3_as_product+3),f
	rrf	(___flmul@f3_as_product+2),f
	rrf	(___flmul@f3_as_product+1),f
	rrf	(___flmul@f3_as_product),f
	line	212
	
l3661:	
	decfsz	(___flmul@cntr),f
	goto	u3451
	goto	u3450
u3451:
	goto	l3653
u3450:
	line	219
	
l3663:	
	movf	(___flmul@f3_as_product+3),w
	movwf	(___flpack@arg+3)
	movf	(___flmul@f3_as_product+2),w
	movwf	(___flpack@arg+2)
	movf	(___flmul@f3_as_product+1),w
	movwf	(___flpack@arg+1)
	movf	(___flmul@f3_as_product),w
	movwf	(___flpack@arg)

	movf	(___flmul@exp),w
	movwf	(___flpack@exp)
	movf	(___flmul@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___flmul+3)
	movf	(2+(?___flpack)),w
	movwf	(?___flmul+2)
	movf	(1+(?___flpack)),w
	movwf	(?___flmul+1)
	movf	(0+(?___flpack)),w
	movwf	(?___flmul)

	line	220
	
l885:	
	return
	opt stack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 88 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
;; Parameters:    Size  Location     Type
;;  f1              4   42[BANK0 ] unsigned char 
;;  f2              4   46[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1   56[BANK0 ] unsigned char 
;;  exp2            1   55[BANK0 ] unsigned char 
;;  sign            1   54[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   42[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
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
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
	line	88
global __ptext29
__ptext29:	;psect for function ___fladd
psect	text29
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fladd.c"
	line	88
	global	__size_of___fladd
	__size_of___fladd	equ	__end_of___fladd-___fladd
	
___fladd:	
;incstack = 0
	opt	stack 3
; Regs used in ___fladd: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l3539:	
	movf	(___fladd@f1),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@f1+1),w
	movwf	((??___fladd+0)+0+1)
	movf	(___fladd@f1+2),w
	movwf	((??___fladd+0)+0+2)
	movf	(___fladd@f1+3),w
	movwf	((??___fladd+0)+0+3)
	clrc
	rlf	(??___fladd+0)+2,w
	rlf	(??___fladd+0)+3,w
	movwf	(___fladd@exp1)
	line	93
	movf	(___fladd@f2),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@f2+1),w
	movwf	((??___fladd+0)+0+1)
	movf	(___fladd@f2+2),w
	movwf	((??___fladd+0)+0+2)
	movf	(___fladd@f2+3),w
	movwf	((??___fladd+0)+0+3)
	clrc
	rlf	(??___fladd+0)+2,w
	rlf	(??___fladd+0)+3,w
	movwf	(___fladd@exp2)
	line	94
	movf	((___fladd@exp1)),w
	btfsc	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l3545
u3180:
	
l3541:	
	movf	(___fladd@exp2),w
	subwf	(___fladd@exp1),w
	skipnc
	goto	u3191
	goto	u3190
u3191:
	goto	l3549
u3190:
	
l3543:	
	movf	(___fladd@exp2),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@exp1),w
	subwf	(??___fladd+0)+0,f
	movlw	low(021h)
	subwf	0+(??___fladd+0)+0,w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l3549
u3200:
	line	95
	
l3545:	
	movf	(___fladd@f2+3),w
	movwf	(?___fladd+3)
	movf	(___fladd@f2+2),w
	movwf	(?___fladd+2)
	movf	(___fladd@f2+1),w
	movwf	(?___fladd+1)
	movf	(___fladd@f2),w
	movwf	(?___fladd)

	goto	l839
	line	96
	
l3549:	
	movf	((___fladd@exp2)),w
	btfsc	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l842
u3210:
	
l3551:	
	movf	(___fladd@exp1),w
	subwf	(___fladd@exp2),w
	skipnc
	goto	u3221
	goto	u3220
u3221:
	goto	l3555
u3220:
	
l3553:	
	movf	(___fladd@exp1),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@exp2),w
	subwf	(??___fladd+0)+0,f
	movlw	low(021h)
	subwf	0+(??___fladd+0)+0,w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3555
u3230:
	
l842:	
	line	97
	goto	l839
	line	98
	
l3555:	
	movlw	low(06h)
	movwf	(___fladd@sign)
	line	99
	
l3557:	
	btfss	(___fladd@f1+3),(31)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l843
u3240:
	line	100
	
l3559:	
	bsf	(___fladd@sign)+(7/8),(7)&7
	
l843:	
	line	101
	btfss	(___fladd@f2+3),(31)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l844
u3250:
	line	102
	
l3561:	
	bsf	(___fladd@sign)+(6/8),(6)&7
	
l844:	
	line	103
	bsf	(___fladd@f1)+(23/8),(23)&7
	line	104
	
l3563:	
	movlw	0FFh
	andwf	(___fladd@f1),f
	movlw	0FFh
	andwf	(___fladd@f1+1),f
	movlw	0FFh
	andwf	(___fladd@f1+2),f
	movlw	0
	andwf	(___fladd@f1+3),f
	line	105
	
l3565:	
	bsf	(___fladd@f2)+(23/8),(23)&7
	line	106
	movlw	0FFh
	andwf	(___fladd@f2),f
	movlw	0FFh
	andwf	(___fladd@f2+1),f
	movlw	0FFh
	andwf	(___fladd@f2+2),f
	movlw	0
	andwf	(___fladd@f2+3),f
	line	108
	movf	(___fladd@exp2),w
	subwf	(___fladd@exp1),w
	skipnc
	goto	u3261
	goto	u3260
u3261:
	goto	l3577
u3260:
	line	112
	
l3567:	
	clrc
	rlf	(___fladd@f2),f
	rlf	(___fladd@f2+1),f
	rlf	(___fladd@f2+2),f
	rlf	(___fladd@f2+3),f
	line	113
	decf	(___fladd@exp2),f
	line	114
	
l3569:	
	movf	(___fladd@exp2),w
	xorwf	(___fladd@exp1),w
	skipnz
	goto	u3271
	goto	u3270
u3271:
	goto	l3575
u3270:
	
l3571:	
	decf	(___fladd@sign),f
	movf	((___fladd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3567
u3280:
	goto	l3575
	line	116
	
l3573:	
	clrc
	rrf	(___fladd@f1+3),f
	rrf	(___fladd@f1+2),f
	rrf	(___fladd@f1+1),f
	rrf	(___fladd@f1),f
	line	117
	incf	(___fladd@exp1),f
	line	115
	
l3575:	
	movf	(___fladd@exp1),w
	xorwf	(___fladd@exp2),w
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l3573
u3290:
	goto	l853
	line	119
	
l3577:	
	movf	(___fladd@exp1),w
	subwf	(___fladd@exp2),w
	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l853
u3300:
	line	123
	
l3579:	
	clrc
	rlf	(___fladd@f1),f
	rlf	(___fladd@f1+1),f
	rlf	(___fladd@f1+2),f
	rlf	(___fladd@f1+3),f
	line	124
	decf	(___fladd@exp1),f
	line	125
	
l3581:	
	movf	(___fladd@exp2),w
	xorwf	(___fladd@exp1),w
	skipnz
	goto	u3311
	goto	u3310
u3311:
	goto	l3587
u3310:
	
l3583:	
	decf	(___fladd@sign),f
	movf	((___fladd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l3579
u3320:
	goto	l3587
	line	127
	
l3585:	
	clrc
	rrf	(___fladd@f2+3),f
	rrf	(___fladd@f2+2),f
	rrf	(___fladd@f2+1),f
	rrf	(___fladd@f2),f
	line	128
	incf	(___fladd@exp2),f
	line	126
	
l3587:	
	movf	(___fladd@exp1),w
	xorwf	(___fladd@exp2),w
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l3585
u3330:
	line	131
	
l853:	
	btfss	(___fladd@sign),(7)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l3593
u3340:
	line	133
	
l3589:	
	movlw	0FFh
	xorwf	(___fladd@f1),f
	movlw	0FFh
	xorwf	(___fladd@f1+1),f
	movlw	0FFh
	xorwf	(___fladd@f1+2),f
	movlw	0FFh
	xorwf	(___fladd@f1+3),f
	line	134
	
l3591:	
	incf	(___fladd@f1),f
	skipnz
	incf	(___fladd@f1+1),f
	skipnz
	incf	(___fladd@f1+2),f
	skipnz
	incf	(___fladd@f1+3),f
	line	136
	
l3593:	
	btfss	(___fladd@sign),(6)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l3599
u3350:
	line	138
	
l3595:	
	movlw	0FFh
	xorwf	(___fladd@f2),f
	movlw	0FFh
	xorwf	(___fladd@f2+1),f
	movlw	0FFh
	xorwf	(___fladd@f2+2),f
	movlw	0FFh
	xorwf	(___fladd@f2+3),f
	line	139
	
l3597:	
	incf	(___fladd@f2),f
	skipnz
	incf	(___fladd@f2+1),f
	skipnz
	incf	(___fladd@f2+2),f
	skipnz
	incf	(___fladd@f2+3),f
	line	141
	
l3599:	
	clrf	(___fladd@sign)
	line	142
	
l3601:	
	movf	(___fladd@f1),w
	addwf	(___fladd@f2),f
	movf	(___fladd@f1+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3361
	addwf	(___fladd@f2+1),f
u3361:
	movf	(___fladd@f1+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3362
	addwf	(___fladd@f2+2),f
u3362:
	movf	(___fladd@f1+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3363
	addwf	(___fladd@f2+3),f
u3363:

	line	143
	
l3603:	
	btfss	(___fladd@f2+3),(31)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l3611
u3370:
	line	144
	
l3605:	
	movlw	0FFh
	xorwf	(___fladd@f2),f
	movlw	0FFh
	xorwf	(___fladd@f2+1),f
	movlw	0FFh
	xorwf	(___fladd@f2+2),f
	movlw	0FFh
	xorwf	(___fladd@f2+3),f
	line	145
	
l3607:	
	incf	(___fladd@f2),f
	skipnz
	incf	(___fladd@f2+1),f
	skipnz
	incf	(___fladd@f2+2),f
	skipnz
	incf	(___fladd@f2+3),f
	line	146
	
l3609:	
	clrf	(___fladd@sign)
	incf	(___fladd@sign),f
	line	148
	
l3611:	
	movf	(___fladd@f2+3),w
	movwf	(___flpack@arg+3)
	movf	(___fladd@f2+2),w
	movwf	(___flpack@arg+2)
	movf	(___fladd@f2+1),w
	movwf	(___flpack@arg+1)
	movf	(___fladd@f2),w
	movwf	(___flpack@arg)

	movf	(___fladd@exp1),w
	movwf	(___flpack@exp)
	movf	(___fladd@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___fladd+3)
	movf	(2+(?___flpack)),w
	movwf	(?___fladd+2)
	movf	(1+(?___flpack)),w
	movwf	(?___fladd+1)
	movf	(0+(?___flpack)),w
	movwf	(?___fladd)

	line	149
	
l839:	
	return
	opt stack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    2[COMMON] unsigned char 
;;  ff2             4    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         8       4       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_double
;;		_measure_capacitance
;;		_measure_inductance
;;		_floor
;;		_ldexp
;;		_log
;;		_pow
;;		_exp
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
	line	4
global __ptext30
__ptext30:	;psect for function ___flge
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\flge.c"
	line	4
	global	__size_of___flge
	__size_of___flge	equ	__end_of___flge-___flge
	
___flge:	
;incstack = 0
	opt	stack 5
; Regs used in ___flge: [wreg+status,2+status,0]
	line	6
	
l2447:	
	btfss	(___flge@ff1+3),(31)&7
	goto	u1891
	goto	u1890
u1891:
	goto	l2451
u1890:
	line	7
	
l2449:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___flge+0)+0)
	movlw	0
	movwf	((??___flge+0)+0+1)
	movlw	0
	movwf	((??___flge+0)+0+2)
	movlw	080h
	movwf	((??___flge+0)+0+3)
	movf	(___flge@ff1),w
	subwf	(??___flge+0)+0,f
	movf	(___flge@ff1+1),w
	skipc
	incfsz	(___flge@ff1+1),w
	goto	u1901
	goto	u1902
u1901:
	subwf	(??___flge+0)+1,f
u1902:
	movf	(___flge@ff1+2),w
	skipc
	incfsz	(___flge@ff1+2),w
	goto	u1903
	goto	u1904
u1903:
	subwf	(??___flge+0)+2,f
u1904:
	movf	(___flge@ff1+3),w
	skipc
	incfsz	(___flge@ff1+3),w
	goto	u1905
	goto	u1906
u1905:
	subwf	(??___flge+0)+3,f
u1906:

	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff1+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff1+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff1+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff1)

	line	8
	
l2451:	
	btfss	(___flge@ff2+3),(31)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l878
u1910:
	line	9
	
l2453:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___flge+0)+0)
	movlw	0
	movwf	((??___flge+0)+0+1)
	movlw	0
	movwf	((??___flge+0)+0+2)
	movlw	080h
	movwf	((??___flge+0)+0+3)
	movf	(___flge@ff2),w
	subwf	(??___flge+0)+0,f
	movf	(___flge@ff2+1),w
	skipc
	incfsz	(___flge@ff2+1),w
	goto	u1921
	goto	u1922
u1921:
	subwf	(??___flge+0)+1,f
u1922:
	movf	(___flge@ff2+2),w
	skipc
	incfsz	(___flge@ff2+2),w
	goto	u1923
	goto	u1924
u1923:
	subwf	(??___flge+0)+2,f
u1924:
	movf	(___flge@ff2+3),w
	skipc
	incfsz	(___flge@ff2+3),w
	goto	u1925
	goto	u1926
u1925:
	subwf	(??___flge+0)+3,f
u1926:

	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff2+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff2+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff2+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff2)

	
l878:	
	line	10
	movlw	080h
	xorwf	(___flge@ff1+3),f
	line	11
	movlw	080h
	xorwf	(___flge@ff2+3),f
	line	12
	movf	(___flge@ff2+3),w
	subwf	(___flge@ff1+3),w
	skipz
	goto	u1935
	movf	(___flge@ff2+2),w
	subwf	(___flge@ff1+2),w
	skipz
	goto	u1935
	movf	(___flge@ff2+1),w
	subwf	(___flge@ff1+1),w
	skipz
	goto	u1935
	movf	(___flge@ff2),w
	subwf	(___flge@ff1),w
u1935:
	skipnc
	goto	u1931
	goto	u1930
u1931:
	goto	l2457
u1930:
	
l2455:	
	clrc
	
	goto	l879
	
l2457:	
	setc
	
	line	13
	
l879:	
	return
	opt stack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___awtofl

;; *************** function ___awtofl *****************
;; Defined at:
;;		line 31 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  f1              4    0        int 
;;  sign            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    4[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       4       0       0       0
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
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
	line	31
global __ptext31
__ptext31:	;psect for function ___awtofl
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtofl.c"
	line	31
	global	__size_of___awtofl
	__size_of___awtofl	equ	__end_of___awtofl-___awtofl
	
___awtofl:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtofl: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3695:	
	clrf	(___awtofl@sign)
	line	37
	
l3697:	
	btfss	(___awtofl@c+1),7
	goto	u3501
	goto	u3500
u3501:
	goto	l3701
u3500:
	line	38
	
l3699:	
	comf	(___awtofl@c),f
	comf	(___awtofl@c+1),f
	incf	(___awtofl@c),f
	skipnz
	incf	(___awtofl@c+1),f
	line	39
	incf	(___awtofl@sign),f
	line	41
	
l3701:	
	movf	(___awtofl@c),w
	movwf	(___flpack@arg)
	movf	(___awtofl@c+1),w
	movwf	((___flpack@arg))+1
	clrf	2+((___flpack@arg))
	clrf	3+((___flpack@arg))
	movlw	low(096h)
	movwf	(___flpack@exp)
	movf	(___awtofl@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___awtofl+3)
	movf	(2+(?___flpack)),w
	movwf	(?___awtofl+2)
	movf	(1+(?___flpack)),w
	movwf	(?___awtofl+1)
	movf	(0+(?___flpack)),w
	movwf	(?___awtofl)

	line	42
	
l812:	
	return
	opt stack 0
GLOBAL	__end_of___awtofl
	__end_of___awtofl:
	signat	___awtofl,4220
	global	_calibrate

;; *************** function _calibrate *****************
;; Defined at:
;;		line 25 in file "../../../lib/../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   51[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___lwtofl
;;		_delay10ms
;;		_lcd_clear
;;		_lcd_gotoxy
;;		_lcd_putch
;;		_measure_freq
;;		_put_str
;;		_uart_puts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"../../../lib/../src/measure.c"
	line	25
global __ptext32
__ptext32:	;psect for function _calibrate
psect	text32
	file	"../../../lib/../src/measure.c"
	line	25
	global	__size_of_calibrate
	__size_of_calibrate	equ	__end_of_calibrate-_calibrate
	
_calibrate:	
;incstack = 0
	opt	stack 0
; Regs used in _calibrate: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l4187:	
;measure.c: 26: unsigned char i;
;measure.c: 29: lcd_clear();
	fcall	_lcd_clear
	line	31
	
l4189:	
;measure.c: 31: lcd_gotoxy(0, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	32
	
l4191:	
;measure.c: 32: put_str("Calibrating");
	movlw	(low((((STR_19)-__stringbase)|8000h)))&0ffh
	fcall	_put_str
	line	34
	
l4193:	
;measure.c: 34: lcd_gotoxy(0, 1);
	clrf	(lcd_gotoxy@row)
	incf	(lcd_gotoxy@row),f
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	35
	
l4195:	
;measure.c: 35: uart_puts("\r\n");
	movlw	(low((((STR_20)-__stringbase)|8000h)))&0ffh
	fcall	_uart_puts
	line	36
	
l4197:	
;measure.c: 36: put_str("please wait...");
	movlw	(low((((STR_21)-__stringbase)|8000h)))&0ffh
	fcall	_put_str
	line	39
	
l4199:	
;measure.c: 39: PORTC &= ~(1 << 5);
	bcf	(7)+(5/8),(5)&7	;volatile
	line	41
	
l4201:	
;measure.c: 41: F1 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?_measure_freq)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1)^080h

	line	42
	
l4203:	
;measure.c: 42: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	44
	
l4205:	
;measure.c: 44: F1 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?_measure_freq)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F1)^080h

	line	45
	
l4207:	
;measure.c: 45: PORTC |= (1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bsf	(7)+(5/8),(5)&7	;volatile
	line	47
	
l4209:	
;measure.c: 47: F2 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?_measure_freq)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2)^080h

	line	48
	
l4211:	
;measure.c: 48: delay10ms(50);
	movlw	low(032h)
	fcall	_delay10ms
	line	50
	
l4213:	
;measure.c: 50: F2 = (double)measure_freq();
	fcall	_measure_freq
	movf	(1+(?_measure_freq)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?_measure_freq)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___lwtofl)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_F2)^080h

	line	51
	
l4215:	
;measure.c: 51: PORTC &= ~(1 << 5);
	bcf	status, 5	;RP0=0, select bank0
	bcf	(7)+(5/8),(5)&7	;volatile
	line	55
	
l4217:	
;measure.c: 55: lcd_gotoxy(11, 0);
	clrf	(lcd_gotoxy@row)
	movlw	low(0Bh)
	fcall	_lcd_gotoxy
	line	57
	
l4219:	
;measure.c: 57: for(i = 0; i < 6; i++) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(calibrate@i)
	line	58
	
l4225:	
;measure.c: 58: lcd_putch('=');
	movlw	low(03Dh)
	movwf	(lcd_putch@value)
	fcall	_lcd_putch
	line	60
;measure.c: 60: delay10ms(28);
	movlw	low(01Ch)
	fcall	_delay10ms
	line	57
	
l4227:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(calibrate@i),f
	
l4229:	
	movlw	low(06h)
	subwf	(calibrate@i),w
	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l4225
u4000:
	line	63
	
l4231:	
;measure.c: 61: }
;measure.c: 63: uart_puts("\r\n");
	movlw	(low((((STR_22)-__stringbase)|8000h)))&0ffh
	fcall	_uart_puts
	line	64
	
l468:	
	return
	opt stack 0
GLOBAL	__end_of_calibrate
	__end_of_calibrate:
	signat	_calibrate,88
	global	_uart_puts

;; *************** function _uart_puts *****************
;; Defined at:
;;		line 112 in file "../../../lib/uart.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_22(3), STR_20(3), STR_14(6), STR_9(3), 
;; Auto vars:     Size  Location     Type
;;  s               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_22(3), STR_20(3), STR_14(6), STR_9(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_uart_putch
;; This function is called by:
;;		_print_unit
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"../../../lib/uart.c"
	line	112
global __ptext33
__ptext33:	;psect for function _uart_puts
psect	text33
	file	"../../../lib/uart.c"
	line	112
	global	__size_of_uart_puts
	__size_of_uart_puts	equ	__end_of_uart_puts-_uart_puts
	
_uart_puts:	
;incstack = 0
	opt	stack 5
; Regs used in _uart_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;uart_puts@s stored from wreg
	movwf	(uart_puts@s)
	line	113
	
l2771:	
;uart.c: 113: while(*s) uart_putch(*s++);
	goto	l2777
	
l2773:	
	movf	(uart_puts@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_uart_putch
	
l2775:	
	incf	(uart_puts@s),f
	
l2777:	
	movf	(uart_puts@s),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l2773
u2390:
	line	114
	
l569:	
	return
	opt stack 0
GLOBAL	__end_of_uart_puts
	__end_of_uart_puts:
	signat	_uart_puts,4216
	global	_uart_putch

;; *************** function _uart_putch *****************
;; Defined at:
;;		line 23 in file "../../../lib/uart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uart_puts
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	line	23
global __ptext34
__ptext34:	;psect for function _uart_putch
psect	text34
	file	"../../../lib/uart.c"
	line	23
	global	__size_of_uart_putch
	__size_of_uart_putch	equ	__end_of_uart_putch-_uart_putch
	
_uart_putch:	
;incstack = 0
	opt	stack 5
; Regs used in _uart_putch: [wreg]
;uart_putch@byte stored from wreg
	movwf	(uart_putch@byte)
	line	25
	
l2605:	
	line	28
;uart.c: 25: while(!TXIF) {
	
l528:	
	line	25
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u2161
	goto	u2160
u2161:
	goto	l528
u2160:
	line	29
	
l2607:	
;uart.c: 28: }
;uart.c: 29: TXREG = (unsigned char)byte;
	movf	(uart_putch@byte),w
	movwf	(25)	;volatile
	line	30
	
l531:	
	return
	opt stack 0
GLOBAL	__end_of_uart_putch
	__end_of_uart_putch:
	signat	_uart_putch,4216
	global	_measure_freq

;; *************** function _measure_freq *****************
;; Defined at:
;;		line 71 in file "../../../lib/../src/measure.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   45[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;                  2   41[BANK0 ] unsigned short 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_format_number
;;		_lcd_gotoxy
;;		_put_str
;;		_timer0_read_ps
;; This function is called by:
;;		_calibrate
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"../../../lib/../src/measure.c"
	line	71
global __ptext35
__ptext35:	;psect for function _measure_freq
psect	text35
	file	"../../../lib/../src/measure.c"
	line	71
	global	__size_of_measure_freq
	__size_of_measure_freq	equ	__end_of_measure_freq-_measure_freq
	
_measure_freq:	
;incstack = 0
	opt	stack 0
; Regs used in _measure_freq: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	74
	
l4023:	
;measure.c: 72: unsigned short int count;
;measure.c: 74: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	78
;measure.c: 78: TRISA &= ~0b00010000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h+(4/8),(4)&7	;volatile
	line	80
	
l4025:	
;measure.c: 80: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	221
movwf	((??_measure_freq+0)+0),f
u4177:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4177
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4177
	nop2
opt asmopt_on

	line	83
	
l4027:	
;measure.c: 83: TMR0 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	85
	
l4029:	
;measure.c: 85: RC3 = ((1) == 0);
	bcf	(59/8),(59)&7	;volatile
	line	88
	
l4031:	
;measure.c: 88: _delay((unsigned long)((10)*(20000000/4000.0))); _delay((unsigned long)((10)*(20000000/4000.0))); _delay((unsigned long)((10)*(20000000/4000.0))); _delay((unsigned long)((10)*(20000000/4000.0))); _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4187:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4187
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4187
	nop
opt asmopt_on

	
l4033:	
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4197:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4197
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4197
	nop
opt asmopt_on

	
l4035:	
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4207:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4207
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4207
	nop
opt asmopt_on

	
l4037:	
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4217:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4217
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4217
	nop
opt asmopt_on

	
l4039:	
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4227:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4227
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4227
	nop
opt asmopt_on

	line	89
	
l4041:	
;measure.c: 89: _delay((unsigned long)((10)*(20000000/4000.0))); _delay((unsigned long)((10)*(20000000/4000.0))); _delay((unsigned long)((10)*(20000000/4000.0))); _delay((unsigned long)((10)*(20000000/4000.0))); _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4237:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4237
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4237
	nop
opt asmopt_on

	
l4043:	
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4247:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4247
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4247
	nop
opt asmopt_on

	
l4045:	
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4257:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4257
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4257
	nop
opt asmopt_on

	
l4047:	
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4267:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4267
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4267
	nop
opt asmopt_on

	
l4049:	
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_measure_freq+0)+0+1),f
	movlw	238
movwf	((??_measure_freq+0)+0),f
u4277:
	decfsz	((??_measure_freq+0)+0),f
	goto	u4277
	decfsz	((??_measure_freq+0)+0+1),f
	goto	u4277
	nop
opt asmopt_on

	line	91
	
l4051:	
;measure.c: 91: RC3 = ((0) == 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	line	94
	
l4053:	
;measure.c: 94: TRISA |= 0b00010000;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(133)^080h+(4/8),(4)&7	;volatile
	line	97
	
l4055:	
;measure.c: 97: count = timer0_read_ps();
	fcall	_timer0_read_ps
	movf	(1+(?_timer0_read_ps)),w
	movwf	(measure_freq@count+1)
	movf	(0+(?_timer0_read_ps)),w
	movwf	(measure_freq@count)
	line	100
	
l4057:	
;measure.c: 100: lcd_gotoxy(0, 1);
	clrf	(lcd_gotoxy@row)
	incf	(lcd_gotoxy@row),f
	movlw	low(0)
	fcall	_lcd_gotoxy
	line	101
	
l4059:	
;measure.c: 101: put_str("Freq=");
	movlw	(low((((STR_23)-__stringbase)|8000h)))&0ffh
	fcall	_put_str
	line	102
	
l4061:	
;measure.c: 102: format_number( count, 10, 5);
	movf	(measure_freq@count+1),w
	movwf	(format_number@n+1)
	movf	(measure_freq@count),w
	movwf	(format_number@n)
	movlw	low(0Ah)
	movwf	(format_number@base)
	movlw	low(05h)
	movwf	(format_number@pad)
	fcall	_format_number
	line	105
	
l4063:	
;measure.c: 105: return count;
	movf	(measure_freq@count+1),w
	movwf	(?_measure_freq+1)
	movf	(measure_freq@count),w
	movwf	(?_measure_freq)
	line	106
	
l471:	
	return
	opt stack 0
GLOBAL	__end_of_measure_freq
	__end_of_measure_freq:
	signat	_measure_freq,90
	global	_timer0_read_ps

;; *************** function _timer0_read_ps *****************
;; Defined at:
;;		line 45 in file "../../../lib/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    1[BANK0 ] unsigned short 
;;  prev            1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 300/100
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         6       3       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"../../../lib/timer.c"
	line	45
global __ptext36
__ptext36:	;psect for function _timer0_read_ps
psect	text36
	file	"../../../lib/timer.c"
	line	45
	global	__size_of_timer0_read_ps
	__size_of_timer0_read_ps	equ	__end_of_timer0_read_ps-_timer0_read_ps
	
_timer0_read_ps:	
;incstack = 0
	opt	stack 4
; Regs used in _timer0_read_ps: [wreg+status,2+status,0+btemp+1]
	line	46
	
l3867:	
;timer.c: 46: unsigned char prev = TMR0;
	bcf	status, 5	;RP0=0, select bank0
	movf	(1),w	;volatile
	movwf	(timer0_read_ps@prev)
	line	47
	
l3869:	
;timer.c: 47: unsigned short int count = 0;
	clrf	(timer0_read_ps@count)
	clrf	(timer0_read_ps@count+1)
	line	49
	
l3871:	
;timer.c: 49: OPTION_REG |= 0x20;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(129)^080h+(5/8),(5)&7	;volatile
	line	53
	
l3873:	
;timer.c: 53: OPTION_REG |= 0x10;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(129)^080h+(4/8),(4)&7	;volatile
	line	55
	
l3875:	
;timer.c: 55: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	56
	
l3877:	
;timer.c: 56: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	58
	
l3879:	
;timer.c: 58: OPTION_REG &= ~0x10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h+(4/8),(4)&7	;volatile
	line	60
	
l3881:	
;timer.c: 60: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	61
	
l3883:	
;timer.c: 61: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	63
	
l3885:	
;timer.c: 63: ++count;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(timer0_read_ps@count),f
	skipnz
	incf	(timer0_read_ps@count+1),f
	line	66
	
l3887:	
;timer.c: 66: } while(prev == TMR0 && count <= 255);
	movf	(timer0_read_ps@prev),w
	xorwf	(1),w	;volatile
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l3891
u3710:
	
l3889:	
	movlw	01h
	subwf	(timer0_read_ps@count+1),w
	movlw	0
	skipnz
	subwf	(timer0_read_ps@count),w
	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l3873
u3720:
	line	68
	
l3891:	
;timer.c: 68: count = ((prev << 8) + (256 - count));
	movf	(timer0_read_ps@prev),w
	movwf	(??_timer0_read_ps+0)+0
	clrf	(??_timer0_read_ps+0)+0+1
	movf	(??_timer0_read_ps+0)+0,w
	movwf	(??_timer0_read_ps+0)+1
	clrf	(??_timer0_read_ps+0)+0
	movf	(timer0_read_ps@count),w
	subwf	0+(??_timer0_read_ps+0)+0,w
	movwf	(??_timer0_read_ps+2)+0
	movf	(timer0_read_ps@count+1),w
	skipc
	incf	(timer0_read_ps@count+1),w
	subwf	1+(??_timer0_read_ps+0)+0,w
	movwf	1+(??_timer0_read_ps+2)+0
	movf	0+(??_timer0_read_ps+2)+0,w
	addlw	low(0100h)
	movwf	(timer0_read_ps@count)
	movf	1+(??_timer0_read_ps+2)+0,w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(timer0_read_ps@count)
	line	69
	
l3893:	
;timer.c: 69: return count;
	movf	(timer0_read_ps@count+1),w
	movwf	(?_timer0_read_ps+1)
	movf	(timer0_read_ps@count),w
	movwf	(?_timer0_read_ps)
	line	70
	
l116:	
	return
	opt stack 0
GLOBAL	__end_of_timer0_read_ps
	__end_of_timer0_read_ps:
	signat	_timer0_read_ps,90
	global	_put_str

;; *************** function _put_str *****************
;; Defined at:
;;		line 511 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_25(13), STR_24(10), STR_23(6), STR_21(15), 
;;		 -> STR_19(12), 
;; Auto vars:     Size  Location     Type
;;  s               1    2[BANK0 ] PTR const unsigned char 
;;		 -> STR_25(13), STR_24(10), STR_23(6), STR_21(15), 
;;		 -> STR_19(12), 
;;  i               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_output_putch
;; This function is called by:
;;		_calibrate
;;		_measure_freq
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"../../../src/print.c"
	line	511
global __ptext37
__ptext37:	;psect for function _put_str
psect	text37
	file	"../../../src/print.c"
	line	511
	global	__size_of_put_str
	__size_of_put_str	equ	__end_of_put_str-_put_str
	
_put_str:	
;incstack = 0
	opt	stack 1
; Regs used in _put_str: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;put_str@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(put_str@s)
	line	514
	
l3859:	
;print.c: 512: int i;
;print.c: 514: for(i = 0; s[i]; i++) {
	clrf	(put_str@i)
	clrf	(put_str@i+1)
	goto	l3865
	line	515
	
l3861:	
;print.c: 515: output_putch(s[i]);
	movf	(put_str@i),w
	addwf	(put_str@s),w
	movwf	fsr0
	fcall	stringdir
	movwf	(output_putch@c)
	fcall	_output_putch
	line	514
	
l3863:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(put_str@i),f
	skipnz
	incf	(put_str@i+1),f
	
l3865:	
	movf	(put_str@i),w
	addwf	(put_str@s),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0
	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l3861
u3700:
	line	517
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_put_str
	__end_of_put_str:
	signat	_put_str,4216
	global	_lcd_gotoxy

;; *************** function _lcd_gotoxy *****************
;; Defined at:
;;		line 154 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  col             1    wreg     unsigned char 
;;  row             1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  col             1    0[BANK0 ] unsigned char 
;;  row_offsets     4    1[BANK0 ] unsigned char [4]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_print_unit
;;		_print_reading
;;		_indicator
;;		_main
;;		_calibrate
;;		_measure_freq
;;		_measure_capacitance
;;		_measure_inductance
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"../../../lib/lcd44780.c"
	line	154
global __ptext38
__ptext38:	;psect for function _lcd_gotoxy
psect	text38
	file	"../../../lib/lcd44780.c"
	line	154
	global	__size_of_lcd_gotoxy
	__size_of_lcd_gotoxy	equ	__end_of_lcd_gotoxy-_lcd_gotoxy
	
_lcd_gotoxy:	
;incstack = 0
	opt	stack 1
; Regs used in _lcd_gotoxy: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_gotoxy@col stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@col)
	line	156
	
l3803:	
;lcd44780.c: 156: unsigned char row_offsets[] = {0x00, 0x40, 0x14, 0x54};
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(lcd_gotoxy@F1126+3)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@row_offsets+3)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(lcd_gotoxy@F1126+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@row_offsets+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(lcd_gotoxy@F1126+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@row_offsets+1)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(lcd_gotoxy@F1126)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_gotoxy@row_offsets)

	line	165
	
l3805:	
;lcd44780.c: 165: if(LCD_lines == 1) {
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
		decf	((_LCD_lines)^0180h),w
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l3809
u3630:
	line	166
	
l3807:	
;lcd44780.c: 166: row_offsets[1] = 0x14;
	movlw	low(014h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(lcd_gotoxy@row_offsets)+01h
	line	167
;lcd44780.c: 167: row_offsets[2] = 0x28;
	movlw	low(028h)
	movwf	0+(lcd_gotoxy@row_offsets)+02h
	line	168
;lcd44780.c: 168: row_offsets[3] = 0x3C;
	movlw	low(03Ch)
	movwf	0+(lcd_gotoxy@row_offsets)+03h
	line	175
	
l3809:	
;lcd44780.c: 169: }
;lcd44780.c: 175: lcd_command(0x80 | (col + row_offsets[row]));
	movf	(lcd_gotoxy@row),w
	addlw	low(lcd_gotoxy@row_offsets|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcd_gotoxy@col),w
	bcf	status, 7	;select IRP bank0
	addwf	indf,w
	iorlw	080h
	fcall	_lcd_command
	line	176
	
l331:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_gotoxy
	__end_of_lcd_gotoxy:
	signat	_lcd_gotoxy,8312
	global	_format_number

;; *************** function _format_number *****************
;; Defined at:
;;		line 14 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  n               2    0[BANK0 ] unsigned short 
;;  base            1    2[BANK0 ] unsigned char 
;;  pad             1    3[BANK0 ] char 
;; Auto vars:     Size  Location     Type
;;  buf            32    4[BANK0 ] unsigned char [32]
;;  i               1   40[BANK0 ] char 
;;  di              1   39[BANK0 ] unsigned char 
;;  padchar         1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      37       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      41       0       0       0
;;Total ram usage:       42 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_format_putchar
;;		_lcd_putch
;;		_output_putch
;; This function is called by:
;;		_print_reading
;;		_measure_freq
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"../../../lib/format.c"
	line	14
global __ptext39
__ptext39:	;psect for function _format_number
psect	text39
	file	"../../../lib/format.c"
	line	14
	global	__size_of_format_number
	__size_of_format_number	equ	__end_of_format_number-_format_number
	
_format_number:	
;incstack = 0
	opt	stack 0
; Regs used in _format_number: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	17
	
l3819:	
;format.c: 15: char buf[8 * sizeof(long)];
;format.c: 16: unsigned char di;
;format.c: 17: signed char i = 0;
	clrf	(format_number@i)
	line	18
	
l3821:	
;format.c: 18: char padchar = ' ';
	movlw	low(020h)
	movwf	(format_number@padchar)
	line	20
	
l3823:	
;format.c: 20: if(pad < 0) {
	btfss	(format_number@pad),7
	goto	u3651
	goto	u3650
u3651:
	goto	l3829
u3650:
	line	21
	
l3825:	
;format.c: 21: pad = -pad;
	comf	(format_number@pad),f
	incf	(format_number@pad),f
	line	22
	
l3827:	
;format.c: 22: padchar = '0';
	movlw	low(030h)
	movwf	(format_number@padchar)
	line	34
	
l3829:	
;format.c: 34: di = n % base;
	movf	(format_number@base),w
	movwf	(___lwmod@divisor)
	clrf	(___lwmod@divisor+1)
	movf	(format_number@n+1),w
	movwf	(___lwmod@dividend+1)
	movf	(format_number@n),w
	movwf	(___lwmod@dividend)
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(format_number@di)
	line	35
	
l3831:	
;format.c: 35: buf[i++] = (di < 10 ? (unsigned char)'0' + di : (unsigned char)'A' + di - 10);
	movlw	low(0Ah)
	subwf	(format_number@di),w
	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l3835
u3660:
	
l3833:	
	movf	(format_number@di),w
	movwf	(_format_number$169)
	clrf	(_format_number$169+1)
	movlw	037h
	addwf	(_format_number$169),f
	skipnc
	incf	(_format_number$169+1),f
	goto	l3837
	
l3835:	
	movf	(format_number@di),w
	movwf	(_format_number$169)
	clrf	(_format_number$169+1)
	movlw	030h
	addwf	(_format_number$169),f
	skipnc
	incf	(_format_number$169+1),f
	
l3837:	
	movf	(format_number@i),w
	addlw	low(format_number@buf|((0x0)<<8))&0ffh
	movwf	fsr0
	movf	(_format_number$169),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3839:	
	incf	(format_number@i),f
	line	37
	
l3841:	
;format.c: 37: n /= base;
	movf	(format_number@base),w
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movf	(format_number@n+1),w
	movwf	(___lwdiv@dividend+1)
	movf	(format_number@n),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(format_number@n+1)
	movf	(0+(?___lwdiv)),w
	movwf	(format_number@n)
	line	38
	
l3843:	
;format.c: 38: } while(n > 0);
	movf	((format_number@n)),w
iorwf	((format_number@n+1)),w
	btfss	status,2
	goto	u3671
	goto	u3670
u3671:
	goto	l3829
u3670:
	goto	l3847
	line	40
	
l3845:	
	movf	(format_number@padchar),w
	movwf	(format_putchar@c)
	movf	(_putchar_ptr),w
	fcall	fptable
	
l3847:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(format_number@i),w
	xorlw	80h
	movwf	(??_format_number+0)+0
	movf	(format_number@pad),w
	decf	(format_number@pad),f
	xorlw	80h
	subwf	(??_format_number+0)+0
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l3845
u3680:
	line	42
	
l3849:	
;format.c: 42: for(; i > 0; i--) putchar_ptr((char)buf[(signed short int)i - 1]);
	movf	(format_number@i),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipnc
	goto	u3691
	goto	u3690
u3691:
	goto	l3853
u3690:
	goto	l149
	
l3853:	
	movf	(format_number@i),w
	addlw	0FFh
	addlw	low(format_number@buf|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(format_putchar@c)
	movf	(_putchar_ptr),w
	fcall	fptable
	
l3855:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(format_number@i),f
	goto	l3849
	line	44
	
l149:	
	return
	opt stack 0
GLOBAL	__end_of_format_number
	__end_of_format_number:
	signat	_format_number,12408
	global	_output_putch
	global	_lcd_putch
	global	_format_putchar

;; *************** function _format_putchar *****************
;; Defined at:
;;		line 6 in file "../../../lib/format.c"
;; Parameters:    Size  Location     Type
;;  c               1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/300
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_format_number
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	line	6
global __ptext40
__ptext40:	;psect for function _format_putchar
psect	text40
	file	"../../../lib/format.c"
	line	6
	global	__size_of_format_putchar
	__size_of_format_putchar	equ	__end_of_format_putchar-_format_putchar
	
_format_putchar:	
;incstack = 0
	opt	stack 3
; Regs used in _format_putchar: []
	line	7
	
l2577:	
	line	8
;format.c: 7: return;
	
l132:	
	return
	opt stack 0
GLOBAL	__end_of_format_putchar
	__end_of_format_putchar:
	signat	_format_putchar,4216

;; *************** function _lcd_putch *****************
;; Defined at:
;;		line 139 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_send
;; This function is called by:
;;		_output_putch
;;		_main
;;		_lcd_puts
;;		_calibrate
;;		_format_number
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	file	"../../../lib/lcd44780.c"
	line	139
global __ptext41
__ptext41:	;psect for function _lcd_putch
psect	text41
	file	"../../../lib/lcd44780.c"
	line	139
	global	__size_of_lcd_putch
	__size_of_lcd_putch	equ	__end_of_lcd_putch-_lcd_putch
	
_lcd_putch:	
;incstack = 0
	opt	stack 1
; Regs used in _lcd_putch: [wreg+status,2+status,0+pclath+cstack]
	line	140
	
l3527:	
;lcd44780.c: 140: lcd_send((unsigned)value, 1);
	clrf	(lcd_send@mode)
	incf	(lcd_send@mode),f
	movf	(lcd_putch@value),w
	fcall	_lcd_send
	line	141
	
l322:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putch
	__end_of_lcd_putch:
	signat	_lcd_putch,4216

;; *************** function _output_putch *****************
;; Defined at:
;;		line 498 in file "../../../src/print.c"
;; Parameters:    Size  Location     Type
;;  c               1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/300
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_putch
;; This function is called by:
;;		_put_str
;;		_measure_capacitance
;;		_format_number
;;		_format_double
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	file	"../../../src/print.c"
	line	498
global __ptext42
__ptext42:	;psect for function _output_putch
psect	text42
	file	"../../../src/print.c"
	line	498
	global	__size_of_output_putch
	__size_of_output_putch	equ	__end_of_output_putch-_output_putch
	
_output_putch:	
;incstack = 0
	opt	stack 1
; Regs used in _output_putch: [wreg+status,2+status,0+pclath+cstack]
	line	500
	
l3667:	
;print.c: 500: lcd_putch(c);
	movf	(output_putch@c),w
	movwf	(lcd_putch@value)
	fcall	_lcd_putch
	line	505
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_output_putch
	__end_of_output_putch:
	signat	_output_putch,4216
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
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
psect	text43,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	6
global __ptext43
__ptext43:	;psect for function ___lwmod
psect	text43
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2743:	
	movf	((___lwmod@divisor)),w
iorwf	((___lwmod@divisor+1)),w
	btfsc	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l2759
u2340:
	line	14
	
l2745:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2749
	line	16
	
l2747:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	17
	incf	(___lwmod@counter),f
	line	15
	
l2749:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l2747
u2350:
	line	20
	
l2751:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2365
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2755
u2360:
	line	21
	
l2753:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	22
	
l2755:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	23
	
l2757:	
	decfsz	(___lwmod@counter),f
	goto	u2371
	goto	u2370
u2371:
	goto	l2751
u2370:
	line	25
	
l2759:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	26
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] unsigned int 
;;  dividend        2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMMON] unsigned int 
;;  counter         1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 300/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
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
psect	text44,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	6
global __ptext44
__ptext44:	;psect for function ___lwdiv
psect	text44
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2717:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2719:	
	movf	((___lwdiv@divisor)),w
iorwf	((___lwdiv@divisor+1)),w
	btfsc	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l2739
u2300:
	line	16
	
l2721:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2725
	line	18
	
l2723:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l2725:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2723
u2310:
	line	22
	
l2727:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l2729:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2325
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2325:
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l2735
u2320:
	line	24
	
l2731:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2733:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l2735:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l2737:	
	decfsz	(___lwdiv@counter),f
	goto	u2331
	goto	u2330
u2331:
	goto	l2727
u2330:
	line	30
	
l2739:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_lcd_clear

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 306 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_command
;; This function is called by:
;;		_main
;;		_calibrate
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1
	file	"../../../lib/lcd44780.c"
	line	306
global __ptext45
__ptext45:	;psect for function _lcd_clear
psect	text45
	file	"../../../lib/lcd44780.c"
	line	306
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
;incstack = 0
	opt	stack 3
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	307
	
l4019:	
;lcd44780.c: 307: lcd_command(0x01);
	movlw	low(01h)
	fcall	_lcd_command
	line	308
	
l4021:	
;lcd44780.c: 308: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_lcd_clear+0)+0+1),f
	movlw	251
movwf	((??_lcd_clear+0)+0),f
u4287:
	decfsz	((??_lcd_clear+0)+0),f
	goto	u4287
	decfsz	((??_lcd_clear+0)+0+1),f
	goto	u4287
	nop2
opt asmopt_on

	line	310
	
l358:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
	signat	_lcd_clear,88
	global	_lcd_command

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 146 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
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
psect	text46,local,class=CODE,delta=2,merge=1
	line	146
global __ptext46
__ptext46:	;psect for function _lcd_command
psect	text46
	file	"../../../lib/lcd44780.c"
	line	146
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
;incstack = 0
	opt	stack 1
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@value stored from wreg
	movwf	(lcd_command@value)
	line	147
	
l3693:	
;lcd44780.c: 147: lcd_send(value, 0);
	clrf	(lcd_send@mode)
	movf	(lcd_command@value),w
	fcall	_lcd_send
	line	148
	
l325:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
	signat	_lcd_command,4216
	global	_lcd_send

;; *************** function _lcd_send *****************
;; Defined at:
;;		line 122 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  mode            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/100
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_write4bits
;; This function is called by:
;;		_lcd_putch
;;		_lcd_command
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1
	line	122
global __ptext47
__ptext47:	;psect for function _lcd_send
psect	text47
	file	"../../../lib/lcd44780.c"
	line	122
	global	__size_of_lcd_send
	__size_of_lcd_send	equ	__end_of_lcd_send-_lcd_send
	
_lcd_send:	
;incstack = 0
	opt	stack 1
; Regs used in _lcd_send: [wreg+status,2+status,0+pclath+cstack]
;lcd_send@value stored from wreg
	movwf	(lcd_send@value)
	line	123
	
l3497:	
;lcd44780.c: 123: RB2 = mode;
	btfsc	(lcd_send@mode),0
	goto	u3071
	goto	u3070
	
u3071:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	goto	u3084
u3070:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
u3084:
	line	131
	
l3499:	
;lcd44780.c: 130: {
;lcd44780.c: 131: lcd_write4bits(value >> 4);
	swapf	(lcd_send@value),w
	andlw	(0ffh shr 4) & 0ffh
	fcall	_lcd_write4bits
	line	132
;lcd44780.c: 132: lcd_write4bits(value);
	movf	(lcd_send@value),w
	fcall	_lcd_write4bits
	line	134
	
l319:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_send
	__end_of_lcd_send:
	signat	_lcd_send,8312
	global	_lcd_write4bits

;; *************** function _lcd_write4bits *****************
;; Defined at:
;;		line 57 in file "../../../lib/lcd44780.c"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_send
;;		_lcd_begin
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1
	line	57
global __ptext48
__ptext48:	;psect for function _lcd_write4bits
psect	text48
	file	"../../../lib/lcd44780.c"
	line	57
	global	__size_of_lcd_write4bits
	__size_of_lcd_write4bits	equ	__end_of_lcd_write4bits-_lcd_write4bits
	
_lcd_write4bits:	
;incstack = 0
	opt	stack 1
; Regs used in _lcd_write4bits: [wreg]
;lcd_write4bits@value stored from wreg
	movwf	(lcd_write4bits@value)
	line	62
	
l3491:	
;lcd44780.c: 62: RB4 = value & 1;
	btfsc	(lcd_write4bits@value),0
	goto	u2991
	goto	u2990
	
u2991:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	goto	u3004
u2990:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7	;volatile
u3004:
	line	63
;lcd44780.c: 63: value >>= 1;
	clrc
	rrf	(lcd_write4bits@value),f
	line	64
;lcd44780.c: 64: RB5 = value & 1;
	btfsc	(lcd_write4bits@value),0
	goto	u3011
	goto	u3010
	
u3011:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7	;volatile
	goto	u3024
u3010:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7	;volatile
u3024:
	line	65
;lcd44780.c: 65: value >>= 1;
	clrc
	rrf	(lcd_write4bits@value),f
	line	66
;lcd44780.c: 66: RB6 = value & 1;
	btfsc	(lcd_write4bits@value),0
	goto	u3031
	goto	u3030
	
u3031:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7	;volatile
	goto	u3044
u3030:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7	;volatile
u3044:
	line	67
;lcd44780.c: 67: value >>= 1;
	clrc
	rrf	(lcd_write4bits@value),f
	line	68
;lcd44780.c: 68: RB7 = value & 1;
	btfsc	(lcd_write4bits@value),0
	goto	u3051
	goto	u3050
	
u3051:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7	;volatile
	goto	u3064
u3050:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7	;volatile
u3064:
	line	74
;lcd44780.c: 74: RB3 = 1; _delay((unsigned long)((4)*(20000000/4000000.0))); RB3 = 0; _delay((unsigned long)((100)*(20000000/4000000.0)));;
	bsf	(51/8),(51)&7	;volatile
	
l3493:	
	opt asmopt_off
movlw	6
movwf	(??_lcd_write4bits+0)+0,f
u4297:
decfsz	(??_lcd_write4bits+0)+0,f
	goto	u4297
	nop
opt asmopt_on

	
l3495:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7	;volatile
	opt asmopt_off
movlw	166
movwf	(??_lcd_write4bits+0)+0,f
u4307:
decfsz	(??_lcd_write4bits+0)+0,f
	goto	u4307
	nop
opt asmopt_on

	line	79
	
l316:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write4bits
	__end_of_lcd_write4bits:
	signat	_lcd_write4bits,4216
	global	_delay10ms

;; *************** function _delay10ms *****************
;; Defined at:
;;		line 55 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;  period_10ms     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  period_10ms     1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
psect	text49,local,class=CODE,delta=2,merge=1
	file	"../../../src/LC-meter.c"
	line	55
global __ptext49
__ptext49:	;psect for function _delay10ms
psect	text49
	file	"../../../src/LC-meter.c"
	line	55
	global	__size_of_delay10ms
	__size_of_delay10ms	equ	__end_of_delay10ms-_delay10ms
	
_delay10ms:	
;incstack = 0
	opt	stack 6
; Regs used in _delay10ms: [wreg]
	line	59
	
l243:	
	return
	opt stack 0
GLOBAL	__end_of_delay10ms
	__end_of_delay10ms:
	signat	_delay10ms,4216
	global	___lwtofl

;; *************** function ___lwtofl *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   47[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   47[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
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
psect	text50,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
global __ptext50
__ptext50:	;psect for function ___lwtofl
psect	text50
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lwtofl.c"
	line	28
	global	__size_of___lwtofl
	__size_of___lwtofl	equ	__end_of___lwtofl-___lwtofl
	
___lwtofl:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwtofl: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l4067:	
	movf	(___lwtofl@c),w
	movwf	(___flpack@arg)
	movf	(___lwtofl@c+1),w
	movwf	((___flpack@arg))+1
	clrf	2+((___flpack@arg))
	clrf	3+((___flpack@arg))
	movlw	low(096h)
	movwf	(___flpack@exp)
	clrf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___lwtofl+3)
	movf	(2+(?___flpack)),w
	movwf	(?___lwtofl+2)
	movf	(1+(?___flpack)),w
	movwf	(?___lwtofl+1)
	movf	(0+(?___flpack)),w
	movwf	(?___lwtofl)

	line	31
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of___lwtofl
	__end_of___lwtofl:
	signat	___lwtofl,4220
	global	___flpack

;; *************** function ___flpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
;; Parameters:    Size  Location     Type
;;  arg             4    2[COMMON] unsigned long 
;;  exp             1    6[COMMON] unsigned char 
;;  sign            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    2[COMMON] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 300/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6       4       0       0       0
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
psect	text51,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
global __ptext51
__ptext51:	;psect for function ___flpack
psect	text51
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\double.c"
	line	63
	global	__size_of___flpack
	__size_of___flpack	equ	__end_of___flpack-___flpack
	
___flpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___flpack: [wreg+status,2+status,0]
	line	65
	
l3501:	
	movf	((___flpack@exp)),w
	btfsc	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l817
u3090:
	
l3503:	
	movf	(___flpack@arg+3),w
	iorwf	(___flpack@arg+2),w
	iorwf	(___flpack@arg+1),w
	iorwf	(___flpack@arg),w
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l3507
u3100:
	
l817:	
	line	66
	clrf	(?___flpack)
	clrf	(?___flpack+1)
	clrf	(?___flpack+2)
	clrf	(?___flpack+3)
	goto	l818
	line	68
	
l3505:	
	incf	(___flpack@exp),f
	line	69
	clrc
	rrf	(___flpack@arg+3),f
	rrf	(___flpack@arg+2),f
	rrf	(___flpack@arg+1),f
	rrf	(___flpack@arg),f
	line	67
	
l3507:	
	movlw	high highword(-33554432)
	andwf	(___flpack@arg+3),w
	btfss	status,2
	goto	u3111
	goto	u3110
u3111:
	goto	l3505
u3110:
	goto	l3511
	line	72
	
l3509:	
	incf	(___flpack@exp),f
	line	73
	incf	(___flpack@arg),f
	skipnz
	incf	(___flpack@arg+1),f
	skipnz
	incf	(___flpack@arg+2),f
	skipnz
	incf	(___flpack@arg+3),f
	line	74
	clrc
	rrf	(___flpack@arg+3),f
	rrf	(___flpack@arg+2),f
	rrf	(___flpack@arg+1),f
	rrf	(___flpack@arg),f
	line	71
	
l3511:	
	movlw	high highword(-16777216)
	andwf	(___flpack@arg+3),w
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l3509
u3120:
	goto	l3515
	line	77
	
l3513:	
	decf	(___flpack@exp),f
	line	78
	clrc
	rlf	(___flpack@arg),f
	rlf	(___flpack@arg+1),f
	rlf	(___flpack@arg+2),f
	rlf	(___flpack@arg+3),f
	line	76
	
l3515:	
	btfsc	(___flpack@arg+2),(23)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l829
u3130:
	
l3517:	
	movlw	low(02h)
	subwf	(___flpack@exp),w
	skipnc
	goto	u3141
	goto	u3140
u3141:
	goto	l3513
u3140:
	
l829:	
	line	80
	btfsc	(___flpack@exp),(0)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l3521
u3150:
	line	81
	
l3519:	
	movlw	0FFh
	andwf	(___flpack@arg),f
	movlw	0FFh
	andwf	(___flpack@arg+1),f
	movlw	07Fh
	andwf	(___flpack@arg+2),f
	movlw	0FFh
	andwf	(___flpack@arg+3),f
	line	82
	
l3521:	
	clrc
	rrf	(___flpack@exp),f
	line	83
	movf	(___flpack@exp),w
	movwf	((??___flpack+0)+0+3)
	clrf	((??___flpack+0)+0+2)
	clrf	((??___flpack+0)+0+1)
	clrf	(??___flpack+0)+0
	movf	0+(??___flpack+0)+0,w
	iorwf	(___flpack@arg),f
	movf	1+(??___flpack+0)+0,w
	iorwf	(___flpack@arg+1),f
	movf	2+(??___flpack+0)+0,w
	iorwf	(___flpack@arg+2),f
	movf	3+(??___flpack+0)+0,w
	iorwf	(___flpack@arg+3),f
	line	84
	
l3523:	
	movf	((___flpack@sign)),w
	btfsc	status,2
	goto	u3161
	goto	u3160
u3161:
	goto	l831
u3160:
	line	85
	
l3525:	
	bsf	(___flpack@arg)+(31/8),(31)&7
	
l831:	
	line	86
	line	87
	
l818:	
	return
	opt stack 0
GLOBAL	__end_of___flpack
	__end_of___flpack:
	signat	___flpack,12412
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 76 in file "../../../src/LC-meter.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  255[None  ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 300/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text52,local,class=CODE,delta=2,merge=1
	file	"../../../src/LC-meter.c"
	line	76
global __ptext52
__ptext52:	;psect for function _isr
psect	text52
	file	"../../../src/LC-meter.c"
	line	76
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	stack 0
; Regs used in _isr: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+0)
	movf	pclath,w
	movwf	(??_isr+1)
	ljmp	_isr
psect	text52
	line	78
	
i1l3389:	
;LC-meter.c: 78: if(TMR2IF) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u292_21
	goto	u292_20
u292_21:
	goto	i1l260
u292_20:
	line	80
	
i1l3391:	
;LC-meter.c: 80: bres += 256;
	movlw	(0100h >> 8)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(_bres+1)^0180h,f	;volatile
	line	82
;LC-meter.c: 82: if(bres >= 5000) {
	movlw	013h
	subwf	(_bres+1)^0180h,w	;volatile
	movlw	088h
	skipnz
	subwf	(_bres)^0180h,w	;volatile
	skipc
	goto	u293_21
	goto	u293_20
u293_21:
	goto	i1l3409
u293_20:
	line	83
	
i1l3393:	
;LC-meter.c: 83: bres -= 5000;
	movlw	088h
	subwf	(_bres)^0180h,f	;volatile
	movlw	013h
	skipc
	decf	(_bres+1)^0180h,f	;volatile
	subwf	(_bres+1)^0180h,f	;volatile
	line	84
	
i1l3395:	
;LC-meter.c: 84: msecpart++;
	incf	(_msecpart)^0180h,f	;volatile
	skipnz
	incf	(_msecpart+1)^0180h,f	;volatile
	line	85
	
i1l3397:	
;LC-meter.c: 85: msecs++;
	incf	(_msecs)^0180h,f	;volatile
	skipnz
	incf	(_msecs+1)^0180h,f	;volatile
	skipnz
	incf	(_msecs+2)^0180h,f	;volatile
	skipnz
	incf	(_msecs+3)^0180h,f	;volatile
	line	87
;LC-meter.c: 87: RC3 = (((blink > 200)) == 0);
	movlw	0
	subwf	(_blink+1)^0180h,w	;volatile
	movlw	0C9h
	skipnz
	subwf	(_blink)^0180h,w	;volatile
	skipc
	goto	u294_21
	goto	u294_20
	
u294_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7	;volatile
	goto	u295_24
u294_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7	;volatile
u295_24:
	line	88
;LC-meter.c: 88: if(blink >= 400)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(_blink+1)^0180h,w	;volatile
	movlw	090h
	skipnz
	subwf	(_blink)^0180h,w	;volatile
	skipc
	goto	u296_21
	goto	u296_20
u296_21:
	goto	i1l3401
u296_20:
	line	89
	
i1l3399:	
;LC-meter.c: 89: blink -= 400;
	movlw	090h
	subwf	(_blink)^0180h,f	;volatile
	movlw	01h
	skipc
	decf	(_blink+1)^0180h,f	;volatile
	subwf	(_blink+1)^0180h,f	;volatile
	line	90
	
i1l3401:	
;LC-meter.c: 90: ++blink;
	incf	(_blink)^0180h,f	;volatile
	skipnz
	incf	(_blink+1)^0180h,f	;volatile
	line	93
	
i1l3403:	
;LC-meter.c: 93: if(msecpart >= 1000) {
	movlw	03h
	subwf	(_msecpart+1)^0180h,w	;volatile
	movlw	0E8h
	skipnz
	subwf	(_msecpart)^0180h,w	;volatile
	skipc
	goto	u297_21
	goto	u297_20
u297_21:
	goto	i1l3409
u297_20:
	line	95
	
i1l3405:	
;LC-meter.c: 95: seconds++;
	incf	(_seconds)^0180h,f	;volatile
	skipnz
	incf	(_seconds+1)^0180h,f	;volatile
	skipnz
	incf	(_seconds+2)^0180h,f	;volatile
	skipnz
	incf	(_seconds+3)^0180h,f	;volatile
	line	96
	
i1l3407:	
;LC-meter.c: 96: msecpart -= 1000;
	movlw	0E8h
	subwf	(_msecpart)^0180h,f	;volatile
	movlw	03h
	skipc
	decf	(_msecpart+1)^0180h,f	;volatile
	subwf	(_msecpart+1)^0180h,f	;volatile
	line	100
	
i1l3409:	
;LC-meter.c: 97: }
;LC-meter.c: 98: }
;LC-meter.c: 100: TMR2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(97/8),(97)&7	;volatile
	line	108
	
i1l260:	
	movf	(??_isr+1),w
	movwf	pclath
	swapf	(??_isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,90
global	___latbits
___latbits	equ	2
	global	fptotal
fptotal equ 6
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable,__fptable
__fptable:
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__output_putch:
entry__output_putch:
	global	entry__output_putch
	ljmp	_output_putch
	file ""
	line	#
fp__lcd_putch:
entry__lcd_putch:
	global	entry__lcd_putch
	ljmp	_lcd_putch
	file ""
	line	#
fp__format_putchar:
	ljmp	_format_putchar
	global __end_of__fptable
	__end_of__fptable:
	global __size_of__fptable
	__size_of__fptable	equ	__end_of__fptable-__fptable
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end

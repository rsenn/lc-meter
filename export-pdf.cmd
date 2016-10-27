set EAGLE=D:\Programs\EAGLE-7.3.0\bin\eagle.exe
set BRD=eagle\LCmeter0-LCD3310-8pinlcd-PIC-COMP.brd
set PDF=LCmeter0-LCD-8pinlcd-PIC-COMP.pdf
set LAYER=topcopper
pea -c EAGLE=%EAGLE% export %BRD% pdf %PDF%:%LAYER%

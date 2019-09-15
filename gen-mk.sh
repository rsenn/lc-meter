genmakefile -t xc8 -m gmake -D__XC=1 -DUSE_UART=1 -DUSE_TIMER{0,1,2}=1 -DUSE_HD44780_LCD=1 -I. -Ilib -Isrc lib/*.c src/*.c LC-meter.? -o xc8.mk  --no-create-libs

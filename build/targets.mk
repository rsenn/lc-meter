COMMON_SOURCES = format.c timer.c delay.c


#LC_meter_HD44780_SOURCES = LC-meter-HD44780.c lcd44780.c uart.c ser.c
LC_meter_HD44780_SOURCES = LC-meter.c lcd44780.c display.c ser.c
$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_HD44780_LCD=1
$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_SER=1 USE_TIMER0=1
#LC_meter_HD44780_DEFS += -DUSE_UART=1

ifeq ($(SOFTSER),1)
LC_meter_HD44780_SOURCES += softser.c
$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_SOFTSER=1 SOFTSER_BAUD=38400 
endif

$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_TIMER1=1



ifneq ($(BAUD),)
LC_meter_HD44780_DEFS += -DUART_BAUD=$(BAUD)
endif
LC_meter_HD44780_DEFS += $(TIMER_DEFS)


LC_meter_NOKIA3310_SOURCES = LC-meter.c lcd3310.c display.c uart.c ser.c timer.c
LC_meter_NOKIA3310_DEFS = -DUSE_NOKIA3310_LCD=1
LC_meter_NOKIA3310_DEFS += $(TIMER_DEFS)
LC_meter_NOKIA3310_DEFS += -DUSE_SER=1 -DUSE_TIMER0=1


Freq_meter_HD44780_SOURCES = Freq-meter.c lcd44780.c display.c ser.c
Freq_meter_HD44780_DEFS += -DUSE_HD44780_LCD=1
Freq_meter_HD44780_DEFS += -DUSE_SER=1 -DUSE_TIMER0=1

Freq_meter_HD44780_DEFS += -DUART_BAUD=$(BAUD)
Freq_meter_HD44780_DEFS += $(TIMER_DEFS)
Freq_meter_NOKIA3310_SOURCES = Freq-meter.c lcd3310.c display.c ser.c
Freq_meter_NOKIA3310_DEFS += -DUSE_NOKIA3310_LCD=1
Freq_meter_NOKIA3310_DEFS += $(TIMER_DEFS)

serialtest_SOURCES = serialtest.c ser.c lcd44780.c display.c
ifeq ($(filter 10f%,$(chipl)),)
serialtest_DEFS += -DUSE_TIMER0=1 -DUSE_TIMER1=1 -DUSE_SER=1
endif
ifeq ($(filter 10f% 12f%,$(chipl)),)
serialtest_DEFS +=  -DUSE_HD44780_LCD=1 
endif
serialtest_DEFS += -DUART_BAUD=$(BAUD)

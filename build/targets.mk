$(info targets.mk)

COMMON_SOURCES = timer.c delay.c 

SelfClockTest_SOURCES = SelfClockTest.c ser.c
SelfClockTest_DEFS = -DUSE_TIMER0=1 -DUSE_SER=1

ifeq ($(subst 18f25k22,,$(BUILDDIR)),$(BUILDDIR))
USE_SER = -DUSE_SER=1
endif

#LC_meter_HD44780_SOURCES = LC-meter-HD44780.c lcd44780.c ser.c ser.c
LC_meter_HD44780_SOURCES = LC-meter.c measure.c lcd44780.c print.c ser.c buffer.c format.c
$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_HD44780_LCD=1
$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_TIMER0=1
#$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_TIMER1=1 USE_TIMER2=1

LC_meter_HD44780_DEFS += -DUSE_HD44780_LCD=1
#LC_meter_HD44780_DEFS +=  $(USE_SER) 

$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_TIMER0=1

LC_meter_HD44780_DEFS += -DUSE_HD44780_LCD=1
LC_meter_HD44780_DEFS += $(USE_SER) 
LC_meter_HD44780_DEFS +=  -DUSE_TIMER0=1
#LC_meter_HD44780_DEFS +=  -DUSE_TIMER1=1
#LC_meter_HD44780_DEFS +=  -DUSE_TIMER2=1

ifeq ($(SOFTSER),1)
LC_meter_HD44780_SOURCES += softser.c
$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_SOFTSER=1 SOFTSER_BAUD=38400 
LC_meter_HD44780_DEFS += -DUSE_SOFTSER=1 -DSOFTSER_BAUD=38400 
endif

$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_TIMER1=1
LC_meter_HD44780_DEFS += -DUSE_TIMER1=1
$(BUILDDIR)LC_meter_HD44780_$(BUILD_ID).hex: DEFINES += USE_TIMER2=1
LC_meter_HD44780_DEFS += -DUSE_TIMER2=1



ifneq ($(BAUD),)
LC_meter_HD44780_DEFS += -DUART_BAUD=$(BAUD)
endif
LC_meter_HD44780_DEFS += $(TIMER_DEFS)


LC_meter_Nokia5110_SOURCES = LC-meter.c lcd5110.c print.c ser.c ser.c timer.c
LC_meter_Nokia5110_DEFS = -DUSE_NOKIA5110_LCD=1
LC_meter_Nokia5110_DEFS += $(TIMER_DEFS)
LC_meter_Nokia5110_DEFS += $(USE_SER) -DUSE_TIMER0=1
LC_meter_Nokia5110_DEFS += -DUSE_TIMER1=1 -DUSE_TIMER2=1
LC_meter_Nokia5110_CCVER = 9.83

LC_meter_julznc_SOURCES = display.c lcd3310.c main.c ser.c ser.c
LC_meter_julznc_DEFS += -DNO_JULZNC=1   $(USE_SER)
#LC_meter_julznc_CCVER = 9.71a

Freq_meter_HD44780_SOURCES = Freq-meter.c lcd44780.c print.c ser.c delay.c
#Freq_meter_HD44780_DEFS += -DUSE_HD44780_LCD=1
Freq_meter_HD44780_DEFS += -DUSE_TIMER0=1
#Freq_meter_HD44780_DEFS += -DUSE_TIMER1=1
Freq_meter_HD44780_DEFS += -DUSE_TIMER2=1
Freq_meter_HD44780_DEFS += $(USE_SER) 

Freq_meter_HD44780_DEFS += -DUART_BAUD=$(BAUD)
Freq_meter_HD44780_DEFS += $(TIMER_DEFS)
Freq_meter_Nokia5110_SOURCES = Freq-meter.c lcd5110.c print.c ser.c
Freq_meter_Nokia5110_DEFS += -DUSE_NOKIA5110_LCD=1
Freq_meter_Nokia5110_DEFS += $(TIMER_DEFS)


Cap_meter_HD44780_SOURCES = Cap-meter.c lcd44780.c print.c ser.c
#Cap_meter_HD44780_DEFS += -DUSE_HD44780_LCD=1
Cap_meter_HD44780_DEFS += $(USE_SER) -DUSE_TIMER0=1

Cap_meter_HD44780_DEFS += -DUART_BAUD=$(BAUD)
Cap_meter_HD44780_DEFS += $(TIMER_DEFS)

serialtest_SOURCES = serialtest.c ser.c lcd44780.c print.c
ifeq ($(filter 10f%,$(chipl)),)
serialtest_DEFS += -DUSE_TIMER0=1 -DUSE_TIMER1=1 $(USE_SER)
endif
ifeq ($(filter 10f% 12f%,$(chipl)),)
serialtest_DEFS +=  -DUSE_HD44780_LCD=1 
endif
serialtest_DEFS += -DUART_BAUD=$(BAUD)



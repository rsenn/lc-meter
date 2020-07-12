
#CHIPS = 16f628a 16f876a 18f2455 18f2520 18f2550  18f25k50

ifeq ($(COMPILER),htc)
CHIPS = 16f876a 18f2520 18f2550  
else
CHIPS = 16f876a #18f2520 18f2550  18f25k50
endif
CHIPS += 18f2520 18f2550 18f25k22 18f25k50
#CHIPS += 10f206
#CHIPS += 12f1840
COMPILERS ?= xc8
#CHIP = 16F876A

ifeq ($(XTAL),)
#XTAL = 24000000
XTAL = 20000000
endif

ifeq ($(BAUD),)
#BAUD = 19200
#BAUD = 31250
BAUD = 38400
endif

ifeq ($(CHIP),)
CHIP := 16F876A
endif

#ifeq ($(CODE_OFFSET),)
#CODE_OFFSET := 0x0
#endif

#CODE_OFFSET := $(CODE_OFFSET:0x%=%)
#CODE_OFFSET = 0x2000

ifeq ($(CODE_OFFSET),0x0)
CODE_OFFSET := 
endif
ifeq ($(CODE_OFFSET),0x0000)
CODE_OFFSET := 
endif
ifeq ($(CODE_OFFSET),0)
CODE_OFFSET := 
endif


chipu = $(subst a,A,$(subst b,B,$(subst c,C,$(subst d,D,$(subst e,E,$(subst f,F,$(subst g,G,$(subst h,H,$(subst i,I,$(subst j,J,$(subst k,K,$(subst l,L,$(subst m,M,$(subst n,N,$(subst o,O,$(subst p,P,$(subst q,Q,$(subst r,R,$(subst s,S,$(subst t,T,$(subst u,U,$(subst v,V,$(subst w,W,$(subst x,X,$(subst y,Y,$(subst z,Z,$(CHIP)))))))))))))))))))))))))))
chipl = $(subst A,a,$(subst B,b,$(subst C,c,$(subst D,d,$(subst E,e,$(subst F,f,$(subst G,g,$(subst H,h,$(subst I,i,$(subst J,j,$(subst K,k,$(subst L,l,$(subst M,m,$(subst N,n,$(subst O,o,$(subst P,p,$(subst Q,q,$(subst R,r,$(subst S,s,$(subst T,t,$(subst U,u,$(subst V,v,$(subst W,w,$(subst X,x,$(subst Y,y,$(subst Z,z,$(CHIP)))))))))))))))))))))))))))


MHZ := $(shell echo "$(XTAL) / 1000000" | bc -l | sed "s|0*$$|| ;; s|\.$$|| ;; s|\.|,|g")
KBPS := $(shell echo "$(BAUD) / 1000" |bc -l | sed "s|0*$$|| ;; s|\.$$|| ;; s|\..*||g")

ifeq ($(PROGRAMS),)
#PROGRAMS := LC_meter_julznc #LC_meter_HD44780 Freq_meter_HD44780 serialtest
#PROGRAMS := LC_meter_HD44780 Freq_meter_HD44780 Cap_meter_HD44780 serialtest LC_meter_julznc
PROGRAMS := LC_meter_HD44780 Cap_meter_HD44780 Freq_meter_HD44780
endif

ifeq ($(PROGRAM),)
PROGRAM := LC_meter_HD44780
endif

ifneq ($(CODE_OFFSET),)
BUILD_ID := $(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps$(if $(CODE_OFFSET),_at$(CODE_OFFSET))
else
BUILD_ID := $(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps
endif

LC_meter_HD44780_SOURCES = LC-meter.c measure.c buffer.c format.c print.c timer.c lcd44780.c ser.c uart.c softser.c
LC_meter_HD44780_DEFS += -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER2=1 -DUSE_SER=1

Cap_meter_HD44780_SOURCES = Cap-meter.c  buffer.c format.c print.c timer.c lcd44780.c ser.c uart.c softser.c
Cap_meter_HD44780_DEFS += -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUSE_UART=1


Freq_meter_HD44780_SOURCES = Freq-meter.c  buffer.c format.c print.c timer.c lcd44780.c ser.c uart.c softser.c
Freq_meter_HD44780_DEFS += -DUSE_HD44780_LCD=1 -DUSE_TIMER0=1 -DUSE_TIMER2=1 -DUSE_SER=1 -DUSE_SOFTSER=1 -DUSE_UART=1


ifeq ($(_DEBUG),1)
BUILD_TYPE = debug
else
BUILD_TYPE = release
endif
ifeq ($(COMPILER),)
COMPILER := htc xc8
endif
ifeq ($(BUILDDIR),)
BUILDDIR := bin/$(COMPILER)-$(chipl)/
endif
ifeq ($(OBJDIR),)
#OBJDIR := obj/$(COMPILER)-$(chipl)/$(BUILD_ID)/$(PROGRAM)/
OBJDIR := $(BUILDDIR:bin/%=obj/%)$(BUILD_ID)/
endif

vpath lib src src/julznc $(OBJDIR) $(BUILDDIR)
VPATH = lib src src/julznc $(OBJDIR) $(BUILDDIR)

#DEFINES += PIC$(chipu)=1
DEFINES += __$(chipl)=1


ifeq ($(BUILD_TYPE),debug)
DEFINES += _DEBUG=1 _DEBUG=1
else
DEFINES += NDEBUG=1 __NDEBUG=1
endif

ifneq ($(XTAL),)
DEFINES += _XTAL_FREQ=$(XTAL)
endif

ifneq ($(BAUD),)
DEFINES += UART_BAUD=$(BAUD)
endif

INCLUDE_DIRS += . lib src
#CPPFLAGS += $(addprefix -I../,$(INCLUDE_DIRS))
CPPFLAGS += $(addprefix -I,$(INCLUDE_DIRS))

get-list = $(if $(value $(1)S),$(value $(1)S),$(value $(1)))
is-list = $(if $(subst 1,,$(subst 0,,$(words $(call get-list,$(1))))),$(call get-list,$(1)),)


HEXFILE = $(BUILDDIR)$(PROGRAM)_$(BUILD_ID).hex

TIMER_DEFS += -DUSE_TIMER0=1 -DUSE_TIMER2=1

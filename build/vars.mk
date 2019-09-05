
CHIPS = 16f876a 18f2455 18f2550 18f2520 #18f25k22   #18f25k50
#CHIPS = 16f876a 18f252 
#CHIPS += 10f206
#CHIPS += 12f1840
COMPILERS = htc xc8 sdcc
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

ifeq ($(CODEOFFSET),)
CODEOFFSET := 0x0
endif

CODEOFFSET := $(CODEOFFSET:0x%=%)
#CODEOFFSET = 0x200

chipu = $(subst a,A,$(subst b,B,$(subst c,C,$(subst d,D,$(subst e,E,$(subst f,F,$(subst g,G,$(subst h,H,$(subst i,I,$(subst j,J,$(subst k,K,$(subst l,L,$(subst m,M,$(subst n,N,$(subst o,O,$(subst p,P,$(subst q,Q,$(subst r,R,$(subst s,S,$(subst t,T,$(subst u,U,$(subst v,V,$(subst w,W,$(subst x,X,$(subst y,Y,$(subst z,Z,$(CHIP)))))))))))))))))))))))))))
chipl = $(subst A,a,$(subst B,b,$(subst C,c,$(subst D,d,$(subst E,e,$(subst F,f,$(subst G,g,$(subst H,h,$(subst I,i,$(subst J,j,$(subst K,k,$(subst L,l,$(subst M,m,$(subst N,n,$(subst O,o,$(subst P,p,$(subst Q,q,$(subst R,r,$(subst S,s,$(subst T,t,$(subst U,u,$(subst V,v,$(subst W,w,$(subst X,x,$(subst Y,y,$(subst Z,z,$(CHIP)))))))))))))))))))))))))))


MHZ := $(shell echo "$(XTAL) / 1000000" | bc -l | sed "s|0*$$|| ;; s|\.$$|| ;; s|\.|,|g")
KBPS := $(shell echo "$(BAUD) / 1000" |bc -l | sed "s|0*$$|| ;; s|\.$$|| ;; s|\..*||g")

ifeq ($(PROGRAMS),)
#PROGRAMS := LC_meter_julznc #LC_meter_HD44780 Freq_meter_HD44780 serialtest
PROGRAMS := LC_meter_HD44780 Freq_meter_HD44780 Cap_meter_HD44780 serialtest LC_meter_julznc
endif
ifeq ($(PROGRAM),)
PROGRAM := LC_meter_HD44780
endif

ifneq ($(CODEOFFSET),0)
BUILD_ID := $(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_at$(CODEOFFSET)
else
BUILD_ID := $(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps
endif


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
OBJDIR := obj/$(COMPILER)-$(chipl)/$(BUILD_ID)/$(PROGRAM)/
#OBJDIR := $(BUILDDIR)$(BUILD_ID)/
endif

vpath lib src src/julznc $(OBJDIR) $(BUILDDIR)
VPATH = lib src src/julznc $(OBJDIR) $(BUILDDIR)

DEFINES = PIC$(chipu)=1 __$(chipl)=1


ifeq ($(BUILD_TYPE),debug)
DEFINES += __DEBUG=1 _DEBUG=1
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

TIMER_DEFS += -DUSE_TIMER0=1

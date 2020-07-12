VERSION_MAJOR = 0
VERSION_MINOR = 9
VERSION_PATCH = 1

COMPILER = sdcc

-include build/vars.mk
-include build/targets.mk

TIMER_DEFS := -DUSE_TIMER0=1


ifeq ($(PROGRAM),)
PROGRAM := pictest
endif



define nl = 
$(empty)
$(empty)
endef

#BUILDDIR = build/sdcc-$(chipl)/
#OBJDIR = $(BUILDDIR)$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps/

VERSION = $(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_PATCH)

CCVER = 3.6.0

PROGRAMFILES = C:/Program\ Files

OS = $(shell uname -o)

SDCC = $(shell which sdcc 2>/dev/null)

ifeq ($(SDCC),)
ifeq ($(OS),GNU/Linux)
CCDIR = /usr
else
CCDIR = $(PROGRAMFILES)/SDCC
endif
endif


ifeq ($(COMPILER),sdcc)
#ifneq ($(CHIP),$(subst 18f,,$(CHIP)))
#COMPILER_NAME = picc18
#else
COMPILER_NAME = sdcc
#endif
else
COMPILER_NAME = picc
endif

#ifneq ($(CCDIR),)
#SDCC = "$(CCDIR)/bin/$(COMPILER_NAME)"
#else
SDCC = $(COMPILER_NAME)
#endif

ifeq ($(strip $(SDCC)),)
SDCC = picc
endif

CPP = $(CCDIR)/bin/cpp
INCDIR = $(CCDIR)/include
#INCDIR := $(dir $(dir $(shell which picc)))/include

LD = $(SDCC)
#RM = del /f
DISTFILES = Makefile build/sdcc.mk build/sdcc.mk

OPT = speed

DEFINES += __SDCC__=1

SOURCES =  $(COMMON_SOURCES) $($(subst -,_,$(PROGRAM))_SOURCES)
COMMON_FLAGS += $($(subst -,_,$(PROGRAM))_DEFS) $(DEFINES:%=-D%)
OBJECTS = $(patsubst %,$(OBJDIR)%,$(notdir $(patsubst %.c,%.o,$(SOURCES))))
ASSRCS = $(SOURCES:%.c=$(OBJDIR)%.s)
PREPROCESSED = $(SOURCES:%.c=$(OBJDIR)%.e)

ifneq ($(CODE_OFFSET),0x0000)
ifneq ($(CODE_OFFSET),0)
ifneq ($(CODE_OFFSET),)
#LDFLAGS += --code-loc=$$(($(CODE_OFFSET)))
endif
endif
endif
#
ifeq ($(OPT),speed)
OPT_SPEED = --opt-code-speed
endif
ifeq ($(OPT),space)
OPT_SPEED = --opt-code-size
endif

ifeq ($(BUILD_TYPE),debug)
COMMON_FLAGS += --debug
#COMMON_FLAGS += -D_DEBUG=1
else
COMMON_FLAGS += 
COMMON_FLAGS +=  -DNDEBUG=1
endif

#CPPFLAGS += $($(subst -,_,$(PROGRAM))_DEFS)
#CPPFLAGS += $(DEFINES:%=-D%)
CPPFLAGS += $(sort $(COMMON_FLAGS))

_CPPFLAGS += \
	-DVERSION_MAJOR=$(VERSION_MAJOR) \
	-DVERSION_MINOR=$(VERSION_MINOR) \
	-DVERSION_PATCH=$(VERSION_PATCH)

CFLAGS = --use-non-free
CFLAGS += $(EXTRA_CFLAGS)


ifneq ($(chipl),$(chipl:16f%=%))
CFLAGS +=
else
CFLAGS +=
endif

PIC_TYPE := $(shell echo $(chipl) | head -c 3)
ifeq ($(PIC_TYPE),16f)
CFLAGS += -mpic14
LIBS += -llibm.lib
endif
ifeq ($(PIC_TYPE),18f)
CFLAGS += -mpic16
LIBS += -llibm18f.lib
endif


$(info LIBS: $(LIBS))
CFLAGS += -p$(chipl)

#LDFLAGS += --summary="default,-psect,-class,+mem,-hex,-file"
#
#LDFLAGS += --runtime="default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,+download,+clib"
#LDFLAGS += --output="-mcof,+elf"
#LDFLAGS += --stack=compiled
#
#
#LDFLAGS += --output="default,-inhx032"
#LDFLAGS += --chip=$(chipl)
#LDFLAGS +=  --asmlist

PM3CMD = "$$PROGRAMFILES"/Microchip/MPLAB\ IDE/Programmer\ Utilities/PM3Cmd/PM3Cmd

COFFILE = $(subst .hex,.cof,$(HEXFILE))

#-include build/vars.mk

.PHONY: all dist prototypes
#CPP_CONFIG = obj/sdcc-cpp.config

all: $(BUILDDIR) $(OBJDIR) $(CPP_CONFIG) output

output: $(HEXFILE) #$(COFFILE)
	@for F in $(HEXFILE) $(COFFILE); do \
	  echo "Output file '$(C_RED)$$F$(C_OFF)' built..." 1>&2; \
	 done

dist:
	mkdir -p $(PROGRAM)-$(VERSION)
	cp -rvf $(DISTFILES) $(PROGRAM)-$(VERSION)
	tar -cvzf $(PROGRAM)-$(VERSION).tar.gz $(PROGRAM)-$(VERSION)

$(HEXFILE): $(OBJECTS)
	@-$(RM) $(HEXFILE) $(COFFILE)
	$(SDCC) $(LDFLAGS) $(CFLAGS) -o $@ $^ $(LIBS)
	#sed -i 's/^:02400E00\(....\)\(..\)/:02400E0072FF32/' $(HEXFILE)
	@-(type cygpath 2>/dev/null >/dev/null && PATHTOOL="cygpath -w"; \
	 test -f "$$PWD/$(HEXFILE)" && { echo; echo "Got HEX file: `$${PATHTOOL:-echo} $$PWD/$(HEXFILE)`"; })

#$(OBJECTS): $(OBJDIR)%.o: lib/%.c
#	$(SDCC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

$(OBJECTS): $(OBJDIR)%.o: %.c
	$(SDCC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

$(ASSRCS): $(OBJDIR)%.s: %.c
	$(SDCC) $(CFLAGS) $(CPPFLAGS) -S -o $@ $<
		$(SDCC) $(CFLAGS) $(CPPFLAGS) -c -o $@ $<

$(PREPROCESSED): $(OBJDIR)%.e: %.c
	$(SDCC) $(CFLAGS) $(CPPFLAGS) -E -o $@ $<

prototypes:
	cproto -DHI_TECH_C=1 -E '$(CPP)' $(CPPFLAGS) $(SOURCES) 2>/dev/null
ifneq ($(CCDIR),)
prototypes: CPPFLAGS += -I'$(CCDIR)/include'
endif


-include build/common.mk

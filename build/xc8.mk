
VERSION_MAJOR = 0
VERSION_MINOR = 9
VERSION_PATCH = 1

COMPILER = xc8

-include build/vars.mk

ifeq ($(PROGRAM),)
PROGRAM := pictest
endif

define nl =
$(empty)
$(empty)
endef

#BUILDDIR = build/xc8-$(chipl)/
#OBJDIR = $(BUILDDIR)$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps/

VERSION = $(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_PATCH)

CCVER = v1.34

PROGRAMFILES ?= C:/Program Files (x86)

OS = $(shell uname -o)

#PICC = $(shell which picc 2>/dev/null)
ifeq ($(OS),GNU/Linux)
PICC = /opt/microchip/xc8/v1.34/bin/xc8
endif

ifeq ($(PICC),)
ifeq ($(OS),GNU/Linux)
CCDIR = /opt/microchip/xc8/v1.34
else
#CCDIR = $(patsubst %/bin,%,$(dir $(PICC)))
CCDIR = $(PROGRAMFILES)/Microchip/xc8/$(CCVER)
CCDIR := 
endif
endif


ifeq ($(COMPILER),xc8)
#ifneq ($(CHIP),$(subst 18f,,$(CHIP)))
#COMPILER_NAME = picc18
#else
COMPILER_NAME = xc8
#endif
else
COMPILER_NAME = picc
endif

ifneq ($(PICC),)

else
ifneq ($(CCDIR),)
PICC = "$(CCDIR)/bin/$(COMPILER_NAME)"
else
PICC = $(COMPILER_NAME)
endif
endif

ifeq ($(strip $(PICC)),)
PICC = picc
endif

CPP = $(CCDIR)/bin/cpp
INCDIR = $(CCDIR)/include
#INCDIR := $(dir $(dir $(shell which picc)))/include

LD = $(PICC)
#RM = del /f
DISTFILES = Makefile build/xc8.mk build/sdcc.mk

OPT = space

#DEFINES += HI_TECH_C=1

SOURCES = $($(PROGRAM)_SOURCES) $(COMMON_SOURCES)
COMMON_FLAGS += $($(PROGRAM)_DEFS)
P1OBJS = $(SOURCES:%.c=$(OBJDIR)%.p1)
ASSRCS = $(SOURCES:%.c=$(OBJDIR)%.as)

COMMON_FLAGS += -g
COMMON_FLAGS += -N127

#COMMON_FLAGS += --runtime="default,+clear,+init,-keep,+osccal,+download,-resetbits,+clib"
#COMMON_FLAGS += --runtime="default,-clear,+init,+keep,-osccal,+download,+resetbits,+clib"
COMMON_FLAGS += --runtime="default,+init,+osccal,+download,+clib"

ifneq ($(CODE_OFFSET),0)
ifneq ($(CODE_OFFSET),0x0000)
ifneq ($(CODE_OFFSET),)
LDFLAGS += --codeoffset=$(CODE_OFFSET)
endif
endif
endif

ifeq ($(OPT),speed)
OPT_SPEED = ,+speed,-space,9
endif
ifeq ($(OPT),space)
OPT_SPEED = ,+speed,-space,9
endif

ifneq ($(DEBUG),1)
COMMON_FLAGS += --opt="default,+asm,-debug$(OPT_SPEED)"
#COMMON_FLAGS += -D__DEBUG=1
else
COMMON_FLAGS += -G --opt="default,+asm,+debug$(OPT_SPEED)"
COMMON_FLAGS +=  -DNDEBUG=1
endif

COMMON_FLAGS += --debugger=icd2


COMMON_FLAGS += --double=32 --float=24

COMMON_FLAGS += --warn=9
COMMON_FLAGS += --asmlist

COMMON_FLAGS += --mode=pro

#COMMON_FLAGS += --errformat="Error   [%n] %f; %l.%c %s"
#COMMON_FLAGS += --msgformat="Advisory[%n] %s"
#COMMON_FLAGS += --warnformat="Warning [%n] %f; %l.%c %s"
COMMON_FLAGS += #--errformat="\n\n%f:%l: error: (%n) %s"
COMMON_FLAGS += --warnformat="%f:%l: warning: (%n) %s"
COMMON_FLAGS += --msgformat="%f:%l: advisory: (%n) %s"
#COMMON_FLAGS += -E1
#COMMON_FLAGS += -P
#COMMON_FLAGS += -V

CPPFLAGS += $(DEFINES:%=-D%)

_CPPFLAGS += \
	-DVERSION_MAJOR=$(VERSION_MAJOR) \
	-DVERSION_MINOR=$(VERSION_MINOR) \
	-DVERSION_PATCH=$(VERSION_PATCH)

CFLAGS = -q --chip=$(chipl) $(COMMON_FLAGS)

LDFLAGS += --summary=default,-psect,-class,+mem,-hex,-file

LDFLAGS += --runtime=default,+clear,+init,-keep,-no_startup,-osccal,-resetbits,+download,+clib
LDFLAGS += --output=-mcof,+elf
LDFLAGS += --stack=compiled


LDFLAGS += --output="default,-inhx032"
LDFLAGS += --chip=$(chipl)
LDFLAGS +=  --asmlist

PM3CMD = "$$PROGRAMFILES"/Microchip/MPLAB\ IDE/Programmer\ Utilities/PM3Cmd/PM3Cmd

COFFILE = $(subst .hex,.cof,$(HEXFILE))

#-include build/vars.mk

.PHONY: all dist prototypes
#CPP_CONFIG = obj/xc8-cpp.config

all: $(BUILDDIR) $(OBJDIR) $(CPP_CONFIG) output

ifneq ($(CPP_CONFIG),)
$(CPP_CONFIG): build/xc8.mk
	rm -f "$@"; set --  -DHI_TECH_C=1 -D__PICCPRO__=1 -D__PICC__=1 -D__XC=1 -D__XC__=1 -D__XC8=1 -D__XC8__=1 -p1 --c++11 --disambiguate=0 -S "$(CCDIR)/include"; for LINE; do case "$$LINE" in \
	 *\ *[\\/]*) LINE="\"$$LINE\"" ;; esac; echo "$$LINE"; done >"$@"
endif

output: $(HEXFILE) #$(COFFILE)
	-mkdir -p $(BUILDDIR)
	@for F in $(HEXFILE) $(COFFILE); do \
	  echo "Output file '$(C_RED)$$F$(C_OFF)' built..." 1>&2; \
	 done

dist:
	mkdir -p $(PROGRAM)-$(VERSION)
	cp -rvf $(DISTFILES) $(PROGRAM)-$(VERSION)
	tar -cvzf $(PROGRAM)-$(VERSION).tar.gz $(PROGRAM)-$(VERSION)

$(HEXFILE): $(P1OBJS)
	-mkdir -p $(BUILDDIR)
	@-$(RM) $(HEXFILE) $(COFFILE)
	$(LD) $(LDFLAGS) -m$(BUILDDIR)$(PROGRAM)_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.map -o$@ $^
	#sed -i 's/^:02400E00\(....\)\(..\)/:02400E0072FF32/' $(HEXFILE)
	@-(type cygpath 2>/dev/null >/dev/null && PATHTOOL="cygpath -w"; \
	 test -f "$$PWD/$(HEXFILE)" && { echo; echo "Got HEX file: `$${PATHTOOL:-echo} $$PWD/$(HEXFILE)`"; })

$(P1OBJS): $(OBJDIR)%.p1: %.c
	-mkdir -p $(OBJDIR)
#	(cd obj; $(PICC) --pass1 $(CFLAGS) $(CPPFLAGS:-I%=-I../%) --outdir=$(OBJDIR:obj/%/=%)  ../$< #; R=$$?; echo; exit $$R)
	(cd obj; $(SHELL) ../scripts/xc8.sh -v $(if $(CPP_CONFIG),@$(CPP_CONFIG:obj/%=%),) $(PICC) --pass1 $(CFLAGS) $(CPPFLAGS:-I%=-I../%) --outdir=$(OBJDIR:obj/%/=%)  ../$<)
#	$(PICC) --pass1 $(CFLAGS) $(CPPFLAGS) -o$(<:%.c=$(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.p1) $<

$(ASSRCS): $(OBJDIR)%.as: %.c
	-mkdir -p $(OBJDIR)
	$(PICC) -S $(CFLAGS) $(CPPFLAGS) --outdir=$(OBJDIR:%/=%) $<

prototypes:
	cproto -DHI_TECH_C=1 -E '$(CPP)' $(CPPFLAGS) $(SOURCES) 2>/dev/null
ifneq ($(CCDIR),)
prototypes: CPPFLAGS += -I'$(CCDIR)/include'
endif


-include build/common.mk

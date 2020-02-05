ifeq ($(PROGRAM),)
PROGRAM ?= pictest
endif

VERSION_MAJOR = 0
VERSION_MINOR = 9
VERSION_PATCH = 1

COMPILER := htc
DEBUGGER ?= pickit3

-include build/vars.mk
-include build/targets.mk

VERSION = $(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_PATCH)

PROGRAMFILES = C:/Program Files (x86)

OS := $(shell uname -o)
$(info OS: $(OS))
$(info CHIP: $(CHIP))
#CC = $(shell which picc 2>/dev/null)



ifneq ($(CHIP),$(subst 18f,,$(CHIP)))
COMPILER_NAME = picc18
COMPILER_DIR = picc-18/pro
CCVER := 9.66
PIC18 = true
DEFINES += __PICC18__=1
else
COMPILER_NAME = picc
ifeq ($(OS),GNU/Linux)
COMPILER_DIR = picc
else
COMPILER_DIR = PICC
endif
#CCVER = PRO/9.60
CCVER = 9.83
#CCVER := 9.71a
endif

ifneq ($($(subst -,_,$(PROGRAM))_CCVER),)
CCVER := $($(subst -,_,$(PROGRAM))_CCVER)
endif


ifeq ($(COMPILER_NAME),picc18)
CCVER := 9.66
endif


ifeq ($(CCDIR),)
ifeq ($(OS),GNU/Linux)
CCDIR := /opt/hitech/$(COMPILER_DIR)/$(CCVER)
else
CCDIR := $(PROGRAMFILES)/HI-TECH Software/$(COMPILER_DIR)/$(CCVER)
endif
endif


ifneq ($(CCDIR),)
CC := "$(CCDIR)/bin/$(COMPILER_NAME)"
else
CC = $(COMPILER_NAME)
endif

$(info CC: $(CC))
$(info CCVER: $(CCVER))

$(info COMPILER_NAME: $(COMPILER_NAME))

#ifeq ($(strip $(CC)),)
#CC = picc
#endif
#
CPP = $(CCDIR)/bin/cpp
INCDIR = $(CCDIR)/include
#INCDIR := $(dir $(dir $(shell which picc)))/include

LD = $(CC)
#RM = del /f
DISTFILES = Makefile build/htc.mk build/sdcc.mk

OPT = speed

#DEFINES += HI_TECH_C=1

SOURCES := $($(subst -,_,$(PROGRAM))_SOURCES) $(COMMON_SOURCES)
COMMON_FLAGS += $($(subst -,_,$(PROGRAM))_DEFS)
DEPENDS := $(SOURCES:%.c=$(OBJDIR)%.dep)
P1OBJS = $(SOURCES:%.c=$(OBJDIR)%.p1)
ASSRCS = $(SOURCES:%.c=$(OBJDIR)%.as)

COMMON_FLAGS += -N127
#COMMON_FLAGS += --scandep

#COMMON_FLAGS += --runtime=default
#COMMON_FLAGS += --runtime=default

ifneq ($(PIC18),true)
STACKCALL = ,+stackcall
endif

COMMON_FLAGS += --runtime=default$(STACKCALL)

ifneq ($(CCVER),9.60)

ifeq ($(OPT),speed)
OPT_SPEED = ,-space,+speed
endif
ifeq ($(OPT),space)
OPT_SPEED = ,-speed,+space
endif
endif
OPTLEVEL := 9
OPT_SPEED := $(OPT_SPEED),$(OPTLEVEL)

ifeq ($(BUILD_TYPE),debug)
 ifeq ($(PIC18),true)
  OPT_DEBUG :=
 else
#  OPT_DEBUG := ,+debug
 endif
 _DEBUG := 1
endif

#COMMON_FLAGS +=  -V

ifeq ($(_DEBUG),1)
COMMON_FLAGS += -G $(if $(DEBUGGER),--debugger="$(DEBUGGER),)"
COMMON_FLAGS += --opt=default$(OPT_DEBUG)
else
COMMON_FLAGS += --opt="default,+asm$(OPT_SPEED)"
endif

COMMON_FLAGS += --double=32 
#COMMON_FLAGS += --float=32

COMMON_FLAGS += --warn=3
#COMMON_FLAGS += --codeoffset=$(CODE_OFFSET)

ifneq ($(CODE_OFFSET),)
LDFLAGS += --codeoffset=$(CODE_OFFSET)
endif

#COMMON_FLAGS += --mode=PRO

COMMON_FLAGS += --errformat="Error   [%n] %f; %l.%c %s"
#COMMON_FLAGS += --msgformat="Advisory[%n] %s"
#COMMON_FLAGS += --warnformat="Warning [%n] %f; %l.%c %s"

CPPFLAGS += $(DEFINES:%=-D%)

CPPFLAGS += -DHI_TECH_C=1
_CPPFLAGS += \
	-DVERSION_MAJOR=$(VERSION_MAJOR) \
	-DVERSION_MINOR=$(VERSION_MINOR) \
	-DVERSION_PATCH=$(VERSION_PATCH)

CFLAGS = -q --chip=$(chipl) $(COMMON_FLAGS)

_LDFLAGS += --summary="default,-psect,-class,+mem,-hex"

#LDFLAGS += --output="default,-inhx032"
LDFLAGS += --chip=$(chipl)
LDFLAGS +=  --asmlist

PM3CMD = "$$PROGRAMFILES"/Microchip/MPLAB\ IDE/Programmer\ Utilities/PM3Cmd/PM3Cmd

COFFILE = $(subst .hex,.cof,$(HEXFILE))

DEPS := $(CC) --scandep $(SOURCES)

$(info DEPS: $(DEPS))

#-include build/vars.mk

.PHONY: all clean dist prototypes

all: $(BUILDDIR) $(OBJDIR) $(DEPENDS) output

output: $(HEXFILE) #$(COFFILE)
	-mkdir -p $(BUILDDIR)
	@for F in $(HEXFILE) $(COFFILE); do \
	  echo "Output file '$(C_RED)$$F$(C_OFF)' built..." 1>&2; \
	 done

dist:
	mkdir -p $(PROGRAM)-$(VERSION)
	cp -rvf $(DISTFILES) $(PROGRAM)-$(VERSION)
	tar -cvzf $(PROGRAM)-$(VERSION).tar.gz $(PROGRAM)-$(VERSION)

$(HEXFILE): $(P1OBJS) | $(BUILDDIR) $(OBJDIR)
	-mkdir -p $(BUILDDIR)
	$(RM) $(HEXFILE) $(COFFILE)
	$(LD) $(LDFLAGS) -m$(BUILDDIR)$(PROGRAM)_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.map -o$@ $^
	#(cd bin; $(LD) $(LDFLAGS) -m$(BUILDDIR:bin/%=%)$(PROGRAM)_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.map -o$(@:bin/%=%) $(^:%=../%))
	-(type cygpath 2>/dev/null >/dev/null && PATHTOOL="cygpath -w"; \
	 test -f "$$PWD/$(HEXFILE)" && { echo; echo "Got HEX file: `$${PATHTOOL:-echo} $$PWD/$(HEXFILE)`"; })

$(P1OBJS): $(OBJDIR)%.p1: %.c
	-mkdir -p $(OBJDIR)
	(cd obj; mkdir -p $(OBJDIR:obj/%/=%); $(CC) --pass1 $(CFLAGS) $(CPPFLAGS:-I%=-I../%) --outdir=$(OBJDIR:obj/%/=%) ../$<)
#	$(CC) --pass1 $(CFLAGS) $(CPPFLAGS) -o$(<:%.c=$(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.p1) $<

$(DEPENDS): $(OBJDIR)%.dep: %.c
	-mkdir -p $(OBJDIR)
	(cd obj; mkdir -p $(OBJDIR:obj/%/=%); $(CC) --scandep $(CFLAGS) $(CPPFLAGS:-I%=-I../%) --outdir=$(OBJDIR:obj/%/=%) ../$<); \
	 sed  '/:/d; s,[\\\\],/,g ; s|^\.\./||;  /[ ()]/ s,.*,"&",' <"$@" | sed ':lp; N; $$! { b lp }; s,\n, ,g; s|^|$(patsubst %.c,$(OBJDIR)/%.p1,$(notdir $<)): |;  s|/\+|/|g'  >"$(@:%.dep=%.d)"

#	$(CC) --pass1 $(CFLAGS) $(CPPFLAGS) -o$(<:%.c=$(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.p1) $<

$(ASSRCS): $(OBJDIR)%.as: %.c
	-mkdir -p $(OBJDIR)
	$(CC) -S $(CFLAGS) $(CPPFLAGS) --outdir=$(OBJDIR:%/=%) $<

prototypes:
	cproto -DHI_TECH_C=1 -E '$(CPP)' $(CPPFLAGS) $(SOURCES) 2>/dev/null
ifneq ($(CCDIR),)
prototypes: CPPFLAGS += -I'$(CCDIR)/include'
endif

-include $(DEPENDS:%.dep=%.d)
-include build/common.mk

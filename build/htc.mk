ifeq ($(PROGRAM),)
PROGRAM ?= pictest
endif

VERSION_MAJOR = 0
VERSION_MINOR = 9
VERSION_PATCH = 1

COMPILER := htc

-include build/vars.mk

VERSION = $(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_PATCH)

PROGRAMFILES = C:/Program Files (x86)

OS = $(shell uname -o)
$(info OS: $(OS))
#CC = $(shell which picc 2>/dev/null)

ifneq ($(CHIP),$(CHIP:18%=%))
COMPILER_NAME = picc18
COMPILER_DIR = picc-18/pro
CCVER = 9.66
PIC18 = true
DEFINES += __PICC18__=1
else
COMPILER_NAME = picc
COMPILER_DIR = picc
CCVER = 9.83
endif

ifeq ($(CCDIR),)
ifeq ($(OS),GNU/Linux)
CCDIR = /opt/hitech/$(COMPILER_DIR)/$(CCVER)
else
CCDIR = $(PROGRAMFILES)/HI-TECH Software/$(COMPILER_DIR)/$(CCVER)
endif
endif


ifneq ($(CCDIR),)
CC = "$(CCDIR)/bin/$(COMPILER_NAME)"
else
CC = $(COMPILER_NAME)
endif

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

OPT = space

#DEFINES += HI_TECH_C=1

COMMON_FLAGS += $($(PROGRAM)_DEFS)
SOURCES := $($(PROGRAM)_SOURCES)
DEPENDS := $(SOURCES:%.c=$(OBJDIR)%.dep)
P1OBJS = $(SOURCES:%.c=$(OBJDIR)%.p1)
ASSRCS = $(SOURCES:%.c=$(OBJDIR)%.as)

COMMON_FLAGS += -N127
#COMMON_FLAGS += --scandep

#COMMON_FLAGS += --runtime="default,+clear,+init,-keep,+osccal,+download,-resetbits,-stackcall,+clib"
#COMMON_FLAGS += --runtime="default,-clear,+init,+keep,-osccal,+download,+resetbits,-stackcall,+clib"
COMMON_FLAGS += --runtime="default,+init,+download,+clib"



ifeq ($(OPT),speed)
OPT_SPEED = ,+speed,-space,9
endif
ifeq ($(OPT),space)
OPT_SPEED = ,+speed,-space,9
endif

ifeq ($(BUILD_TYPE),debug)

ifeq ($(PIC18),true)
OPT_DEBUG :=
else
OPT_DEBUG := ,+debug
endif
_DEBUG := 1
endif

#COMMON_FLAGS +=  -V

ifeq ($(_DEBUG),1)
COMMON_FLAGS += -G --debugger=pickit2
COMMON_FLAGS += --opt=default$(OPT_DEBUG)
else
COMMON_FLAGS += --opt="default,+asm$(OPT_SPEED)"
endif

COMMON_FLAGS += --double=32 
#COMMON_FLAGS += --float=24

COMMON_FLAGS += --warn=3
#COMMON_FLAGS += --codeoffset=$(CODEOFFSET)
LDFLAGS += --codeoffset=$(CODEOFFSET)

#COMMON_FLAGS += --mode=PRO

COMMON_FLAGS += --errformat="Error   [%n] %f; %l.%c %s"
#COMMON_FLAGS += --msgformat="Advisory[%n] %s"
#COMMON_FLAGS += --warnformat="Warning [%n] %f; %l.%c %s"

CPPFLAGS += $(DEFINES:%=-D%)

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
	@for F in $(HEXFILE) $(COFFILE); do \
	  echo "Output file '$(C_RED)$$F$(C_OFF)' built..." 1>&2; \
	 done

dist:
	mkdir -p $(PROGRAM)-$(VERSION)
	cp -rvf $(DISTFILES) $(PROGRAM)-$(VERSION)
	tar -cvzf $(PROGRAM)-$(VERSION).tar.gz $(PROGRAM)-$(VERSION)

$(HEXFILE): $(P1OBJS)
	$(RM) $(HEXFILE) $(COFFILE)
	$(LD) $(LDFLAGS) -m$(BUILDDIR)$(PROGRAM)_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.map -o$@ $^
	#(cd bin; $(LD) $(LDFLAGS) -m$(BUILDDIR:bin/%=%)$(PROGRAM)_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.map -o$(@:bin/%=%) $(^:%=../%))
	-(type cygpath 2>/dev/null >/dev/null && PATHTOOL="cygpath -w"; \
	 test -f "$$PWD/$(HEXFILE)" && { echo; echo "Got HEX file: `$${PATHTOOL:-echo} $$PWD/$(HEXFILE)`"; })

$(P1OBJS): $(OBJDIR)%.p1: %.c
	(cd obj; $(CC) --pass1 $(CFLAGS) $(CPPFLAGS:-I%=-I../%) --outdir=$(OBJDIR:obj/%/=%) ../$<)
#	$(CC) --pass1 $(CFLAGS) $(CPPFLAGS) -o$(<:%.c=$(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.p1) $<

$(DEPENDS): $(OBJDIR)%.dep: %.c
	(cd obj; $(CC) --scandep $(CFLAGS) $(CPPFLAGS:-I%=-I../%) --outdir=$(OBJDIR:obj/%/=%) ../$<); \
	 sed  '/:/d; s,[\\\\],/,g ; s|^\.\./||;  /[ ()]/ s,.*,"&",' <"$@" | sed ':lp; N; $$! { b lp }; s,\n, ,g; s|^|$(patsubst %.c,$(OBJDIR)/%.p1,$(notdir $<)): |;  s|/\+|/|g'  >"$(@:%.dep=%.d)"

#	$(CC) --pass1 $(CFLAGS) $(CPPFLAGS) -o$(<:%.c=$(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.p1) $<

$(ASSRCS): $(OBJDIR)%.as: %.c
	$(CC) -S $(CFLAGS) $(CPPFLAGS) --outdir=$(OBJDIR:%/=%) $<

prototypes:
	cproto -DHI_TECH_C=1 -E '$(CPP)' $(CPPFLAGS) $(SOURCES) 2>/dev/null
ifneq ($(CCDIR),)
prototypes: CPPFLAGS += -I'$(CCDIR)/include'
endif

-include $(DEPENDS:%.dep=%.d)
-include build/common.mk

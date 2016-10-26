PACKAGE = LC_meter
VERSION_MAJOR = 0
VERSION_MINOR = 9
VERSION_PATCH = 1

CHIP = 16F876A

chipu = $(shell echo "${CHIP}" | tr "[[:lower:]]" "[[:upper:]]")
chipl = $(shell echo "${CHIP}" | tr "[[:upper:]]" "[[:lower:]]")



VERSION = $(VERSION_MAJOR).$(VERSION_MINOR).$(VERSION_PATCH)

ifeq ($(shell which mcc18),)
ifeq ($(shell uname -o),GNU/Linux)
CCDIR = /opt/microchip/mcc18
else
CCDIR := $(shell reg QUERY 'HKCU\Software\Microchip\MPLAB IDE\Tool Locations' /v T_MCC18.PIC18 | sed -n '/REG_SZ/ { s/.*REG_SZ\s*// ; s|[/\\]bin.*|| ; p }')
endif
endif

ifneq ($(CCDIR),)
CC = $(CCDIR)/bin/mcc18
else
CC = mcc18
endif

#$(warning Compiler type: $(COMPILER_TYPE))

BUILDDIR = build/mcc18-$(chipl)/

LD = $(CC)

-include build/vars.mk

SOURCES = $($(PACKAGE)_SOURCES)
OBJECTS = $(SOURCES:%.c=$(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.o)

COMMON_FLAGS = -g
#COMMON_FLAGS = -g

CPPFLAGS += -D__$(chipl)=1

ifneq ($(CCDIR),)
CPPFLAGS += -I$(CCDIR)/include
endif

_CPPFLAGS += \
	-DVERSION_MAJOR=$(VERSION_MAJOR) \
	-DVERSION_MINOR=$(VERSION_MINOR) \
	-DVERSION_PATCH=$(VERSION_PATCH)

#CFLAGS = -q --chip=$(chipl) $(COMMON_FLAGS)
#CFLAGS = -q --chip=16F876A -P --runtime=default,+clear,+init,-keep,+osccal,-download,-resetbits,+clib --opt=default,+asm,-debug,+speed,-space,9 --warn=-1 -N127 --double=32 --float=24 --addrqual=ignore -g --asmlist "--errformat=Error   [%n] %f; %l.%c %s" "--msgformat=Advisory[%n] %s" "--warnformat=Warning [%n] %f; %l.%c %s"

#_LDFLAGS += --summary=default,-psect,-class,+mem,-hex

#LDFLAGS += --output=default,-inhx032 --chip=$(chipl)


all: $(BUILDDIR) LC_meter.hex

$(BUILDDIR):
	mkdir -p $(BUILDDIR)

program: $(PACKAGE).hex
	picpgm -if JDM -p PIC$(chipu) -e -p "$<"

dist:
	mkdir -p $(PACKAGE)-$(VERSION)
	cp -rvf $(DISTFILES) $(PACKAGE)-$(VERSION)
	tar -cvzf $(PACKAGE)-$(VERSION).tar.gz $(PACKAGE)-$(VERSION)


LC_meter.hex: $(OBJECTS)

	$(LD) $(LDFLAGS) -o$(BUILDDIR)$@ $^ || { $(RM) $(BUILDDIR)LC_meter.hex; exit 1; }

$(OBJECTS): $(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.o: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -c  $<
$(ASMSRC): $(BUILDDIR)%_$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps.s: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -S -o$(BUILDDIR)$@ $<


clean:
	$(RM) $(BUILDDIR)*.s $(BUILDDIR)*.cof $(BUILDDIR)*.hex $(BUILDDIR)*.hxl $(BUILDDIR)*.lst $(BUILDDIR)*.map $(BUILDDIR)*.obj $(BUILDDIR)*.o $(BUILDDIR)*.pre $(BUILDDIR)*.rlf $(BUILDDIR)*.sdb $(BUILDDIR)*.sym



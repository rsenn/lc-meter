COMPILER ?= htc
DEBUG ?= 0

ifeq ($(XTAL_FREQS),)
XTAL_FREQS = 20000000 24000000
endif
ifeq ($(BAUD_RATES),)
BAUD_RATES = 9600 19200 31250 38400 57600
endif

-include build/vars.mk
ifeq ($(COMPILER),)
	COMPILER = htc
endif

ifneq ($(BUILD_TYPE),)
	BUILD_TYPE := $(BUILD_TYPE)
endif
ifeq ($(BUILD_TYPE),)
	BUILD_TYPE = release
endif

ifeq ($(BUILD_TYPE),debug)
	DEBUG = 1
else
	DEBUG = 0
endif

#default:
#	@echo "Please specify build system:"
#	@echo " sdcc htc"
#
all clean program verifys:
#	$(MAKE) -f Makefile.$(COMPILER) $@
#	for P in $(PROGRAMS); do (set -x; $(MAKE) -f Makefile.$(COMPILER) BUILD_TYPE=$(BUILD_TYPE) BUILD_TYPE=$(BUILD_TYPE) PROGRAM=$$P $@) || exit $$?; done
	for P in $(PROGRAMS); do (set -x; $(MAKE) -f build/rates.mk COMPILER=$(COMPILER) BUILD_TYPE=$(BUILD_TYPE) BAUD_RATES="$(BAUD_RATES)" XTAL_FREQS="$(XTAL_FREQS)"  DEBUG=$(DEBUG) BUILD_TYPE=$(BUILD_TYPE) $$P ) || exit $$?; done

#	for T in $(BUILD_TYPES); do $(MAKE) -f Makefile.$$T $@; done
#BUILD_TYPES = sdcc htc
$(PROGRAMS):
	BAUD_RATES="$(BAUD_RATES)"; for BAUD in $${BAUD_RATES:-19200}; do \
	  XTAL_FREQS="$(XTAL_FREQS)"; for XTAL in $${XTAL_FREQS:-20000000}; do \
		mkdir -p build/$(COMPILER)-$(chipl)/$(BUILD_TYPE)_$(MHZ)mhz_$(KBPS)kbps_$(SOFTKBPS)skbps; \
		$(MAKE) -f Makefile.$(COMPILER) BUILD_TYPE=$(BUILD_TYPE) BUILD_TYPE=$(BUILD_TYPE) PROGRAM=$@ BAUD=$$BAUD XTAL=$$XTAL || exit $$? 2; \
	  done; \
	done

fword = $(word 1,$(subst -, ,$1))
remove-fword = $(subst $(call fword,$1)-,,$1)

$(PROGRAMS:%=clean-%):
	$(MAKE) -f Makefile.$(COMPILER) DEBUG=$(DEBUG) BUILD_TYPE=$(BUILD_TYPE) PROGRAM=$(call remove-fword,$@) $(call fword,$@)

$(PROGRAMS:%=program-%): $(@:program-%=%)
	@for T in all $(call fword,$@); do \
	  cmd="$(MAKE) -f Makefile.$(COMPILER) DEBUG=$(DEBUG) BUILD_TYPE=$(BUILD_TYPE) PROGRAM=$(call remove-fword,$@) $$T"; echo "Building $$T-$(call remove-fword,$@): $$cmd" 1>&2; \
	  eval "$$cmd"; \
	done

#$(BUILD_TYPES):
#	$(MAKE) -f Makefile.$@ all

DISTFILES = $(wildcard Makefile*) $(wildcard *.mcw *.mcp *.cbp *.sh) $(pictest_SOURCES)

distdir = pictest-$(shell date +%Y%m%d)

dist:
	mkdir -p $(distdir)
	cp -f $(DISTFILES) $(distdir)/
	tar -cvJf $(distdir).txz --exclude="build" $(distdir)/
	$(RM) -r $(distdir)

-include build/common.mk

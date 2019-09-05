COMPILER ?= htc
DEBUG ?= 0

-include build/vars.mk
-include build/targets.mk

ifeq ($(COMPILERS),)
COMPILERS = htc xc8
endif

ifeq ($(BUILD_TYPES),)
BUILD_TYPES := debug release
#BUILD_TYPE := release
endif

ifeq ($(XTAL_FREQS),)
XTAL_FREQS := 20000000
endif

ifeq ($(BAUD_RATES),)
BAUD_RATES := 38400
endif

ifeq ($(BUILD_TYPE),debug)
DEBUG = 1
else
DEBUG = 0
endif



MAKE_CMD := $(MAKE) -f build/$$COMPILER.mk
MAKE_LOOP := @MAKE@ || exit $$?

#default:
#	@echo "Please specify build system:"
#	@echo " sdcc htc"
#
ifneq ($(subst program,,$(MAKECMDGOALS)),$(MAKECMDGOALS))
PROGRAMS := $(firstword $(strip $(PROGRAMS)))
BUILD_TYPES := $(lastword $(strip $(BUILD_TYPES)))
COMPILERS := $(firstword $(strip $(COMPILERS)))
XTAL_FREQS := $(firstword $(strip $(XTAL_FREQS)))
BAUD_RATES := $(firstword $(strip $(BAUD_RATES)))
CHIPS := $(firstword $(strip $(CHIPS)))
#$(info BUILD_TYPES="$(BUILD_TYPES)" COMPILERS="$(COMPILERS)" XTAL_FREQS="$(XTAL_FREQS)" BAUD_RATES="$(BAUD_RATES)" CHIPS="$(CHIPS)" BUILD_TYPES="$(BUILD_TYPES)")
endif


ifneq ($(call is-list,XTAL_FREQ),)
MAKE_CMD +=  XTAL=$$XTAL_FREQ
MAKE_LOOP := for XTAL_FREQ in $(call get-list,XTAL_FREQ); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,XTAL_FREQ),)
MAKE_CMD += XTAL=$(call get-list,XTAL_FREQ)
endif
endif

ifneq ($(call is-list,CHIP),)
MAKE_CMD +=  CHIP=$$CHIP
MAKE_LOOP := for CHIP in $(call get-list,CHIP); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,CHIP),)
MAKE_CMD += CHIP=$(call get-list,CHIP)
endif
endif

ifneq ($(call is-list,BAUD_RATE),)
MAKE_CMD +=  BAUD=$$BAUD_RATE
MAKE_LOOP := for BAUD_RATE in $(call get-list,BAUD_RATES); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,BAUD_RATE),)
MAKE_CMD += BAUD=$(call get-list,BAUD_RATE)
endif
endif

ifneq ($(call is-list,COMPILER),)
MAKE_CMD +=  COMPILER=$$COMPILER
MAKE_LOOP := for COMPILER in $(call get-list,COMPILER); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,COMPILER),)
MAKE_CMD := $(subst $$COMPILER,$(call get-list,COMPILER),$(MAKE_CMD))
endif
endif

ifneq ($(call is-list,BUILD_TYPE),)
MAKE_CMD +=  BUILD_TYPE=$$BUILD_TYPE
MAKE_LOOP := for BUILD_TYPE in $(call get-list,BUILD_TYPE); do $(MAKE_LOOP); done
else
ifneq ($(call get-list,BUILD_TYPE),)
MAKE_CMD += BUILD_TYPE=$(call get-list,BUILD_TYPE)
endif
endif

ifneq ($(call is-list,PROGRAM),)
P_MAKE_CMD :=  $(MAKE_CMD) PROGRAM=$$P
P_MAKE_LOOP := for P in $(call get-list,PROGRAM) ; do $(MAKE_LOOP); done

.PHONY: all clean program verify
all clean program verify:
	$(subst @MAKE@,(set -x; $(P_MAKE_CMD) $@),$(P_MAKE_LOOP))
else
.PHONY: all clean program verify
all clean program verify:
	$(subst @MAKE@,(set -x; $(MAKE_CMD) PROGRAM=$(call get-list,PROGRAM) dirs $@),$(MAKE_LOOP))
endif



$(PROGRAMS):
	$(subst @MAKE@,$(MAKE_CMD) PROGRAM=$@,$(MAKE_LOOP))


fword = $(word 1,$(subst -, ,$1))
remove-fword = $(subst $(call fword,$1)-,,$1)

$(PROGRAMS:%=clean-%):
	$(subst @MAKE@,$(MAKE_CMD) PROGRAM=$(call remove-fword,$@) $(call fword,$@),$(MAKE_LOOP))

$(PROGRAMS:%=program-%): $(@:program-%=%)
	$(subst @MAKE@,$(MAKE_CMD) PROGRAM=$(call remove-fword,$@) all $(call fword,$@),$(MAKE_LOOP))
#	@for T in all $(call fword,$@); do \
#	  cmd="$(MAKE) -f Makefile.$(COMPILER) DEBUG=$(DEBUG) BUILD_TYPE=$(BUILD_TYPE) PROGRAM=$(call remove-fword,$@) $$T"; echo "Building $$T-$(call remove-fword,$@): $$cmd" 1>&2; \
#	  eval "$$cmd"; \
#	done
#
#$(BUILD_TYPES):
#	$(MAKE) -f Makefile.$@ all

DISTFILES = $(wildcard Makefile*) $(wildcard *.mcw *.mcp *.cbp *.sh) $(pictest_SOURCES)

distdir = pictest-$(shell date +%Y%m%d)

dist:
	mkdir -p $(distdir)
	cp -f $(DISTFILES) $(distdir)/
	tar -cvJf $(distdir).txz --exclude="build" $(distdir)/
	$(RM) -r $(distdir)

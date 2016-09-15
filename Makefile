COMPILER ?= htc
DEBUG ?= 0




-include Makefile.vars

ifeq ($(COMPILERS)$(COMPILER),)
COMPILER = htc
endif

ifeq ($(BUILD_TYPE),)
BUILD_TYPE := release
endif

ifneq ($(BUILD_TYPE),)
BUILD_TYPES := $(BUILD_TYPE)
endif

ifeq ($(XTAL_FREQS)$(XTAL),)
XTAL_FREQ := 20000000
endif

ifeq ($(BAUD_RATES)$(BAUD),)
BAUD := 38400
endif

ifeq ($(BUILD_TYPE),debug)
DEBUG = 1
else
DEBUG = 0
endif


MAKE_CMD := $(MAKE) -f Makefile.$$COMPILER
MAKE_LOOP := @MAKE@


#default:
#	@echo "Please specify build system:"
#	@echo " sdcc htc"
#



ifneq ($(XTAL_FREQS),)
MAKE_CMD +=  XTAL=$$XTAL_FREQ
MAKE_LOOP := for XTAL_FREQ in $(XTAL_FREQS); do $(MAKE_LOOP) || exit $?; done
else
ifneq ($(XTAL),)
MAKE_CMD += XTAL=$(XTAL)
endif
endif

ifneq ($(BAUD_RATES),)
MAKE_CMD +=  BAUD=$$BAUD_RATE
MAKE_LOOP := for BAUD_RATE in $(BAUD_RATES); do $(MAKE_LOOP) || exit $?; done
else
ifneq ($(BAUD),)
MAKE_CMD += BAUD=$(BAUD)
endif
endif

ifneq ($(COMPILERS),)
MAKE_CMD +=  COMPILER=$$COMPILER
MAKE_LOOP := for COMPILER in $(COMPILERS); do $(MAKE_LOOP) || exit $?; done
else
ifneq ($(COMPILER),)
MAKE_CMD := $(subst $$COMPILER,$(COMPILER),$(MAKE_CMD))
endif
endif

ifneq ($(BUILD_TYPES),)
MAKE_CMD +=  BUILD_TYPE=$$BUILD_TYPE
MAKE_LOOP := for BUILD_TYPE in $(BUILD_TYPES); do $(MAKE_LOOP) || exit $?; done
else
ifneq ($(BUILD_TYPE),)
MAKE_CMD += BUILD_TYPE=$(BUILD_TYPE)
endif
endif


ifneq ($(PROGRAMS),)
P_MAKE_CMD :=  $(MAKE_CMD) PROGRAM=$$P
P_MAKE_LOOP := for P in $(PROGRAMS); do $(MAKE_LOOP) || exit $?; done

.PHONY: all clean program verify
all clean program verify:
	$(subst @MAKE@,(set -x; $(P_MAKE_CMD) $@),$(P_MAKE_LOOP))
else
.PHONY: all clean program verify
all clean program verify:
	$(subst @MAKE@,(set -x; $(MAKE_CMD) PROGRAM=$(PROGRAM) $@),$(MAKE_LOOP))
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

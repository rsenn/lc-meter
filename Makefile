#COMPILER = sdcc

#default:
#	@echo "Please specify build system:"
#	@echo " sdcc htc"
#
BUILD_TYPES = sdcc htc xc8

all clean program:
ifneq ($(COMPILER),)
	make -f Makefile.$(COMPILER) $@
endif
ifneq ($(BUILD_TYPES),)
	for T in $(BUILD_TYPES); do $(MAKE) -f Makefile.$$T COMPILER=$$T $@; done
endif

#$(BUILD_TYPES):
#	$(MAKE) -f Makefile.$@ all

SOURCES = $(wildcard *.c *.h)
DISTFILES = $(wildcard Makefile*) $(wildcard *.mcw *.mcp *.cbp *.sh) $(SOURCES)

distdir = LC_meter-$(shell date +%Y%m%d)

dist:
	mkdir -p $(distdir)
	cp -f $(DISTFILES) $(distdir)/
	tar -cvJf $(distdir).txz --exclude="build" $(distdir)/
	$(RM) -r $(distdir)
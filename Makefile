COMPILER = sdcc

#default:
#	@echo "Please specify build system:"
#	@echo " sdcc htc"
#
#BUILD_TYPES = sdcc htc

all clean program:
	make -f Makefile.$(COMPILER) $@
#	for T in $(BUILD_TYPES); do $(MAKE) -f Makefile.$$T $@; done

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
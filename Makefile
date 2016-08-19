#COMPILER = sdcc

#default:
#	@echo "Please specify build system:"
#	@echo " sdcc htc"
#
#COMPILERS = sdcc htc xc8
COMPILERS = htc xc8

include Makefile.vars

all clean program:
ifneq ($(COMPILER),)
	make -f Makefile.$(COMPILER) $@
endif
ifneq ($(COMPILERS),)
	for T in $(COMPILERS); do $(MAKE) -f Makefile.$$T COMPILER=$$T PROGRAM=$(PROGRAM) $@; done
endif

#$(COMPILERS):
#	$(MAKE) -f Makefile.$@ all

SOURCES = $(wildcard *.c *.h)
DISTFILES = $(wildcard Makefile*) $(wildcard *.mcw *.mcp *.cbp *.sh) $(SOURCES)

distdir = LC-meter-$(shell date +%Y%m%d)

dist:
	mkdir -p $(distdir)
	cp -f $(DISTFILES) $(distdir)/
	tar -cvJf $(distdir).txz --exclude="build" $(distdir)/
	$(RM) -r $(distdir)
	
	
calc-lc-tank: calc-lc-tank.c
	$(CC) -g -O2 -Wall -o $@ $^
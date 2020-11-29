

# Gerbv PCB image preview parameters - colours, plus resolution.
GERBER_IMAGE_RESOLUTION ?= 400
BACKGROUND_COLOUR ?= \#ffffff
HOLES_COLOUR ?= \#ffffff
SILKSCREEN_COLOUR ?= \#afafaf
PADS_COLOUR ?= \#4ba54b
TOP_SOLDERMASK_COLOUR ?= \#a54b4b
BOTTOM_SOLDERMASK_COLOUR ?= \#4b4ba5
OUTLINE_COLOUR ?= \#a5a5a5


.PHONY: gerbers project
project : gerbers


.PHONY: gerbers

gerbers :
	-@mkdir -p gerbers
	-@mkdir -p temp
	-@for f in `ls *.s#* *.b#* 2> /dev/null`; do mv $$f ./temp/; done
	@echo "Generating Gerber files for 'eagle/$(LAYOUT_NAME).brd' ..." 1>&2
	eagle -X -d GERBER_RS274X -o "./gerbers/$(LAYOUT_NAME).GTL" "eagle/$(LAYOUT_NAME).brd" Top Pads Vias Dimension > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(LAYOUT_NAME).GBL" "eagle/$(LAYOUT_NAME).brd" Bottom Pads Vias > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(LAYOUT_NAME).GTO" "eagle/$(LAYOUT_NAME).brd" tPlace tNames tValues > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(LAYOUT_NAME).GTP" "eagle/$(LAYOUT_NAME).brd" tCream > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(LAYOUT_NAME).GBO" "eagle/$(LAYOUT_NAME).brd" bPlace bNames bValues > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(LAYOUT_NAME).GTS" "eagle/$(LAYOUT_NAME).brd" tStop > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(LAYOUT_NAME).GBS" "eagle/$(LAYOUT_NAME).brd" bStop > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(LAYOUT_NAME).GML" "eagle/$(LAYOUT_NAME).brd" Milling > /dev/null
	eagle -X -d GERBER_RS274X -o "./gerbers/$(LAYOUT_NAME).GKO" "eagle/$(LAYOUT_NAME).brd" Dimension > /dev/null
	eagle -X -d EXCELLON -o "./gerbers/$(LAYOUT_NAME).TXT" "eagle/$(LAYOUT_NAME).brd" Drills Holes > /dev/null

	sed -i "s|X\\([0-9]\\+\\)[0-9]\\+Y\\([0-9]\\+\\)[0-9]$$|X\\1Y\\2|" "./gerbers/$(LAYOUT_NAME).TXT"

	for FMT in png pdf; do (set -x; gerbv --export=$$FMT --output="gerbers/$(LAYOUT_NAME)-pcb.$$FMT" --dpi=$(GERBER_IMAGE_RESOLUTION) --background=$(BACKGROUND_COLOUR) \
    --f=$(SILKSCREEN_COLOUR) "gerbers/$(LAYOUT_NAME).GTO" \
    --f=$(HOLES_COLOUR) "gerbers/$(LAYOUT_NAME).TXT" \
    --f=$(PADS_COLOUR) "gerbers/$(LAYOUT_NAME).GTS" \
    --f=$(TOP_SOLDERMASK_COLOUR) "gerbers/$(LAYOUT_NAME).GTL" \
    --f=$(BOTTOM_SOLDERMASK_COLOUR) "gerbers/$(LAYOUT_NAME).GBL" \
    --f=$(OUTLINE_COLOUR) "gerbers/$(LAYOUT_NAME).GKO" \
    ); done

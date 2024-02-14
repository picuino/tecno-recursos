THUMBS=_thumbs

IMAGEFILES= $(wildcard *-bb.png)
THUMBFILES= $(foreach f, $(IMAGEFILES), $(THUMBS)/$(notdir $(f)))

CONVERT=convert
OPTIPNG=optipng -quiet -o 6


# --------------------------------------------------------------------
# THUMBNAILS
#
$(THUMBS)/%.png: %.png
	$(CONVERT) $<  -strip -resize 320x $@
	$(OPTIPNG) $@

$(THUMBS)/%.jpg: %.jpg
	$(CONVERT) $<  -strip -resize 320x $@


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean  grey

all: \
	$(THUMBFILES) \


clean:
	rm -f	$(THUMBFILES)
   
   
grey:
	mogrify  -type Grayscale arduino-proto-01-led-vcc-sch.png
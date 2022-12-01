SVG_FILES= $(wildcard *.svg)
PNG_FILES= $(foreach f, $(SVG_FILES), $(basename $(f)).png)

INKSCAPE=inkscape.com
CONVERT=convert
OPTIPNG=optipng -quiet -o 6

# --------------------------------------------------------------------
# THUMBNAILS
#
%.png: %.svg
	$(INKSCAPE) $<  --export-dpi=300 --export-area-page --export-filename=$@
	$(CONVERT) $@ -crop 1200x550+300+200 +repage -set colorspace Gray $(basename $@)n.png


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean

all: \
	$(PNG_FILES) \


clean:
	rm -f $(PNG_FILES)

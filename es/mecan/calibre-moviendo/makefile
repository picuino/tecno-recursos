SVG_FILES= $(wildcard *.svg)
PNG_FILES= $(foreach f, $(SVG_FILES), $(basename $(f)).png)

INKSCAPE=inkscape.com
CONVERT=convert
OPTIPNG=optipng -quiet -o 6

# --------------------------------------------------------------------
# THUMBNAILS
#
%.png: %.svg
	$(INKSCAPE) $<  --export-dpi=100 --export-area-page --export-filename=$@
	$(CONVERT) $@ -crop 1100x413+0+0 +repage -set colorspace Gray $@

mecan-calibre-movil.gif: $(PNG_FILES) makefile
	$(CONVERT) -delay 8 -loop 0 -dispose Previous \
	mecan-calibre-0100.png mecan-calibre-0105.png \
	mecan-calibre-0110.png mecan-calibre-0115.png \
	mecan-calibre-0120.png mecan-calibre-0125.png \
	mecan-calibre-0130.png mecan-calibre-0135.png \
	mecan-calibre-0140.png mecan-calibre-0145.png \
	mecan-calibre-0150.png mecan-calibre-0155.png \
	mecan-calibre-0160.png mecan-calibre-0165.png \
	mecan-calibre-0170.png mecan-calibre-0175.png \
	mecan-calibre-0180.png mecan-calibre-0185.png \
	mecan-calibre-0190.png mecan-calibre-0195.png \
	mecan-calibre-0200.png mecan-calibre-0200.png \
	mecan-calibre-0195.png mecan-calibre-0190.png \
	mecan-calibre-0185.png mecan-calibre-0180.png \
	mecan-calibre-0175.png mecan-calibre-0170.png \
	mecan-calibre-0165.png mecan-calibre-0160.png \
	mecan-calibre-0155.png mecan-calibre-0150.png \
	mecan-calibre-0145.png mecan-calibre-0140.png \
	mecan-calibre-0135.png mecan-calibre-0130.png \
	mecan-calibre-0125.png mecan-calibre-0120.png \
	mecan-calibre-0115.png mecan-calibre-0110.png \
	mecan-calibre-0105.png mecan-calibre-0100.png \
	$@

# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean

all: \
	$(PNG_FILES) \
	mecan-calibre-movil.gif \


clean:
	rm -f $(PNG_FILES)

SVGFILES = $(wildcard electronic-resistencia-*.svg)
PNGFILES = $(foreach f, $(SVGFILES), $(basename $f).png)

%.png: %.svg
	magick convert $< -density 150 -transparent White $@
	optipng -quiet -o 6  $@

%.pdf: %.typ
	typst compile $< $@

electronic-resistencia-1_0.svg: make-resistors.py
	\Bin\Python314\python make-resistors.py


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean

all: \
	electronic-codigo-colores.pdf \
	electronic-color-coding.pdf \
	$(PNGFILES) \
	electronic-resistencia-1_0.svg

clean:
	rm -f electronic-codigo-colores.pdf  electronic-color-coding.pdf
	rm -f electronic-resistencia-*.png
	rm -f electronic-resistencia-*.svg

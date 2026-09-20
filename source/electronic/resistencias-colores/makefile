SVGFILES = $(wildcard electronic-resistencia-*.svg)
PNGFILES = $(foreach f, $(SVGFILES), $(basename $f).png)

%.png: %.svg
	magick convert $< -density 150 -transparent White $@
	optipng -quiet -o 6  $@

%.pdf: %.typ
	typst compile $< $@

electronic-resistencia-1_0.svg: make-resistors.py
	\Bin\Python314\python make-resistors.py

electronic-codigo-colores.png: electronic-codigo-colores.pdf
	pdftopng -cfg /Bin/xpdf/.xpdfrc -r 72 -aa yes -aaVector yes -freetype yes $< $(basename $@)
	mv $(basename $@)-000001.png $@
	rm -f $(basename $@)-000002.png
	optipng -o 6 $@

electronic-codigo-colores.en.png: electronic-color-coding.pdf
	pdftopng -cfg /Bin/xpdf/.xpdfrc -r 72 -aa yes -aaVector yes -freetype yes $< $(basename $@)
	mv $(basename $@)-000001.png $@
	rm -f $(basename $@)-000002.png
	optipng -o 6 $@


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean

all: \
	electronic-codigo-colores.pdf \
	electronic-codigo-colores.png \
	electronic-color-coding.pdf \
	electronic-codigo-colores.en.png \
	$(PNGFILES) \
	electronic-resistencia-1_0.svg

clean:
	rm -f electronic-codigo-colores.pdf  electronic-color-coding.pdf
	rm -f electronic-resistencia-*.png
	rm -f electronic-resistencia-*.svg

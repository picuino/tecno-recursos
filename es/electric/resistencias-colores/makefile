
SVGFILES = $(wildcard electric-resistencia-*.svg)
PNGFILES = $(foreach f, $(SVGFILES), $(basename $f).png)

%.png: %.svg
	convert.exe -density 150 $< -transparent White $@
	optipng -quiet -o 6  $@

# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean
all: \
	$(PNGFILES)
	python make-resistors.py

clean:
	rm -f *.png
	rm -f electric-resistencia-*.svg

# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $< first element of dependencies list

PDFTOPNG=pdftopng -gray -r 150 -aa yes -aaVector yes -freetype yes
OPTIPNG=optipng -quiet -o 5
CONVERT=convert
CONVERT_OPT=-transparent White
MOGRIFY=mogrify
PYTHON=python


# --------------------------------------------------------------------
#
electric-reles-p1.png electric-reles-p2: electric-reles.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(basename $<)-p1.png
	mv $(basename $<)-000002.png  $(basename $<)-p2.png
	$(MOGRIFY) -posterize 32 $(basename $<)-p1.png
	$(MOGRIFY) -posterize 32 $(basename $<)-p2.png
	$(OPTIPNG) $@


electric-reles-crop.png: electric-reles-p1.png
	$(CONVERT) $^ -crop 1240x740+0+0 $(CONVERT_OPT) $@
	$(OPTIPNG) $@


.PHONY: all  clean
all: \
	electric-reles-p1.png  electric-reles-p2.png electric-reles-crop.png \

clean:
	rm -f electric-reles-*.png

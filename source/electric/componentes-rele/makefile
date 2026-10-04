# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $< first element of dependencies list

PDFTOPNG=pdftopng -gray -aa yes -aaVector yes -freetype yes
OPTIPNG=optipng -quiet -o 6
CONVERT=magick.exe convert
CONVERT_OPT=
MOGRIFY=mogrify


SOURCES := $(wildcard *.typ)
OBJECTS := $(SOURCES:.typ=.pdf)


# --------------------------------------------------------------------
#
electric-esquema-rele-p1.png: electric-esquema-rele.pdf
	$(PDFTOPNG) -r 300 $< $(basename $<)
	mv $(basename $<)-000001.png  $(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(basename $<)-p1.png
	$(OPTIPNG) $@

electric-reles-p1.png electric-reles-p2: electric-reles.pdf
	$(PDFTOPNG) -r 150 $< $(basename $<)
	mv $(basename $<)-000001.png  $(basename $<)-p1.png
	mv $(basename $<)-000002.png  $(basename $<)-p2.png
	$(MOGRIFY) -posterize 32 $(basename $<)-p1.png
	$(MOGRIFY) -posterize 32 $(basename $<)-p2.png
	$(OPTIPNG) $@

electric-reles-crop.png: electric-reles-p1.png
	$(CONVERT) $^ -crop 1240x740+0+0 $(CONVERT_OPT) $@
	$(OPTIPNG) $@


electric-relays-p1.png electric-relays-p2: electric-relays.pdf
	$(PDFTOPNG) -r 150 $< $(basename $<)
	mv $(basename $<)-000001.png  $(basename $<)-p1.png
	mv $(basename $<)-000002.png  $(basename $<)-p2.png
	$(MOGRIFY) -posterize 32 $(basename $<)-p1.png
	$(MOGRIFY) -posterize 32 $(basename $<)-p2.png
	$(OPTIPNG) $@

electric-reles-crop.en.png: electric-relays-p1.png
	$(CONVERT) $^ -crop 1240x740+0+0 $(CONVERT_OPT) $@
	$(OPTIPNG) $@


%.pdf: %.typ
	typst compile $< $@


.PHONY: all clean

all: \
	electric-esquema-rele-p1.png \
	electric-reles-p1.png  electric-reles-p2.png electric-reles-crop.png \
	electric-relays-p1.png  electric-relays-p2.png electric-reles-crop.en.png \
	$(OBJECTS)

clean:
	rm -f electric-esquema-rele-p1.png
	rm -f electric-reles-p1.png  electric-reles-p2.png electric-reles-crop.png
	rm -f electric-relays-p1.png  electric-relays-p2.png electric-reles-crop.en.png
	rm -f $(OBJECTS)


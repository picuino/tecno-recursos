IMAGES=_images
THUMBS=_thumbs

IMAGEFILES= $(wildcard $(IMAGES)/*.png) $(wildcard $(IMAGES)/*.jpg)
THUMBFILES= $(foreach f, $(IMAGEFILES), $(THUMBS)/$(notdir $(f)))

CONVERT=convert
OPTIPNG=optipng -quiet -o 6


# --------------------------------------------------------------------
# CURSO DE REDES TELEMÁTICAS
#
../comm-curso-redes.rst: comm-curso-redes.yml comm-curso-redes-rst.py
	python3 -m comm-curso-redes-rst


# --------------------------------------------------------------------
# THUMBNAILS
#
$(THUMBS)/%.png: $(IMAGES)/%.png
	$(CONVERT) $<  -strip -resize 480x360\> $@
	$(OPTIPNG) $@

$(THUMBS)/%.jpg: $(IMAGES)/%.jpg
	$(CONVERT) $<  -strip -resize 480x360\> $@


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean

all: \
	$(THUMBFILES) \
	../comm-curso-redes.rst \


clean: \
	rm -f $(THUMBFILES) \
	rm -f ../comm-curso-redes.rst \

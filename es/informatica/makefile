IMAGES=_images
THUMBS=_thumbs

IMAGEFILES= $(wildcard $(IMAGES)/*.png) $(wildcard $(IMAGES)/*.jpg)
THUMBFILES= $(foreach f, $(IMAGEFILES), $(THUMBS)/$(notdir $(f)))

CONVERT=convert
OPTIPNG=optipng -quiet -o 6


# --------------------------------------------------------------------
# THUMBNAILS
#
$(THUMBS)/%.png: $(IMAGES)/%.png
	$(CONVERT) $<  -strip -resize 480x360\> $@
	$(OPTIPNG) $@

$(THUMBS)/%.jpg: $(IMAGES)/%.jpg
	$(CONVERT) $<  -strip -resize 480x360\> $@

# --------------------------------------------------------------------
# Flor
#
$(IMAGES)/informatica-flor-24bit.jpg: $(IMAGES)/informatica-flor.jpg
	$(CONVERT) $<  -strip -resize 480x360\> $@

$(IMAGES)/informatica-flor-256bn.jpg: $(IMAGES)/informatica-flor.jpg
	$(CONVERT) $<  -strip -resize 480x360\> -colorspace Gray $@

$(IMAGES)/informatica-flor-256.png: $(IMAGES)/informatica-flor.jpg
	$(CONVERT) $<  -strip -resize 480x360\> -dither FloydSteinberg -colors 256 $@
	$(OPTIPNG) $@

$(IMAGES)/informatica-flor-16.png: $(IMAGES)/informatica-flor.jpg
	$(CONVERT) $<  -strip -resize 480x360\> -dither FloydSteinberg -colors 16 $@
	$(OPTIPNG) $@

$(IMAGES)/informatica-flor-2.png: $(IMAGES)/informatica-flor.jpg
	$(CONVERT) $<  -strip -resize 480x360\> -remap pattern:gray50 $@
	$(OPTIPNG) $@


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean

all: \
	$(THUMBFILES) \
	$(IMAGES)/informatica-flor-24bit.jpg $(IMAGES)/informatica-flor-256bn.jpg \
	$(IMAGES)/informatica-flor-256.png $(IMAGES)/informatica-flor-16.png \
	$(IMAGES)/informatica-flor-2.png \


clean:
	rm -f	 $(THUMBFILES)

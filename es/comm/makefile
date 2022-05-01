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
# ALL FILES
#
.PHONY: all clean

all: \
	$(THUMBFILES) \


clean:
	rm -f	 $(THUMBFILES)

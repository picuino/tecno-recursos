
IMGDIR=_images
THUMBDIR=_thumbs

OPTIPNG=optipng -o 6
JPEG_OPTIONS=-strip -quality 90

# --------------------------------------------------------------------
# thumbnails
#
IMAGE_FILES_PNG=$(wildcard $(IMGDIR)/*.png)
THUMB_FILES_PNG=$(foreach f, $(IMAGE_FILES_PNG), $(THUMBDIR)/$(notdir $f))

IMAGE_FILES_JPG=$(wildcard $(IMGDIR)/*.jpg)
THUMB_FILES_JPG=$(foreach f, $(IMAGE_FILES_JPG), $(THUMBDIR)/$(notdir $f))

THUMB_FILES = $(THUMB_FILES_JPG) $(THUMB_FILES_PNG)

$(THUMB_FILES_PNG): $(IMAGE_FILES_PNG)
	convert $(IMGDIR)/$(notdir $@) -resize 360x360\> $@
	$(OPTIPNG) -o 6 $@

$(THUMB_FILES_JPG): $(IMAGE_FILES_JPG)
	convert $(IMGDIR)/$(notdir $@) -resize 360x360\> $(JPEG_OPTIONS) $@


# --------------------------------------------------------------------
# make all
#
.PHONY: all clean
all: $(THUMB_FILES)

clean:
	for thumb in $(THUMB_FILES); do \
	rm -f $$thumb; \
	done
IMGDIR=_images
THUMBDIR=_thumbs

JPEG_OPTIONS=-strip -quality 90

# --------------------------------------------------------------------
# thumbnails
#
THUMB_360= \
	img-0019.jpg \
	img-0042.jpg \
	img-0078.jpg \
	img-0082.jpg \
	img-0083.jpg \
	img-0085.jpg \
	img-0089.jpg \
	img-0095.jpg \


THUMB_480= \
	img-0014.jpg \
	img-0035.jpg \
	img-0038.jpg \
	img-0041.jpg \
	img-0088.jpg \
	img-0090.jpg \
	img-0092.jpg \
	img-0094.jpg \
	img-0098.jpg \


THUMB_640= \


THUMB_360_FILES=$(foreach f,$(THUMB_360),$(THUMBDIR)/$(f))
THUMB_480_FILES=$(foreach f,$(THUMB_480),$(THUMBDIR)/$(f))
THUMB_640_FILES=$(foreach f,$(THUMB_640),$(THUMBDIR)/$(f))

THUMB_FILES=$(THUMB_360_FILES) $(THUMB_480_FILES) $(THUMB_640_FILES)
IMG_FILES=$(foreach f, $(THUMB_FILES), $(IMGDIR)/$(notdir $f))

$(THUMB_360_FILES): $(IMG_FILES)
	convert $(IMGDIR)/$(notdir $@) -resize 360x360\> $(JPEG_OPTIONS) $@

$(THUMB_480_FILES): $(IMG_FILES)
	convert $(IMGDIR)/$(notdir $@) -resize 480x480\> $(JPEG_OPTIONS) $@

$(THUMB_640_FILES): $(IMG_FILES)
	convert $(IMGDIR)/$(notdir $@) -resize 640x640\> $(JPEG_OPTIONS) $@


# --------------------------------------------------------------------
# make all
#
.PHONY: all clean
all: $(THUMB_FILES)

clean:
	for thumb in $(THUMB_FILES); do \
	rm -f $$thumb; \
	done
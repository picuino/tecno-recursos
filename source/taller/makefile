IMAGES=_images
THUMBS=_thumbs
CONVERT=magick convert
OPTIPNG=optipng -quiet -o 6

SOURCES := $(wildcard *.typ)
OBJECTS := $(SOURCES:.typ=.pdf)


#---------------------------------------------------------------------
# TYPST FILES
#

%.pdf: %.typ
	typst compile $< $@

# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean

all: \
	$(OBJECTS)
	make all --no-print-directory -C origami

clean:
	rm -f $(OBJECTS)
	make clean --no-print-directory -C origami

SRCDIR=.
OUTPUT=..
THUMBDIR=_thumbs
IMGDIR=_images

RSTMACRO=$(SRCDIR)/html-macros.txt
COPYTHUMBS=beach-01.jpg chart-01.png portrait.png youtube.png


CONVERT=convert
CONVERT_TXT= -bordercolor White -border 6 \
	-background White -density 96 \
	-pointsize 12 -font Consolas-bold
OPTIPNG=optipng -quiet -o 6

PHANTOM=phantomjs
MACRO=rasterize.js
ZOOM=120
WIDTH=472

# --------------------------------------------------------------------
# MACROS
#
define web_img
	$(PHANTOM) $(MACRO) $(1) $(2) $(WIDTH) $(ZOOM)
	mogrify -background White -alpha remove -bordercolor Grey -border 4 $(2)
	$(OPTIPNG) $(2)
endef

define src_img
	$(CONVERT) $(CONVERT_TXT) label:@$(1) $(2)
	$(OPTIPNG) $(2)
endef

# --------------------------------------------------------------------
# IMAGES OF HTML AND CSS SOURCES
#
HTML=$(wildcard $(SRCDIR)/*.html)
HTMLIMAGES=$(foreach f, $(HTML), $(THUMBDIR)/$(notdir $(basename $f))-html.png)
WEBIMAGES=$(foreach f, $(HTML), $(THUMBDIR)/$(notdir $(basename $f))-web.png)

CSS=$(wildcard $(SRCDIR)/*.css)
CSSIMAGES=$(foreach f, $(CSS), $(THUMBDIR)/$(notdir $(basename $f))-css.png)


$(THUMBDIR)/%-web.png: $(SRCDIR)/%.html $(HTMLTHUMBS)
	$(call web_img,$<,$@)

$(THUMBDIR)/%-html.png: $(SRCDIR)/%.html
	$(call src_img,$<,$@)

$(THUMBDIR)/%-css.png: $(SRCDIR)/%.css
	$(call src_img,$<,$@)


# --------------------------------------------------------------------
# THUMBNAILS
#
THUMBS=$(foreach f, $(wildcard $(IMGDIR)/*.jpg) $(wildcard $(IMGDIR)/*.png), $(THUMBDIR)/$(notdir $f))
COPYTHUMBS:=$(foreach f, $(COPYTHUMBS), $(SRCDIR)/$(notdir $f))

$(THUMBDIR)/%.png: $(IMGDIR)/%.png
	$(CONVERT) $<  -strip -resize 240x180 $@
	$(OPTIPNG) $@

$(THUMBDIR)/%.jpg: $(IMGDIR)/%.jpg
	$(CONVERT) $<  -strip -resize  240x180 $@

$(SRCDIR)/%.png: $(THUMBDIR)/%.png
	cp  $<  $@

$(SRCDIR)/%.jpg: $(THUMBDIR)/%.jpg
	cp  $<  $@

# --------------------------------------------------------------------
# RST FILES
#
RSTSOURCES=$(wildcard $(SRCDIR)/*.rst)
RSTSOURCES:=$(filter-out $(RSTMACRO), $(RSTSOURCES))
RSTFILES=$(foreach f, $(RSTSOURCES), $(OUTPUT)/$(notdir $f))

$(OUTPUT)/%.rst: $(SRCDIR)/%.rst  $(RSTMACRO)
	python make_rst.py  $<  $@


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean
all: \
	$(THUMBS) \
	$(COPYTHUMBS) \
	$(HTMLIMAGES) \
	$(WEBIMAGES) \
	$(CSSIMAGES) \
	$(RSTFILES) \

clean:
	rm -f $(THUMBS)
	rm -f $(COPYTHUMBS)
	rm -f $(HTMLIMAGES)
	rm -f $(WEBIMAGES)
	rm -f $(CSSIMAGES)
	rm -f $(RSTFILES)


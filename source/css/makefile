SRCDIR= .
OUTPUT= ..
IMGDIR=_images

RSTMACRO=$(SRCDIR)/css-macros.txt

CONVERT=convert
CONVERT_TXT= -bordercolor White -border 6 \
	-background White -density 96 \
	-pointsize 12 -font Consolas-bold
OPTIPNG=optipng -quiet -o 6

PHANTOM=phantomjs
MACRO=$(SRCDIR)/rasterize.js
ZOOM=120
WIDTH=480


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
HTMLIMAGES=$(foreach f, $(HTML), $(IMGDIR)/$(notdir $(basename $f))-html.png)
WEBIMAGES=$(foreach f, $(HTML), $(IMGDIR)/$(notdir $(basename $f))-web.png)

CSS=$(wildcard $(SRCDIR)/*.css)
CSSIMAGES=$(foreach f, $(CSS), $(IMGDIR)/$(notdir $(basename $f))-css.png)


$(IMGDIR)/%-html.png: $(SRCDIR)/%.html
	$(call src_img,$<,$@)

$(IMGDIR)/%-web.png: $(SRCDIR)/%.html
	$(call web_img,$<,$@)

$(IMGDIR)/%-css.png: $(SRCDIR)/%.css
	$(call src_img,$<,$@)


# --------------------------------------------------------------------
# RST FILES
#
RSTSOURCES=$(wildcard $(SRCDIR)/*.txt)
RSTSOURCES:=$(filter-out $(RSTMACRO), $(RSTSOURCES))
RSTFILES=$(foreach f, $(RSTSOURCES), $(OUTPUT)/$(basename $(notdir $f)).rst)

$(OUTPUT)/%.rst: $(SRCDIR)/%.txt  $(RSTMACRO)
	python $(SRCDIR)/make_rst.py  $<  $@


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean
all: \
	$(HTMLIMAGES) \
	$(WEBIMAGES) \
	$(CSSIMAGES) \
	$(RSTFILES) \

clean:
	rm -f $(HTMLIMAGES)
	rm -f $(WEBIMAGES)
	rm -f $(CSSIMAGES)
	rm -f $(RSTFILES)


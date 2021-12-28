SRCDIR= .
OUTPUT= ..
THUMBDIR=_thumbs
IMGDIR=_images

RSTMACRO=$(SRCDIR)/scratch3-macros.txt

# --------------------------------------------------------------------
# RST FILES
#
RSTSOURCES=$(wildcard $(SRCDIR)/*.txt)
RSTSOURCES:=$(filter-out $(RSTMACRO), $(RSTSOURCES))
RSTFILES=$(foreach f, $(RSTSOURCES), $(OUTPUT)/$(notdir $(basename $f)).rst)

$(OUTPUT)/%.rst: $(SRCDIR)/%.txt  $(RSTMACRO)
	python $(SRCDIR)/make_rst.py  $<  $@


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean 
all: \
	$(RSTFILES) \

clean:
	rm -f $(RSTFILES)

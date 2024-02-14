IMGDIR=_images

CONVERT=convert.exe
CONVERT_TXT= -bordercolor White -border 6 \
	-background White -density 96 \
	-pointsize 12 -font Consolas-bold
OPTIPNG=optipng -quiet -o 6

# --------------------------------------------------------------------
# MACROS
#
define src_img
	$(CONVERT) $(CONVERT_TXT) label:@$(1) $(2)
	$(OPTIPNG) $(2)
endef

# --------------------------------------------------------------------
# IMAGES OF PY SOURCES
#
PY_MACROS=$(wildcard *.py)
PY_IMAGES=$(foreach f, $(PY_MACROS), $(IMGDIR)/$(notdir $(basename $f)).png)

$(IMGDIR)/%.png: %.py
	$(call src_img,$<,$@)


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean
all: \
	$(PY_IMAGES) \

clean:
	rm -f $(PY_IMAGES)


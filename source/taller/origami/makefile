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

clean:
	rm -f $(OBJECTS)

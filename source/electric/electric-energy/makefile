TYP_SOURCES := $(wildcard *.typ)
PDF_OBJECTS := $(TYP_SOURCES:.typ=.pdf)


%.pdf: %.typ
	typst compile $< $@


.PHONY: all clean

all: \
	$(PDF_OBJECTS)

clean:
	rm -f $(PDF_OBJECTS)

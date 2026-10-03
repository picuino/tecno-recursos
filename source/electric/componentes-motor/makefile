SOURCES := $(wildcard *.typ)
OBJECTS := $(SOURCES:.typ=.pdf)



%.pdf: %.typ
	typst compile $< $@


.PHONY: all clean

all: \
	$(OBJECTS)

clean:
	rm -f $(OBJECTS)

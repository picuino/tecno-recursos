SOURCES := $(wildcard *.typ)
SOURCES := $(filter-out _%,$(SOURCES))
OBJECTS := $(SOURCES:.typ=.pdf)

.PHONY: all clean

all: $(OBJECTS) $(IMAGES)

%.pdf: %.typ
	typst compile $< $@

clean:
	rm -f $(OBJECTS)

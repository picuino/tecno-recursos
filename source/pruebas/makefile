SOURCES := $(wildcard *.typ)
SOURCES := $(filter-out _%,$(SOURCES))
OBJECTS := $(SOURCES:.typ=.pdf)

.PHONY: all clean

all: $(OBJECTS)

%.pdf: %.typ _plantilla_examen.typ
	typst compile $< $@

clean:
	rm -f $(OBJECTS)

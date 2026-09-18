SOURCES := $(wildcard *.typ)
SOURCES := $(filter-out _%,$(SOURCES))
OBJECTS := $(SOURCES:.typ=.pdf)

OUTPUT_DIR = _html
IMAGES := $(patsubst %.pdf,$(OUTPUT_DIR)/%-1.png,$(OBJECTS)) \
          $(patsubst %.pdf,$(OUTPUT_DIR)/%-2.png,$(OBJECTS))

define pdf_page_to_png
	pdftopng -gray -r 90 -aa yes -aaVector yes -freetype yes $(1).pdf $(OUTPUT_DIR)/$(1)
	mv -f $(OUTPUT_DIR)/$(1)-000001.png  $(OUTPUT_DIR)/$(1)-1.png
	mv -f $(OUTPUT_DIR)/$(1)-000002.png  $(OUTPUT_DIR)/$(1)-2.png
	mogrify -colorspace GRAY -posterize 16 $(OUTPUT_DIR)/$(1)-1.png
	mogrify -colorspace GRAY -posterize 16 $(OUTPUT_DIR)/$(1)-2.png
	optipng -quiet -o 6 $(OUTPUT_DIR)/$(1)-1.png
	optipng -quiet -o 6 $(OUTPUT_DIR)/$(1)-2.png
endef


.PHONY: all clean

all: $(OBJECTS) $(IMAGES)

%.pdf: %.typ _plantilla_examen.typ
	typst compile $< $@

$(OUTPUT_DIR)/%-1.png $(OUTPUT_DIR)/%-2.png: %.pdf
	$(call pdf_page_to_png,$*)

clean:
	rm -f $(OBJECTS)
	rm -f $(OUTPUT_DIR)/*-1.png $(OUTPUT_DIR)/*-2.png

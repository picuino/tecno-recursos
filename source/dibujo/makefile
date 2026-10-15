
# --------------------------------------------------------------------
# Typst documents
#
TYP_SOURCES := $(wildcard *.typ)
PDF_OBJECTS := $(TYP_SOURCES:.typ=.pdf)

%.pdf: %.typ
	typst compile $< $@



.PHONY: all clean

all: $(PDF_OBJECTS)
	make all --no-print-directory -f makefile-acotacion
	make all --no-print-directory -f makefile-isometrica-piezas
	make all --no-print-directory -f makefile-alzado-perfil-planta
	make all --no-print-directory -f makefile-vistas
	make all --no-print-directory -f makefile-views
	make all --no-print-directory -f makefile-bocetos
	make all --no-print-directory -f makefile-design

clean:
	rm -f $(PDF_OBJECTS)
	make clean --no-print-directory -f makefile-acotacion
	make clean --no-print-directory -f makefile-isometrica-piezas
	make clean --no-print-directory -f makefile-alzado-perfil-planta
	make clean --no-print-directory -f makefile-vistas
	make clean --no-print-directory -f makefile-views
	make clean --no-print-directory -f makefile-bocetos
	make clean --no-print-directory -f makefile-design


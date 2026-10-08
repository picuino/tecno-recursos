
.PHONY: all clean

all:
	make all --no-print-directory -f makefile-images
	make all --no-print-directory -f makefile-bornas
	make all --no-print-directory -f makefile-cableado
	make all --no-print-directory -f makefile-pcb
	make all --no-print-directory -f makefile-color-code
	make all --no-print-directory -C resistencias-colores
	make all --no-print-directory -C formato-eng
	make all --no-print-directory -C componentes-semiconductores

clean:
	make clean --no-print-directory -f makefile-images
	make clean --no-print-directory -f makefile-bornas
	make clean --no-print-directory -f makefile-cableado
	make clean --no-print-directory -f makefile-pcb
	make clean --no-print-directory -f makefile-color-code
	make clean --no-print-directory -C resistencias-colores
	make clean --no-print-directory -C formato-eng
	make clean --no-print-directory -C componentes-semiconductores

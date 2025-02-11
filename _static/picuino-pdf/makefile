
SOURCE_PATH := ../../source

FILTER_OUT = $(foreach v,$(2),$(if $(findstring $(1),$(v)),,$(v)))
PDF_FILES := $(shell find $(SOURCE_PATH) -name '*.pdf')
PDF_FILES := $(call FILTER_OUT,BD135,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,DHT11,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,ntc-vishay,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,SG90Servo,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,caja.pdf,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,dibujo-escalas-02-ejercicios,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,dibujo-escalas-ejercicios,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,dibujo-librecad-practicas,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,vistas-der-01a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-der-01b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-der-02a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-der-02b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-der-03a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-der-03b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-der-04a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-der-04b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-der-05a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-der-05b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-01a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-01b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-02a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-02b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-03a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-03b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-04a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-04b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-05a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,vistas-izq-05b,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,views-right-01a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-right-01b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-right-02a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-right-02b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-right-03a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-right-03b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-right-04a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-right-04b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-right-05a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-right-05b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-01a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-01b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-02a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-02b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-03a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-03b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-04a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-04b,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-05a,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,views-left-05b,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,cuestionarios-y-escalas,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,electric-esquema-rele,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,guia-privacidad-seguridad-internet,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,ciberataques-guia-osi,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,inkscape_logo_a_logo_2,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,mecan-palancas-01,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,TutorialPython3,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,robives.com,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,ISO-7010-Cat,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,Señalización-seguridad-salud,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,electronic-codigo-colores-resistencias,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,electric-circuit,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,electronic-analog-images,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,electronic-digital-images,$(PDF_FILES))

PDF_FILES := $(call FILTER_OUT,computadoras-que-aprenden,$(PDF_FILES))
PDF_FILES := $(call FILTER_OUT,guia-navegacion-segura,$(PDF_FILES))




all:
	gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=picuino-anexos.pdf -dBATCH $(PDF_FILES)
	gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=picuino-book.pdf -dBATCH ./picuino-web.pdf ./picuino-anexos.pdf
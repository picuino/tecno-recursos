# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $< first element of dependencies list

IMGDIR=_images

JOINPDF=gswin32.exe -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite
PDFTOPNG=pdftopng -cfg /Bin/xpdf/.xpdfrc -gray -r 600 -aa yes -aaVector yes -freetype yes
OPTIPNG=optipng -quiet -o 6
CONVERT=convert
MOGRIFY=mogrify
CONVERT_OPT=-transparent White


# --------------------------------------------------------------------
# cucabot-plataforma-vistas
#
$(IMGDIR)/cucabot-plataforma-vistas-p1.png: cucabot-plataforma-vistas.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-plataforma-planta.png: $(IMGDIR)/cucabot-plataforma-vistas-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((600,900),(4000,4000))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-plataforma-perfil.png: $(IMGDIR)/cucabot-plataforma-vistas-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((800,4500),(3800,5700))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# cucabot-plataforma-electric
#
$(IMGDIR)/cucabot-plataforma-electric-p1.png: cucabot-plataforma-electric.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-plataforma-schema.png: $(IMGDIR)/cucabot-plataforma-electric-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((750,750),(3600,2250))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-plataforma-cableado.png: $(IMGDIR)/cucabot-plataforma-electric-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((750,3950),(3750,5600))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# cucabot-cero-vistas
#
$(IMGDIR)/cucabot-cero-vistas-p1.png: cucabot-cero-vistas.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-cero-planta.png: $(IMGDIR)/cucabot-cero-vistas-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((500,1000),(4100,3800))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-cero-perfil.png: $(IMGDIR)/cucabot-cero-vistas-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((500,4500),(4100,5650))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# cucabot-cero-electric
#
$(IMGDIR)/cucabot-cero-electric-p1.png: cucabot-cero-electric.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-cero-schema.png: $(IMGDIR)/cucabot-cero-electric-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((750,750),(3600,2250))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-cero-cableado.png: $(IMGDIR)/cucabot-cero-electric-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((750,3950),(3750,5600))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# cucabot-cero-funcion
#
$(IMGDIR)/cucabot-cero-funcion-p1.png: cucabot-cero-funcion.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-cero-funcion-01.png: $(IMGDIR)/cucabot-cero-funcion-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((400,750),(4000,3600))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-cero-funcion-02.png: $(IMGDIR)/cucabot-cero-funcion-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((400,3600),(4000,6450))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# cucabot-murofilo-vistas
#
$(IMGDIR)/cucabot-murofilo-vistas-p1.png: cucabot-murofilo-vistas.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-murofilo-planta.png: $(IMGDIR)/cucabot-murofilo-vistas-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((700,1000),(4200,3950))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# cucabot-murofilo-electric
#
$(IMGDIR)/cucabot-murofilo-electric-p1.png: cucabot-murofilo-electric.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-murofilo-schema.png: $(IMGDIR)/cucabot-murofilo-electric-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((750,750),(3600,2250))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-murofilo-cableado.png: $(IMGDIR)/cucabot-murofilo-electric-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((750,3950),(3750,5600))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# cucabot-murofilo-funcion
#
$(IMGDIR)/cucabot-murofilo-funcion-01-p1.png: cucabot-murofilo-funcion-01.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-murofilo-funcion-02-p1.png: cucabot-murofilo-funcion-02.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-murofilo-funcion-01.png: $(IMGDIR)/cucabot-murofilo-funcion-01-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((400,900),(4300,4200))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-murofilo-funcion-02.png: $(IMGDIR)/cucabot-murofilo-funcion-02-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((400,900),(4300,4200))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# cucabot-pegatortas-electric
#
$(IMGDIR)/cucabot-pegatortas-electric-p1.png: cucabot-pegatortas-electric.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(IMGDIR)/$(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(IMGDIR)/$(basename $<)-p1.png
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-pegatortas-schema.png: $(IMGDIR)/cucabot-pegatortas-electric-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((750,750),(3950,2250))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-pegatortas-cableado.png: $(IMGDIR)/cucabot-pegatortas-electric-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((750,3950),(4250,5600))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# all clean
#
.PHONY: all  clean
all: \
	$(IMGDIR)/cucabot-plataforma-vistas-p1.png \
	$(IMGDIR)/cucabot-plataforma-planta.png \
	$(IMGDIR)/cucabot-plataforma-perfil.png \
	$(IMGDIR)/cucabot-plataforma-electric-p1.png \
	$(IMGDIR)/cucabot-plataforma-schema.png \
	$(IMGDIR)/cucabot-plataforma-cableado.png \
	$(IMGDIR)/cucabot-cero-vistas-p1.png \
	$(IMGDIR)/cucabot-cero-planta.png \
	$(IMGDIR)/cucabot-cero-perfil.png \
	$(IMGDIR)/cucabot-cero-electric-p1.png \
	$(IMGDIR)/cucabot-cero-schema.png \
	$(IMGDIR)/cucabot-cero-cableado.png \
	$(IMGDIR)/cucabot-cero-funcion-p1.png \
	$(IMGDIR)/cucabot-cero-funcion-01.png \
	$(IMGDIR)/cucabot-cero-funcion-02.png \
	$(IMGDIR)/cucabot-murofilo-vistas-p1.png \
	$(IMGDIR)/cucabot-murofilo-planta.png \
	$(IMGDIR)/cucabot-murofilo-electric-p1.png \
	$(IMGDIR)/cucabot-murofilo-schema.png \
	$(IMGDIR)/cucabot-murofilo-cableado.png \
	$(IMGDIR)/cucabot-murofilo-funcion-01-p1.png \
	$(IMGDIR)/cucabot-murofilo-funcion-02-p1.png \
	$(IMGDIR)/cucabot-murofilo-funcion-01.png \
	$(IMGDIR)/cucabot-murofilo-funcion-02.png \
	$(IMGDIR)/cucabot-pegatortas-electric-p1.png \
	$(IMGDIR)/cucabot-pegatortas-schema.png \
	$(IMGDIR)/cucabot-pegatortas-cableado.png \


clean:
	rm -f $(IMGDIR)/cucabot-plataforma-vistas-p1.png
	rm -f $(IMGDIR)/cucabot-plataforma-planta.png
	rm -f $(IMGDIR)/cucabot-plataforma-perfil.png
	rm -f $(IMGDIR)/cucabot-plataforma-electric-p1.png
	rm -f $(IMGDIR)/cucabot-plataforma-schema.png
	rm -f $(IMGDIR)/cucabot-plataforma-cableado.png
	rm -f $(IMGDIR)/cucabot-cero-vistas-p1.png
	rm -f $(IMGDIR)/cucabot-cero-planta.png
	rm -f $(IMGDIR)/cucabot-cero-perfil.png
	rm -f $(IMGDIR)/cucabot-cero-electric-p1.png
	rm -f $(IMGDIR)/cucabot-cero-schema.png
	rm -f $(IMGDIR)/cucabot-cero-cableado.png
	rm -f $(IMGDIR)/cucabot-cero-funcion-p1.png
	rm -f $(IMGDIR)/cucabot-cero-funcion-01.png
	rm -f $(IMGDIR)/cucabot-cero-funcion-02.png
	rm -f $(IMGDIR)/cucabot-murofilo-vistas-p1.png
	rm -f $(IMGDIR)/cucabot-murofilo-planta.png
	rm -f $(IMGDIR)/cucabot-murofilo-electric-p1.png
	rm -f $(IMGDIR)/cucabot-murofilo-schema.png
	rm -f $(IMGDIR)/cucabot-murofilo-cableado.png
	rm -f $(IMGDIR)/cucabot-murofilo-funcion-01-p1.png
	rm -f $(IMGDIR)/cucabot-murofilo-funcion-02-p1.png
	rm -f $(IMGDIR)/cucabot-murofilo-funcion-01.png
	rm -f $(IMGDIR)/cucabot-murofilo-funcion-02.png
	rm -f $(IMGDIR)/cucabot-pegatortas-electric-p1.png
	rm -f $(IMGDIR)/cucabot-pegatortas-schema.png
	rm -f $(IMGDIR)/cucabot-pegatortas-cableado.png
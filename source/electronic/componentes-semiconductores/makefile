# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $< first element of dependencies list

PDFTOPNG=pdftopng -cfg /Bin/xpdf/.xpdfrc -gray -r 600 -aa yes -aaVector yes -freetype yes
OPTIPNG=optipng -quiet -o 6
CONVERT=convert
CONVERT_OPT=-transparent White
MOGRIFY=mogrify


# --------------------------------------------------------------------
#
electronic-semiconductores-portada.png: electronic-semiconductores.pdf
	pdftopng -gray -r 150 -aa yes -aaVector yes -freetype yes $< $(basename $<)
	rm -f $(basename $<)-000002.png
	$(CONVERT) $(basename $<)-000001.png -crop 1240x770+0+0 $(CONVERT_OPT) $@
	rm -f $(basename $<)-000001.png
	$(OPTIPNG) $@

electronic-esquema-semiconductores-p1.png: electronic-esquema-semiconductores.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(basename $<)-p1.png
	$(OPTIPNG) $@

define crop_image
	$(eval GEOMETRY = $(shell python3 -c "import sys; (x0,y0,x1,y1)=eval(sys.argv[1]); \
	print('%dx%d+%d+%d'%(x1-x0,y1-y0,x0,y0))" $(1)))
	$(CONVERT) $(2) -crop $(GEOMETRY) $(CONVERT_OPT) $(3)
endef

electronic-esquema-diodo-01.png: electronic-esquema-semiconductores-p1.png
	$(call crop_image, "(128,128, 830,516)", $^, $@)
	$(OPTIPNG) $@

electronic-esquema-diodo-02.png: electronic-esquema-semiconductores-p1.png
	$(call crop_image, "(128,535, 830,1055)", $^, $@)
	$(OPTIPNG) $@

electronic-esquema-diodo-03.png: electronic-esquema-semiconductores-p1.png
	$(call crop_image, "(128,1072, 830,1596)", $^, $@)
	$(OPTIPNG) $@

electronic-esquema-transistor-01.png: electronic-esquema-semiconductores-p1.png
	$(call crop_image, "(848,128, 1626,548)", $^, $@)
	$(OPTIPNG) $@

electronic-esquema-transistor-02.png: electronic-esquema-semiconductores-p1.png
	$(call crop_image, "(848,563, 1626,982)", $^, $@)
	$(OPTIPNG) $@

electronic-esquema-transistor-03.png: electronic-esquema-semiconductores-p1.png
	$(call crop_image, "(1643,128, 2648,983)", $^, $@)
	$(OPTIPNG) $@

electronic-esquema-transistor-04.png: electronic-esquema-semiconductores-p1.png
	$(call crop_image, "(2664,128, 3800,1088)", $^, $@)
	$(OPTIPNG) $@

electronic-esquema-ldr-01.png: electronic-esquema-semiconductores-p1.png
	$(call crop_image, "(128,1614, 470,1986)", $^, $@)
	$(OPTIPNG) $@


IMAGES = \
	electronic-esquema-diodo-01.png \
	electronic-esquema-diodo-02.png \
	electronic-esquema-diodo-03.png \
	electronic-esquema-transistor-01.png \
	electronic-esquema-transistor-02.png \
	electronic-esquema-transistor-03.png \
	electronic-esquema-transistor-04.png \
	electronic-esquema-ldr-01.png \


.PHONY: all  clean
all: \
	electronic-esquema-semiconductores-p1.png \
	electronic-semiconductores-portada.png \
	$(IMAGES)
   
clean:
	rm -f electronic-esquema-semiconductores-p1.png
	rm -f electronic-semiconductores-portada.png
	rm -f $(IMAGES)

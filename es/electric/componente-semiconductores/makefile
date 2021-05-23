# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $< first element of dependencies list

PDFTOPNG=pdftopng -gray -r 600 -aa yes -aaVector yes -freetype yes
OPTIPNG=optipng -quiet -o 6
CONVERT=convert
CONVERT_OPT=-transparent White
MOGRIFY=mogrify


# --------------------------------------------------------------------
#
electric-semiconductores-portada.png: electric-semiconductores.pdf
	pdftopng -gray -r 150 -aa yes -aaVector yes -freetype yes $< $(basename $<)
	rm -f $(basename $<)-000002.png
	$(CONVERT) $(basename $<)-000001.png -crop 1240x770+0+0 $(CONVERT_OPT) $@
	rm -f $(basename $<)-000001.png
	$(OPTIPNG) $@

electric-esquema-semiconductores-p1.png: electric-esquema-semiconductores.pdf
	$(PDFTOPNG) $< $(basename $<)
	mv $(basename $<)-000001.png  $(basename $<)-p1.png
	$(MOGRIFY) -posterize 16 $(basename $<)-p1.png
	$(OPTIPNG) $@

define crop_image
	$(eval GEOMETRY = $(shell python -c "import sys; (x0,y0,x1,y1)=eval(sys.argv[1]); \
	print('%dx%d+%d+%d'%(x1-x0,y1-y0,x0,y0))" $(1)))
	$(CONVERT) $(2) -crop $(GEOMETRY) $(CONVERT_OPT) $(3)
endef

electric-esquema-diodo-01.png: electric-esquema-semiconductores-p1.png
	$(call crop_image, "(128,128, 830,516)", $^, $@)
	$(OPTIPNG) $@

electric-esquema-diodo-02.png: electric-esquema-semiconductores-p1.png
	$(call crop_image, "(128,535, 830,1055)", $^, $@)
	$(OPTIPNG) $@

electric-esquema-diodo-03.png: electric-esquema-semiconductores-p1.png
	$(call crop_image, "(128,1072, 830,1596)", $^, $@)
	$(OPTIPNG) $@

electric-esquema-transistor-01.png: electric-esquema-semiconductores-p1.png
	$(call crop_image, "(848,128, 1626,548)", $^, $@)
	$(OPTIPNG) $@

electric-esquema-transistor-02.png: electric-esquema-semiconductores-p1.png
	$(call crop_image, "(848,563, 1626,982)", $^, $@)
	$(OPTIPNG) $@

electric-esquema-transistor-03.png: electric-esquema-semiconductores-p1.png
	$(call crop_image, "(1643,128, 2648,983)", $^, $@)
	$(OPTIPNG) $@

electric-esquema-transistor-04.png: electric-esquema-semiconductores-p1.png
	$(call crop_image, "(2664,128, 3800,1088)", $^, $@)
	$(OPTIPNG) $@

electric-esquema-ldr-01.png: electric-esquema-semiconductores-p1.png
	$(call crop_image, "(128,1614, 470,1986)", $^, $@)
	$(OPTIPNG) $@


IMAGES = \
	electric-esquema-diodo-01.png \
	electric-esquema-diodo-02.png \
	electric-esquema-diodo-03.png \
	electric-esquema-transistor-01.png \
	electric-esquema-transistor-02.png \
	electric-esquema-transistor-03.png \
	electric-esquema-transistor-04.png \
	electric-esquema-ldr-01.png \


.PHONY: all  clean
all: \
	electric-esquema-semiconductores-p1.png \
	electric-semiconductores-portada.png \
	$(IMAGES)
   
clean:
	rm -f electric-esquema-semiconductores-p1.png
	rm -f electric-semiconductores-portada.png
	rm -f $(IMAGES)

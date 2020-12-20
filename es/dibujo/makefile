# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $^ first element of dependencies list

SIGN_DER=-font Consolas -pointsize 50 -gravity SouthWest -draw "text 200,120 picuino.com"
SIGN_IZQ=-font Consolas -pointsize 50 -gravity SouthEast -draw "text 200,120 picuino.com"

IMGDIR=_images
THUMBDIR=_thumbs
STATICDIR=../../_static

JOINPDF=gswin32.exe -dNOPAUSE -q -sDEVICE=pdfwrite
PDFTOPNG=pdftopng -gray -r 600 -aa yes -aaVector yes -freetype yes
OPTIPNG=optipng -quiet -o 6
CONVERT=convert
MOGRIFY=mogrify
ZIP=7z a -x!*bak*
PYTHON=python


# --------------------------------------------------------------------
# macros
#
define pdf_vistas_to_png
	$(PDFTOPNG) $(1).pdf $(IMGDIR)/$(1)
	mv -f $(IMGDIR)/$(1)-000001.png  $(IMGDIR)/$(subst vistas,persp,$(1)).png
	mv -f $(IMGDIR)/$(1)-000002.png  $(IMGDIR)/$(1).png
	$(MOGRIFY) -colorspace GRAY -posterize 16 $(IMGDIR)/$(1).png
	$(OPTIPNG) $(IMGDIR)/$(1).png $(IMGDIR)/$(subst vistas,persp,$(1)).png
endef

# crop_image,image.png,suffix,size,sign
define crop_image
	$(eval size=$(shell python -c "import sys; \
	(x0,y0),(x1,y1)=eval(sys.argv[1]); \
	print('%dx%d+%d+%d'%(abs(x0-x1),abs(y0-y1), \
	min(x0,x1), min(y0,y1)));" $(3)))
	$(CONVERT) $(1) -crop $(size) +repage $(4) $(basename $(1))-$(2).png
	$(OPTIPNG) $(basename $(1))-$(2).png
endef

# crop_lamina, source, sign
define crop_lamina
	$(call crop_image,$(1),f1,"(( 302,  444), (2484, 2531))", $(2))
	$(call crop_image,$(1),f2,"((2476,  444), (4657, 2531))", $(2))
	$(call crop_image,$(1),f3,"(( 302, 2523), (2484, 4610))", $(2))
	$(call crop_image,$(1),f4,"((2476, 2523), (4657, 4610))", $(2))
	$(call crop_image,$(1),f5,"(( 302, 4602), (2484, 6689))", $(2))
	$(call crop_image,$(1),f6,"((2476, 4602), (4657, 6689))", $(2))
endef


# --------------------------------------------------------------------
# dibujo-vistas-01
#
dibujo-vistas-der-01.pdf: dibujo-vistas-der-01a.pdf dibujo-vistas-der-01b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

dibujo-vistas-izq-01.pdf: dibujo-vistas-izq-01a.pdf dibujo-vistas-izq-01b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

$(IMGDIR)/dibujo-vistas-der-01.png $(IMGDIR)/dibujo-persp-der-01.png: \
	dibujo-vistas-der-01.pdf
	$(call pdf_vistas_to_png,$(basename $^))

$(IMGDIR)/dibujo-vistas-izq-01.png $(IMGDIR)/dibujo-persp-izq-01.png: \
	dibujo-vistas-izq-01.pdf
	$(call pdf_vistas_to_png,$(basename $^))

dibujo-vistas-der-01-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-der-01-$(f).png)
dibujo-persp-der-01-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-der-01-$(f).png)
dibujo-vistas-izq-01-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-izq-01-$(f).png)
dibujo-persp-izq-01-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-izq-01-$(f).png)

$(dibujo-vistas-der-01-images): $(IMGDIR)/dibujo-vistas-der-01.png
	$(call crop_lamina, $^, $(SIGN_DER))
$(dibujo-persp-der-01-images): $(IMGDIR)/dibujo-persp-der-01.png
	$(call crop_lamina, $^, $(SIGN_DER))
$(dibujo-vistas-izq-01-images): $(IMGDIR)/dibujo-vistas-izq-01.png
	$(call crop_lamina, $^, $(SIGN_IZQ))
$(dibujo-persp-izq-01-images): $(IMGDIR)/dibujo-persp-izq-01.png
	$(call crop_lamina, $^, $(SIGN_IZQ))

dibujo-vistas-der-01-images.zip: \
	$(dibujo-vistas-der-01-images) $(dibujo-persp-der-01-images)
	rm -f $@
	$(ZIP) $@ $^

dibujo-vistas-izq-01-images.zip: \
	$(dibujo-vistas-izq-01-images) $(dibujo-persp-izq-01-images)
	rm -f $@
	$(ZIP) $@ $^


.PHONY: dibujo-vistas-01  clean-dibujo-vistas-01
dibujo-vistas-01: \
	dibujo-vistas-der-01.pdf \
	dibujo-vistas-izq-01.pdf \
	$(IMGDIR)/dibujo-vistas-izq-01.png \
	$(IMGDIR)/dibujo-persp-izq-01.png \
	$(IMGDIR)/dibujo-vistas-der-01.png \
	$(IMGDIR)/dibujo-persp-der-01.png \
	$(dibujo-vistas-der-01-images) \
	$(dibujo-persp-der-01-images) \
	$(dibujo-vistas-izq-01-images) \
	$(dibujo-persp-izq-01-images) \
	dibujo-vistas-der-01-images.zip \
	dibujo-vistas-izq-01-images.zip \


clean-dibujo-vistas-01:
	rm -f $(IMGDIR)/dibujo-vistas-izq-01.png
	rm -f $(IMGDIR)/dibujo-persp-izq-01.png
	rm -f $(IMGDIR)/dibujo-vistas-der-01.png
	rm -f $(IMGDIR)/dibujo-persp-der-01.png
	rm -f $(dibujo-vistas-der-01-images)
	rm -f $(dibujo-persp-der-01-images)
	rm -f $(dibujo-vistas-izq-01-images)
	rm -f $(dibujo-persp-izq-01-images)
	rm -f dibujo-vistas-der-01-images.zip
	rm -f dibujo-vistas-izq-01-images.zip


# --------------------------------------------------------------------
# dibujo-vistas-02
#
dibujo-vistas-der-02.pdf: dibujo-vistas-der-02a.pdf dibujo-vistas-der-02b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

dibujo-vistas-izq-02.pdf: dibujo-vistas-izq-02a.pdf dibujo-vistas-izq-02b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

$(IMGDIR)/dibujo-vistas-der-02.png $(IMGDIR)/dibujo-persp-der-02.png: \
	dibujo-vistas-der-02.pdf
	$(call pdf_vistas_to_png,$(basename $^))

$(IMGDIR)/dibujo-vistas-izq-02.png $(IMGDIR)/dibujo-persp-izq-02.png: \
	dibujo-vistas-izq-02.pdf
	$(call pdf_vistas_to_png,$(basename $^))


dibujo-vistas-der-02-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-der-02-$(f).png)
dibujo-persp-der-02-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-der-02-$(f).png)
dibujo-vistas-izq-02-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-izq-02-$(f).png)
dibujo-persp-izq-02-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-izq-02-$(f).png)

$(dibujo-vistas-der-02-images): $(IMGDIR)/dibujo-vistas-der-02.png
	$(call crop_lamina, $^, $(SIGN_DER))
$(dibujo-persp-der-02-images): $(IMGDIR)/dibujo-persp-der-02.png
	$(call crop_lamina, $^, $(SIGN_DER))
$(dibujo-vistas-izq-02-images): $(IMGDIR)/dibujo-vistas-izq-02.png
	$(call crop_lamina, $^, $(SIGN_IZQ))
$(dibujo-persp-izq-02-images): $(IMGDIR)/dibujo-persp-izq-02.png
	$(call crop_lamina, $^, $(SIGN_IZQ))

dibujo-vistas-der-02-images.zip: \
	$(dibujo-vistas-der-02-images) $(dibujo-persp-der-02-images)
	rm -f $@
	$(ZIP) $@ $^

dibujo-vistas-izq-02-images.zip: \
	$(dibujo-vistas-izq-02-images) $(dibujo-persp-izq-02-images)
	rm -f $@
	$(ZIP) $@ $^


.PHONY: dibujo-vistas-02  clean-dibujo-vistas-02
dibujo-vistas-02: \
	dibujo-vistas-der-02.pdf \
	dibujo-vistas-izq-02.pdf \
	$(IMGDIR)/dibujo-vistas-izq-02.png \
	$(IMGDIR)/dibujo-persp-izq-02.png \
	$(IMGDIR)/dibujo-vistas-der-02.png \
	$(IMGDIR)/dibujo-persp-der-02.png \
	$(dibujo-vistas-der-02-images) \
	$(dibujo-persp-der-02-images) \
	$(dibujo-vistas-izq-02-images) \
	$(dibujo-persp-izq-02-images) \
	dibujo-vistas-der-02-images.zip \
	dibujo-vistas-izq-02-images.zip \


clean-dibujo-vistas-02:
	rm -f $(IMGDIR)/dibujo-vistas-izq-02.png
	rm -f $(IMGDIR)/dibujo-persp-izq-02.png
	rm -f $(IMGDIR)/dibujo-vistas-der-02.png
	rm -f $(IMGDIR)/dibujo-persp-der-02.png
	rm -f $(dibujo-vistas-der-02-images)
	rm -f $(dibujo-persp-der-02-images)
	rm -f $(dibujo-vistas-izq-02-images)
	rm -f $(dibujo-persp-izq-02-images)
	rm -f dibujo-vistas-der-02-images.zip
	rm -f dibujo-vistas-izq-02-images.zip


# --------------------------------------------------------------------
# dibujo-vistas-03
#
dibujo-vistas-der-03.pdf: dibujo-vistas-der-03a.pdf dibujo-vistas-der-03b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

dibujo-vistas-izq-03.pdf: dibujo-vistas-izq-03a.pdf dibujo-vistas-izq-03b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

$(IMGDIR)/dibujo-vistas-der-03.png $(IMGDIR)/dibujo-persp-der-03.png: \
	dibujo-vistas-der-03.pdf
	$(call pdf_vistas_to_png,$(basename $^))

$(IMGDIR)/dibujo-vistas-izq-03.png $(IMGDIR)/dibujo-persp-izq-03.png: \
	dibujo-vistas-izq-03.pdf
	$(call pdf_vistas_to_png,$(basename $^))


dibujo-vistas-der-03-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-der-03-$(f).png)
dibujo-persp-der-03-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-der-03-$(f).png)
dibujo-vistas-izq-03-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-izq-03-$(f).png)
dibujo-persp-izq-03-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-izq-03-$(f).png)

$(dibujo-vistas-der-03-images): $(IMGDIR)/dibujo-vistas-der-03.png
	$(call crop_lamina, $^, $(SIGN_DER))
$(dibujo-persp-der-03-images): $(IMGDIR)/dibujo-persp-der-03.png
	$(call crop_lamina, $^, $(SIGN_DER))
$(dibujo-vistas-izq-03-images): $(IMGDIR)/dibujo-vistas-izq-03.png
	$(call crop_lamina, $^, $(SIGN_IZQ))
$(dibujo-persp-izq-03-images): $(IMGDIR)/dibujo-persp-izq-03.png
	$(call crop_lamina, $^, $(SIGN_IZQ))

dibujo-vistas-der-03-images.zip: \
	$(dibujo-vistas-der-03-images) $(dibujo-persp-der-03-images)
	rm -f $@
	$(ZIP) $@ $^

dibujo-vistas-izq-03-images.zip: \
	$(dibujo-vistas-izq-03-images) $(dibujo-persp-izq-03-images)
	rm -f $@
	$(ZIP) $@ $^


.PHONY: dibujo-vistas-03  clean-dibujo-vistas-03
dibujo-vistas-03: \
	dibujo-vistas-der-03.pdf \
	dibujo-vistas-izq-03.pdf \
	$(IMGDIR)/dibujo-vistas-izq-03.png \
	$(IMGDIR)/dibujo-persp-izq-03.png \
	$(IMGDIR)/dibujo-vistas-der-03.png \
	$(IMGDIR)/dibujo-persp-der-03.png \
	$(dibujo-vistas-der-03-images) \
	$(dibujo-persp-der-03-images) \
	$(dibujo-vistas-izq-03-images) \
	$(dibujo-persp-izq-03-images) \
	dibujo-vistas-der-03-images.zip \
	dibujo-vistas-izq-03-images.zip \


clean-dibujo-vistas-03:
	rm -f $(IMGDIR)/dibujo-vistas-izq-03.png
	rm -f $(IMGDIR)/dibujo-persp-izq-03.png
	rm -f $(IMGDIR)/dibujo-vistas-der-03.png
	rm -f $(IMGDIR)/dibujo-persp-der-03.png
	rm -f $(dibujo-vistas-der-03-images)
	rm -f $(dibujo-persp-der-03-images)
	rm -f $(dibujo-vistas-izq-03-images)
	rm -f $(dibujo-persp-izq-03-images)
	rm -f dibujo-vistas-der-03-images.zip
	rm -f dibujo-vistas-izq-03-images.zip


# --------------------------------------------------------------------
# dibujo-vistas-04
#
dibujo-vistas-der-04.pdf: dibujo-vistas-der-04a.pdf dibujo-vistas-der-04b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

dibujo-vistas-izq-04.pdf: dibujo-vistas-izq-04a.pdf dibujo-vistas-izq-04b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

$(IMGDIR)/dibujo-vistas-der-04.png $(IMGDIR)/dibujo-persp-der-04.png: \
	dibujo-vistas-der-04.pdf
	$(call pdf_vistas_to_png,$(basename $^))

$(IMGDIR)/dibujo-vistas-izq-04.png $(IMGDIR)/dibujo-persp-izq-04.png: \
	dibujo-vistas-izq-04.pdf
	$(call pdf_vistas_to_png,$(basename $^))


dibujo-vistas-der-04-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-der-04-$(f).png)
dibujo-persp-der-04-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-der-04-$(f).png)
dibujo-vistas-izq-04-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-izq-04-$(f).png)
dibujo-persp-izq-04-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-izq-04-$(f).png)

$(dibujo-vistas-der-04-images): $(IMGDIR)/dibujo-vistas-der-04.png
	$(call crop_lamina, $^, $(SIGN_DER))
$(dibujo-persp-der-04-images): $(IMGDIR)/dibujo-persp-der-04.png
	$(call crop_lamina, $^, $(SIGN_DER))
$(dibujo-vistas-izq-04-images): $(IMGDIR)/dibujo-vistas-izq-04.png
	$(call crop_lamina, $^, $(SIGN_IZQ))
$(dibujo-persp-izq-04-images): $(IMGDIR)/dibujo-persp-izq-04.png
	$(call crop_lamina, $^, $(SIGN_IZQ))

dibujo-vistas-der-04-images.zip: \
	$(dibujo-vistas-der-04-images) $(dibujo-persp-der-04-images)
	rm -f $@
	$(ZIP) $@ $^

dibujo-vistas-izq-04-images.zip: \
	$(dibujo-vistas-izq-04-images) $(dibujo-persp-izq-04-images)
	rm -f $@
	$(ZIP) $@ $^


.PHONY: dibujo-vistas-04  clean-dibujo-vistas-04
dibujo-vistas-04: \
	dibujo-vistas-der-04.pdf \
	dibujo-vistas-izq-04.pdf \
	$(IMGDIR)/dibujo-vistas-izq-04.png \
	$(IMGDIR)/dibujo-persp-izq-04.png \
	$(IMGDIR)/dibujo-vistas-der-04.png \
	$(IMGDIR)/dibujo-persp-der-04.png \
	$(dibujo-vistas-der-04-images) \
	$(dibujo-persp-der-04-images) \
	$(dibujo-vistas-izq-04-images) \
	$(dibujo-persp-izq-04-images) \
	dibujo-vistas-der-04-images.zip \
	dibujo-vistas-izq-04-images.zip \


clean-dibujo-vistas-04:
	rm -f $(IMGDIR)/dibujo-vistas-izq-04.png
	rm -f $(IMGDIR)/dibujo-persp-izq-04.png
	rm -f $(IMGDIR)/dibujo-vistas-der-04.png
	rm -f $(IMGDIR)/dibujo-persp-der-04.png
	rm -f $(dibujo-vistas-der-04-images)
	rm -f $(dibujo-persp-der-04-images)
	rm -f $(dibujo-vistas-izq-04-images)
	rm -f $(dibujo-persp-izq-04-images)
	rm -f dibujo-vistas-der-04-images.zip
	rm -f dibujo-vistas-izq-04-images.zip



# --------------------------------------------------------------------
# dibujo-vistas-05
#
dibujo-vistas-der-05.pdf: dibujo-vistas-der-05a.pdf dibujo-vistas-der-05b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

$(IMGDIR)/dibujo-vistas-der-05.png $(IMGDIR)/dibujo-persp-der-05.png: \
	dibujo-vistas-der-05.pdf
	$(call pdf_vistas_to_png,$(basename $^))

dibujo-vistas-der-05-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-der-05-$(f).png)
dibujo-persp-der-05-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-der-05-$(f).png)

$(dibujo-vistas-der-05-images): $(IMGDIR)/dibujo-vistas-der-05.png
	$(call crop_lamina, $^, $(SIGN_DER))
$(dibujo-persp-der-05-images): $(IMGDIR)/dibujo-persp-der-05.png
	$(call crop_lamina, $^, $(SIGN_DER))

dibujo-vistas-der-05-images.zip: \
	$(dibujo-vistas-der-05-images) $(dibujo-persp-der-05-images)
	rm -f $@
	$(ZIP) $@ $^


dibujo-vistas-izq-05.pdf: dibujo-vistas-izq-05a.pdf dibujo-vistas-izq-05b.pdf
	$(JOINPDF) -sOutputFile=$@ -dBATCH $^

$(IMGDIR)/dibujo-vistas-izq-05.png $(IMGDIR)/dibujo-persp-izq-05.png: \
	dibujo-vistas-izq-05.pdf
	$(call pdf_vistas_to_png,$(basename $^))

dibujo-vistas-izq-05-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-vistas-izq-05-$(f).png)
dibujo-persp-izq-05-images=\
	$(foreach f, f1 f2 f3 f4 f5 f6, $(IMGDIR)/dibujo-persp-izq-05-$(f).png)

$(dibujo-vistas-izq-05-images): $(IMGDIR)/dibujo-vistas-izq-05.png
	$(call crop_lamina, $^, $(SIGN_IZQ))
$(dibujo-persp-izq-05-images): $(IMGDIR)/dibujo-persp-izq-05.png
	$(call crop_lamina, $^, $(SIGN_IZQ))

dibujo-vistas-izq-05-images.zip: \
	$(dibujo-vistas-izq-05-images) $(dibujo-persp-izq-05-images)
	rm -f $@
	$(ZIP) $@ $^


.PHONY: dibujo-vistas-05  clean-dibujo-vistas-05
dibujo-vistas-05: \
	dibujo-vistas-der-05.pdf \
	$(IMGDIR)/dibujo-vistas-der-05.png \
	$(IMGDIR)/dibujo-persp-der-05.png \
	$(dibujo-vistas-der-05-images) \
	$(dibujo-persp-der-05-images) \
	dibujo-vistas-der-05-images.zip \
	dibujo-vistas-izq-05.pdf \
	$(IMGDIR)/dibujo-vistas-izq-05.png \
	$(IMGDIR)/dibujo-persp-izq-05.png \
	$(dibujo-vistas-izq-05-images) \
	$(dibujo-persp-izq-05-images) \
	dibujo-vistas-izq-05-images.zip \


clean-dibujo-vistas-05:
	rm -f $(IMGDIR)/dibujo-vistas-der-05.png
	rm -f $(IMGDIR)/dibujo-persp-der-05.png
	rm -f $(dibujo-vistas-der-05-images)
	rm -f $(dibujo-persp-der-05-images)
	rm -f dibujo-vistas-der-05-images.zip
	rm -f $(IMGDIR)/dibujo-vistas-izq-05.png
	rm -f $(IMGDIR)/dibujo-persp-izq-05.png
	rm -f $(dibujo-vistas-izq-05-images)
	rm -f $(dibujo-persp-izq-05-images)
	rm -f dibujo-vistas-izq-05-images.zip


# --------------------------------------------------------------------
# dibujo-bocetos
#
DIBUJO_BOCETOS_IMGS=$(wildcard $(IMGDIR)/dibujo-boceto-*.png)
DIBUJO_BOCETOS_THUMBS=$(subst $(IMGDIR),$(THUMBDIR),$(DIBUJO_BOCETOS_IMGS))

$(THUMBDIR)/dibujo-boceto-%.png: $(IMGDIR)/dibujo-boceto-%.png
	$(CONVERT) $^ -resize 240x240 +repage $@
	$(OPTIPNG) $@


dibujo-bocetos.zip: $(DIBUJO_BOCETOS_IMGS)
	rm -f $@
	$(ZIP) $@ $^


.PHONY: dibujo-bocetos
dibujo-bocetos: \
	$(DIBUJO_BOCETOS_THUMBS) \
	dibujo-bocetos.zip \


clean-dibujo-bocetos:
	rm -f $(DIBUJO_BOCETOS_THUMBS)
	rm -f dibujo-bocetos.zip


# 'fname': r'dibujo-boceto-b\.png',
# 'crops':
#    ((420, 281), (1240, 992)), 'name':'-01'
#    ((1279, 465), (2140, 988)), 'name':'-02'
#    ((342, 1488), (1038, 1015)), 'name':'-03'
#    ((1163, 1627), (2142, 1058)), 'name':'-04'
#
# 'fname': r'dibujo-boceto-a\.png',
# 'crops':
#    ((1444, 990), (2261,208)), 'name':'-05'
#    ((2339, 966), (1443, 1534)), 'name':'-06'
#    ((1157, 3072), (1894, 2457)), 'name':'-07'



# --------------------------------------------------------------------
# dibujo-plantillas
#

define pdf_plantilla_to_png
	$(PDFTOPNG) $(1).pdf $(1)
	mv -f $(1)-000001.png  $(IMGDIR)/$(1).png
	$(MOGRIFY) -colorspace GRAY -posterize 32 $(IMGDIR)/$(1).png
	$(OPTIPNG) $(IMGDIR)/$(1).png
endef

$(IMGDIR)/dibujo-plantilla-isometrica.png: dibujo-plantilla-isometrica.pdf
	$(call pdf_plantilla_to_png,$(basename $^))

$(IMGDIR)/dibujo-plantilla-isometrica-100x100.png: $(IMGDIR)/dibujo-plantilla-isometrica.png
	$(call crop_image,$^,100x100,"((318,307),(2691,2669))")

$(IMGDIR)/dibujo-plantilla-cuadriculada.png: dibujo-plantilla-cuadriculada.pdf
	$(call pdf_plantilla_to_png,$(basename $^))

$(IMGDIR)/dibujo-plantilla-cuadriculada-100x100.png: $(IMGDIR)/dibujo-plantilla-cuadriculada.png
	$(call crop_image,$^,100x100,"((352,352),(2719,2719))")


dibujo-plantillas-images.zip: \
	$(IMGDIR)/dibujo-plantilla-isometrica.png \
	$(IMGDIR)/dibujo-plantilla-isometrica-100x100.png \
	$(IMGDIR)/dibujo-plantilla-cuadriculada.png \
	$(IMGDIR)/dibujo-plantilla-cuadriculada-100x100.png \

	rm -f $@
	$(ZIP) $@ $^


.PHONY: dibujo-plantillas  clean-dibujo-plantillas
dibujo-plantillas: \
	$(IMGDIR)/dibujo-plantilla-isometrica.png \
	$(IMGDIR)/dibujo-plantilla-cuadriculada.png \
	dibujo-plantillas-images.zip \


clean-dibujo-plantillas:
	rm -f $(IMGDIR)/dibujo-plantilla-isometrica.png
	rm -f $(IMGDIR)/dibujo-plantilla-isometrica-100x100.png
	rm -f $(IMGDIR)/dibujo-plantilla-cuadriculada.png
	rm -f $(IMGDIR)/dibujo-plantilla-cuadriculada-100x100.png
	rm -f dibujo-plantillas-images.zip


# --------------------------------------------------------------------
# make all
#
.PHONY: all clean
all: \
	dibujo-vistas-01 \
	dibujo-vistas-02 \
	dibujo-vistas-03 \
	dibujo-vistas-04 \
	dibujo-vistas-05 \
	dibujo-bocetos \
	dibujo-plantillas \

clean: \
	clean-dibujo-vistas-01 \
	clean-dibujo-vistas-02 \
	clean-dibujo-vistas-03 \
	clean-dibujo-vistas-04 \
	clean-dibujo-vistas-05 \
	clean-dibujo-bocetos \
	clean-dibujo-plantillas \

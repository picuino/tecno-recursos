# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $< first element of dependencies list

IMGDIR=_images
SOURCES=_sources

LIBS=$(wildcard _symbol_lib/*) $(wildcard Licen*)

JOINPDF=gswin32.exe -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite
PDFTOPNG=pdftopng -cfg /Bin/xpdf/.xpdfrc -gray -r 600 -aa yes -aaVector yes -freetype yes
OPTIPNG=optipng -quiet -o 6
CONVERT=convert
CONVERT_OPT=-transparent White
MOGRIFY=mogrify
ZIP=7z a


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
	"((860,760),(4030,2240))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@

$(IMGDIR)/cucabot-cero-cableado.png: $(IMGDIR)/cucabot-cero-electric-p1.png
	$(eval crop = $(shell python3 -c "import sys; \
	((x0,y0),(x1,y1))=eval(sys.argv[1]);\
	print('%dx%d+%d+%d' % \
	(abs(x0-x1),abs(y0-y1),min(x0,x1),min(y0,y1)))" \
	"((440,4200),(3800,6050))" ))
	$(CONVERT) $^ -crop $(crop) $(CONVERT_OPT) $@
	$(OPTIPNG) $@



# --------------------------------------------------------------------
# all clean
#
.PHONY: all  clean
all: \
	$(IMGDIR)/cucabot-cero-electric-p1.png \
	$(IMGDIR)/cucabot-cero-schema.png \
	$(IMGDIR)/cucabot-cero-cableado.png \


clean:
	rm -f $(IMGDIR)/electric-simbolos-nombres-p1.png
	rm -f $(IMGDIR)/cucabot-cero-schema.png
	rm -f $(IMGDIR)/cucabot-cero-cableado.png

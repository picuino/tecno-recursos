# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $^ first element of dependencies list

PDFTOPNG=pdftopng -cfg /Bin/xpdf/.xpdfrc -r 300 -aa yes -aaVector yes -freetype yes
OPTIPNG=optipng -quiet -o 6
CONVERT=convert
MOGRIFY=mogrify

# --------------------------------------------------------------------
#
electric-sistema-espanol-2024.png: electric-sistema-espanol-2024-graph.pdf
	$(PDFTOPNG) $^ $(basename $^)
	mv -f $(basename $^)-000001.png  $@
	$(MOGRIFY) -resize 1920x -colorspace RGB -posterize 256 $@
	$(OPTIPNG)  $@

diagrama-circular.png: diagrama-circular.pdf
	$(PDFTOPNG) $^ $(basename $^)
	mv -f $(basename $^)-000001.png  $@
	$(MOGRIFY) -resize 1024x -crop 680x680+170+50 -colorspace Gray -posterize 16 $@
	$(OPTIPNG)  $@


.PHONY: all clean
all: \
	electric-sistema-espanol-2024.png \
	diagrama-circular.png

clean:
	rm -f electric-sistema-espanol-2024.png
	rm -f diagrama-circular.png


# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $^ first element of dependencies list

PDFTOPNG=pdftopng -r 300 -aa yes -aaVector yes -freetype yes
OPTIPNG=optipng -quiet -o 6
CONVERT=convert
MOGRIFY=mogrify

# --------------------------------------------------------------------
#
sistema-electrico-espanol-2020.png: sistema-electrico-espanol-2020.pdf
	$(PDFTOPNG) $^ $(basename $^)
	mv -f $(basename $^)-000001.png  $@
	$(MOGRIFY) -resize 1920x -colorspace RGB -posterize 256 $@
	$(OPTIPNG)  $@

diagrama-circular.png: diagrama-circular.pdf
	$(PDFTOPNG) $^ $(basename $^)
	mv -f $(basename $^)-000001.png  $@
	$(MOGRIFY) -resize 1024x -crop 1024x880+0+100 -colorspace Gray -posterize 16 $@
	$(OPTIPNG)  $@


.PHONY: all clean
all: \
	sistema-electrico-espanol-2020.png \
	diagrama-circular.png

clean:
	rm -f sistema-electrico-espanol-2020.png
	rm -f diagrama-circular.png


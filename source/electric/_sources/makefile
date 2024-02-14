# HELP
#   object: dependencies
#   $@ object
#   $^ dependencies
#   $< first element of dependencies list


%.png: %.svg
	convert.exe -density 300 $< -transparent White $@
	optipng -quiet -o 6  $@


.PHONY: all clean

all: \
	electric-resistencia-02.png \
	electric-resistencia-02.en.png \
	electric-sch-03a.png \
	electric-sch-03b.png \
	electric-sch-03c.png \
	electric-sch-03d.png \
	electric-sch-04a.png \
	electric-sch-04b.png \
   

clean:
	rm -f $(IMAGES)
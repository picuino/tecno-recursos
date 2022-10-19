# --------------------------------------------------------------------
# Laberinto
#
LABERINTO_JPEG=$(wildcard Laberinto*.jpeg)
LABERINTO_PNG=$(foreach f, $(LABERINTO_JPEG), $(basename $f).png)

%.png: %.jpeg
	convert $< -crop 403x403+13+13 -fill none -stroke black -strokewidth 3 -draw "rectangle 0,0 401,401" -resize 200% -threshold 80% $@


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean 
all: \
	$(LABERINTO_PNG) \

clean:
	rm -f $(LABERINTO_PNG)

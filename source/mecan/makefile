IMAGES=_images
THUMBS=_thumbs

IMAGEFILES= $(wildcard $(IMAGES)/*.png) $(wildcard $(IMAGES)/*.jpg)
THUMBFILES= $(foreach f, $(IMAGEFILES), $(THUMBS)/$(notdir $(f)))

CONVERT=convert
OPTIPNG=optipng -quiet -o 6


# --------------------------------------------------------------------
# POLEAS IMAGEN CON TAMAÑO MITAD
#
RESIZE_POLEAS=35%

$(IMAGES)/mecan-poleas-01r.png: $(IMAGES)/mecan-poleas-01.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-02r.png: $(IMAGES)/mecan-poleas-02.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-03r.png: $(IMAGES)/mecan-poleas-03.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-04r.png: $(IMAGES)/mecan-poleas-04.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-05r.png: $(IMAGES)/mecan-poleas-05.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-06r.png: $(IMAGES)/mecan-poleas-06.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-07r.png: $(IMAGES)/mecan-poleas-07.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-08r.png: $(IMAGES)/mecan-poleas-08.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-09r.png: $(IMAGES)/mecan-poleas-09.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-10r.png: $(IMAGES)/mecan-poleas-10.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-11r.png: $(IMAGES)/mecan-poleas-11.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-12r.png: $(IMAGES)/mecan-poleas-12.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-01br.png: $(IMAGES)/mecan-poleas-01b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-02br.png: $(IMAGES)/mecan-poleas-02b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-03br.png: $(IMAGES)/mecan-poleas-03b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-04br.png: $(IMAGES)/mecan-poleas-04b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-05br.png: $(IMAGES)/mecan-poleas-05b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-06br.png: $(IMAGES)/mecan-poleas-06b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-07br.png: $(IMAGES)/mecan-poleas-07b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-08br.png: $(IMAGES)/mecan-poleas-08b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-09br.png: $(IMAGES)/mecan-poleas-09b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-10br.png: $(IMAGES)/mecan-poleas-10b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-11br.png: $(IMAGES)/mecan-poleas-11b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

$(IMAGES)/mecan-poleas-12br.png: $(IMAGES)/mecan-poleas-12b.png
	$(CONVERT) $< -resize $(RESIZE_POLEAS) $@

.PHONY: clean_poleas

clean_poleas:
	rm -f $(IMAGES)/mecan-poleas-01r.png
	rm -f $(IMAGES)/mecan-poleas-02r.png
	rm -f $(IMAGES)/mecan-poleas-03r.png
	rm -f $(IMAGES)/mecan-poleas-04r.png
	rm -f $(IMAGES)/mecan-poleas-05r.png
	rm -f $(IMAGES)/mecan-poleas-06r.png
	rm -f $(IMAGES)/mecan-poleas-07r.png
	rm -f $(IMAGES)/mecan-poleas-08r.png
	rm -f $(IMAGES)/mecan-poleas-09r.png
	rm -f $(IMAGES)/mecan-poleas-10r.png
	rm -f $(IMAGES)/mecan-poleas-11r.png
	rm -f $(IMAGES)/mecan-poleas-12r.png
	rm -f $(IMAGES)/mecan-poleas-01br.png
	rm -f $(IMAGES)/mecan-poleas-02br.png
	rm -f $(IMAGES)/mecan-poleas-03br.png
	rm -f $(IMAGES)/mecan-poleas-04br.png
	rm -f $(IMAGES)/mecan-poleas-05br.png
	rm -f $(IMAGES)/mecan-poleas-06br.png
	rm -f $(IMAGES)/mecan-poleas-07br.png
	rm -f $(IMAGES)/mecan-poleas-08br.png
	rm -f $(IMAGES)/mecan-poleas-09br.png
	rm -f $(IMAGES)/mecan-poleas-10br.png
	rm -f $(IMAGES)/mecan-poleas-11br.png
	rm -f $(IMAGES)/mecan-poleas-12br.png


# --------------------------------------------------------------------
# THUMBNAILS
#
$(THUMBS)/%.png: $(IMAGES)/%.png
	$(CONVERT) $<  -strip -resize 480x360\> $@
	$(OPTIPNG) $@

$(THUMBS)/%.jpg: $(IMAGES)/%.jpg
	$(CONVERT) $<  -strip -resize 480x360\> $@


# --------------------------------------------------------------------
# ALL FILES
#
.PHONY: all clean

all: \
	$(IMAGES)/mecan-poleas-01r.png \
	$(IMAGES)/mecan-poleas-02r.png \
	$(IMAGES)/mecan-poleas-03r.png \
	$(IMAGES)/mecan-poleas-04r.png \
	$(IMAGES)/mecan-poleas-05r.png \
	$(IMAGES)/mecan-poleas-06r.png \
	$(IMAGES)/mecan-poleas-07r.png \
	$(IMAGES)/mecan-poleas-08r.png \
	$(IMAGES)/mecan-poleas-09r.png \
	$(IMAGES)/mecan-poleas-10r.png \
	$(IMAGES)/mecan-poleas-11r.png \
	$(IMAGES)/mecan-poleas-12r.png \
	$(IMAGES)/mecan-poleas-01br.png \
	$(IMAGES)/mecan-poleas-02br.png \
	$(IMAGES)/mecan-poleas-03br.png \
	$(IMAGES)/mecan-poleas-04br.png \
	$(IMAGES)/mecan-poleas-05br.png \
	$(IMAGES)/mecan-poleas-06br.png \
	$(IMAGES)/mecan-poleas-07br.png \
	$(IMAGES)/mecan-poleas-08br.png \
	$(IMAGES)/mecan-poleas-09br.png \
	$(IMAGES)/mecan-poleas-10br.png \
	$(IMAGES)/mecan-poleas-11br.png \
	$(IMAGES)/mecan-poleas-12br.png \
	$(THUMBFILES) \


clean:
	rm -f $(THUMBFILES)

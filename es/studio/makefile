RSTMACRO=studio-macros.txt
RSTSOURCES=$(wildcard *.txt)
RSTSOURCES:=$(filter-out $(RSTMACRO), $(RSTSOURCES))
RSTFILES=$(foreach f, $(RSTSOURCES), ../$(basename $f).rst)

#../%.rst: %.txt  $(RSTMACRO)
#	python make_rst.py  $<  $@


# --------------------------------------------------------------------
# ALL FILES
#

#.PHONY: all clean 
#all: \
#	$(RSTFILES)

#clean:
#	rm -f $(RSTFILES)

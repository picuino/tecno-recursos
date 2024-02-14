SUBDIRS:=$(foreach f, $(wildcard */.), $(basename $f))

.PHONY: all clean

all:
	@for dir in $(SUBDIRS); do \
		echo ; echo "make all -C " $$dir; \
		$(MAKE) all --no-print-directory -C $$dir; \
	done \


clean:
	@for dir in $(SUBDIRS); do \
		echo ; echo "make all -C " $$dir; \
		$(MAKE) clean --no-print-directory -C $$dir; \
	done \
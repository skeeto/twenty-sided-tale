PANDOC ?= pandoc
PANDOC_FLAGS = --self-contained --smart
COVER = images/map_mar_tesaro.gif

all : twenty-sided-tale.html twenty-sided-tale.epub

twenty-sided-tale.html : twenty-sided-tale.markdown twenty-sided-tale.css
	$(PANDOC) -c reset.css -c $(word 2,$^) $(PANDOC_FLAGS) -o $@ $<

twenty-sided-tale.epub : twenty-sided-tale.markdown epub.css
	$(PANDOC) -t epub3 -o $@ \
	          --epub-stylesheet=epub.css \
	       	  --epub-cover-image=$(COVER) \
	          $(PANDOC_FLAGS) $<

clean :
	$(RM) twenty-sided-tale.html twenty-sided-tale.epub

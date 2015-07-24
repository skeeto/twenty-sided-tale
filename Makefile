PANDOC ?= pandoc
PANDOC_FLAGS = --self-contained --smart

all : twenty-sided-tale.html twenty-sided-tale.epub

twenty-sided-tale.html : twenty-sided-tale.markdown twenty-sided-tale.css
	$(PANDOC) -t html5 -o $@ \
	          -c reset.css -c twenty-sided-tale.css \
	          $(PANDOC_FLAGS) $<

twenty-sided-tale.epub : twenty-sided-tale.markdown epub.css cover.png
	$(PANDOC) -t epub3 -o $@ \
	          --epub-stylesheet=epub.css \
	       	  --epub-cover-image=cover.png \
	          $(PANDOC_FLAGS) $<

clean :
	$(RM) twenty-sided-tale.html twenty-sided-tale.epub

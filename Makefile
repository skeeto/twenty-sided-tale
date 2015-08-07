PANDOC ?= pandoc
PANDOC_FLAGS = --self-contained --smart

all : twenty-sided-tale.html twenty-sided-tale.epub

twenty-sided-tale.html : twenty-sided-tale.markdown metadata.markdown twenty-sided-tale.css
	$(PANDOC) -t html5 -o $@ metadata.markdown \
	          -c reset.css -c twenty-sided-tale.css \
	          $(PANDOC_FLAGS) $<

twenty-sided-tale.epub : twenty-sided-tale.markdown metadata.yaml epub.css cover.png
	$(PANDOC) -t epub3 -o $@ metadata.yaml \
	          $(PANDOC_FLAGS) $<

clean :
	$(RM) twenty-sided-tale.html twenty-sided-tale.epub

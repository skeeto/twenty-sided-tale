PANDOC ?= pandoc

all : twenty-sided-tale.html twenty-sided-tale.epub

twenty-sided-tale.html : twenty-sided-tale.markdown twenty-sided-tale.css
	$(PANDOC) -c reset.css -c $(word 2,$^) --self-contained -o $@ $<

twenty-sided-tale.epub : twenty-sided-tale.markdown
	$(PANDOC) -t epub3 --epub-stylesheet=epub.css --self-contained -o $@ $<

clean :
	$(RM) twenty-sided-tale.html twenty-sided-tale.epub

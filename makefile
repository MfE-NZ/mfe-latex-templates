SHELL := /bin/bash

all: mfe.pdf

mfe.sty: mfe.ins mfe.dtx 
	latex mfe.ins

mfe.pdf: mfe.dtx mfe.sty test.bib
	xelatex mfe.dtx

pkg:
	debuild -us -uc

.PHONY: cleanClass clean

cleanClass:
	rm -f mfe.sty mfe.pdf \
		mfe-far.cls mfe-aebr.cls

clean: cleanClass
	rm -f  *.pdf *.aux *.log *.out *.backup *.glo *.idx \
		 *.fdb_latexmk *.fls *-self.bib *.toc *.snm *.nav \
		 *.ilg *-blx.bib *.run.xml *.bbl *.ind *.blg *.bcf \
		 *.xwm

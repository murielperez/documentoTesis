all:documento.pdf

documento.pdf:documento.tex tesisMatematicas.bib
	pdflatex documento.tex
	pdflatex documento.tex
	bibtex documento
	pdflatex documento.tex
	pdflatex documento.tex
tesisMatematicas.bib:documento.tex
	pdflatex documento.tex
	bibtex documento
clean:
	rm *.aux *.log *.bbl *.blg *.toc

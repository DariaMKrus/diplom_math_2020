SHELL=/bin/bash

DOC = presentation

all:
	pdflatex $(DOC).tex
	pdflatex $(DOC).tex

overfull:
	@pdflatex $(DOC) | grep -va Underfull | grep  -a . | grep -aC 12 Overfull
	@pdflatex $(DOC) | grep -c Overfull

clean:
	rm -f *.aux *.snm *.nav *.log *.out *.toc *.fls *.gz *_latexmk *.synctex.gz

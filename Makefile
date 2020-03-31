SHELL=/bin/bash
file = diplom.tex

all: 
	pdflatex $(file)
	pdflatex $(file)

overfull:
	@pdflatex $(file) | grep -va Underfull | grep  -a . | grep -aC 12 Overfull
	@pdflatex $(file) | grep -c Overfull

clean:
	rm -f ./grap/*.pdf
	rm -f *.aux *.bbl *.bcf *.blg *.log *out *.run.xml *.toc

SHELL=/bin/bash
file = diplom.tex

all: 
	# titlepage
	pdflatex diplom.tex
	biber diplom
	pdflatex $(file)
	pdflatex $(file)

pdflatex:
	@pdflatex diplom.tex

titlepage:
	@sed -e ${SED} titlepage.fodt > tp-output.fodt
	libreoffice --headless --convert-to pdf tp-output.fodt

overfull:
	@pdflatex $(file) | grep -va Underfull | grep  -a . | grep -aC 12 Overfull
	@pdflatex $(file) | grep -c Overfull

clean:
	rm -f ./grap/*.pdf
	rm -f *.aux *.bbl *.bcf *.blg *.log *out *.run.xml *.toc

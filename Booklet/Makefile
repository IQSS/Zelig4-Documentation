STY=ZeligDoc.sty
TEX=booklet.tex installation.tex

PDF=$(TEX:.tex=.pdf)
AUX=$(PDF:.pdf=.aux)
LOG=$(PDF:.pdf=.log)
OUT=$(PDF:.pdf=.out)
TOC=$(PDF:.pdf=.toc)

BOOKLET_INCLUDES=Rapid-Development-Zelig.tex describe.tex zelig2.tex parameters.tex qi.tex zelig_style_guide.tex frequently-asked-questions.tex

all: $(TEX)
	-pdflatex booklet
	-bibtex booklet
	-pdflatex booklet
	-pdflatex booklet
	-pdflatex installation
	-bibtex installation
	-pdflatex installation
	-pdflatex installation
	-pdflatex frequently-asked-questions
	-bibtex frequently-asked-questions
	-pdflatex frequently-asked-questions
	-pdflatex frequently-asked-questions

booklet.pdf: booklet.tex ZeligDoc.sty $(BOOKLET_INCLUDES)
	pdflatex booklet

installation.pdf: install.tex
	pdflatex installation

clean:
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	rm -f *.bbl
	rm -f *.blg

cleaner:
	rm -f *.pdf
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.toc
	rm -f *.bbl
	rm -f *.blg

update:
	git pull origin master

commit:
	git pull origin master
	git add .
	git commit -m "Updating latex documentation automatically"
	git push -u origin master

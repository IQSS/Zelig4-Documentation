STY=ZeligDoc.sty
TEX=booklet.tex installation.tex

PDF=$(TEX:.tex=.pdf)
AUX=$(PDF:.pdf=.aux)
LOG=$(PDF:.pdf=.log)
OUT=$(PDF:.pdf=.out)
TOC=$(PDF:.pdf=.toc)

BOOKLET_INCLUDES=Rapid-Development-Zelig.tex describe.tex zelig2.tex parameters.tex qi.tex zelig_style_guide.tex

all: $(TEX)
	pdflatex booklet
	pdflatex installation

booklet.pdf: booklet.tex ZeligDoc.sty $(BOOKLET_INCLUDES)
	pdflatex booklet

installation.pdf: install.tex
	pdflatex installation

clean:
	rm -f $(PDF)
	rm -f $(AUX)
	rm -f $(LOG)
	rm -f $(OUT)
	rm -f $(TOC)

update:
	git pull origin master

commit:
	git add .
	git commit -m "Updating latex documentation automatically"
	git push -u origin master

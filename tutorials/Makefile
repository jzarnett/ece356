#SRC := $(shell egrep -l '^[^%]*\\input{../configuration}' [a-zA-Z0-9]*.tex)

NOTES := $(shell ls *.tex | grep -v \- | grep L)
SLIDES := $(shell ls *-slides.tex)

SLIDES_PO := $(SLIDES:%.tex=%.pdf)

NOTES_T := $(NOTES:%.tex=%.pdf)

ENVS := slides

all: $(SLIDES_PO) $(NOTES_T) clean

%-slides.pdf: env := slides
%-slides.pdf: %-slides.tex
	@echo compiling SLIDES $*-slides.tex
	@pdflatex $*-slides.tex > /dev/null;

clean:
	rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg *.pdfsync   \
	*.inx *.ps *.dvi *.toc *.out *.nav *.snm *.d *.bak _region* *.vrb
	rm -rf auto

mrproper: clean
	rm -f *.pdf

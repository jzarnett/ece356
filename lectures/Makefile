LECTURE_NOTES != ./lectureNotes.sh
SLIDES != ./slides.sh
CREATE_DEPS != ./createMakefileDependencies.sh

.PHONY: all clean
all: $(LECTURE_NOTES) $(SLIDES) notebook 

include makefileDependencies/*.d

notebook:
	@echo building notebook
	@python3 build_notebook.py
	@pdflatex -interaction=batchmode  notebook.tex > /dev/null;
	@bibtex notebook > /dev/null;
	@pdflatex -interaction=batchmode notebook.tex > /dev/null;
	@pdflatex -interaction=batchmode notebook.tex > /dev/null;

clean:
	rm -f *~ *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg *.pdfsync *.xdv  \
		*.inx *.ps *.dvi *.toc *.out *.nav *.snm *.d *.bak _region* *.vrb *.fls *.fdb_latexmk \
		makefileDependencies/*
	rm -rf auto

mrproper: clean
	rm -f *.pdf

PROJECT=principal
TEX=pdflatex
BIBTEX=bibtex
INDEX=makeindex
BUILDTEX=$(TEX) $(PROJECT).tex

all: build clean

build:
	$(BUILDTEX)
	$(BIBTEX) $(PROJECT)
	$(BUILDTEX)
	$(INDEX) $(PROJECT).idx
	$(INDEX) $(PROJECT).nlo -s nomencl.ist -o $(PROJECT).nls
	$(BUILDTEX)
	$(BUILDTEX) -interaction nonstopmode -file-line-error

clean:
	find . -name \*.acn -type f -delete
	find . -name \*.acr -type f -delete
	find . -name \*.alg -type f -delete
	find . -name \*.aux -type f -delete
	find . -name \*.bcf -type f -delete
	find . -name \*.blg -type f -delete
	find . -name \*.dvi -type f -delete
	find . -name \*.ps -type f -delete
	find . -name \*.fdb_latexmk -type f -delete
	find . -name \*.fls -type f -delete
	find . -name \*.glg -type f -delete
	find . -name \*.glo -type f -delete
	find . -name \*.gls -type f -delete
	find . -name \*.idx -type f -delete
	find . -name \*.ilg -type f -delete
	find . -name \*.ind -type f -delete
	find . -name \*.loa -type f -delete
	find . -name \*.lol -type f -delete
	find . -name \*.lof -type f -delete
	find . -name \*.log -type f -delete
	find . -name \*.lot -type f -delete
	find . -name \*.maf -type f -delete
	find . -name \*.mtc -type f -delete
	find . -name \*.mtc0 -type f -delete
	find . -name \*.nav -type f -delete
	find . -name \*.nlo -type f -delete
	find . -name \*.out -type f -delete
	find . -name \*.pdfsync -type f -delete
	find . -name \*.run.xml -type f -delete
	find . -name \*.snm -type f -delete
	find . -name \*.synctex.gz -type f -delete
	find . -name \*.toc -type f -delete
	find . -name \*.vrb -type f -delete
	find . -name \*.xdy -type f -delete
	find . -name \*.tdo -type f -delete
	find . -name \*.bbl -type f -delete
	find . -name \*bbl.bib -type f -delete
	find . -name \*.brf -type f -delete
	find . -name \*.nls -type f -delete

.PHONY: build clean

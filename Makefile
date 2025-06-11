# Main document filename without the extension
DOC=main

# Build the document
all: $(DOC).pdf

$(DOC).pdf: $(DOC).tex
	pdflatex $(DOC).tex
	bibtex $(DOC)
	pdflatex $(DOC).tex
	pdflatex $(DOC).tex
	
#rm -f $(DOC).aux $(DOC).bbl $(DOC).blg $(DOC).log $(DOC).out $(DOC).toc $(DOC).spl

# Clean the auxiliary files
clean:
	rm -f $(DOC).aux $(DOC).bbl $(DOC).blg $(DOC).log $(DOC).out $(DOC).toc $(DOC).spl

# Clean all generated files, including the PDF
distclean: clean
	rm -f $(DOC).pdf
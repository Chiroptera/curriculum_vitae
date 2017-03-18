# ---------------------------------------------------------
# type "make" command in Unix to create the PDF file
# ---------------------------------------------------------

# Main filename
FILE=diogoaosCV.tex

# ---------------------------------------------------------

all:
	#latexmk diogoaosCV.tex -pdf -outdir=output
	#latexmk diogoaosCV.tex -dvi -outdir=output
	pdflatex --output-directory output  --output-directory output diogoaosCV.tex
	bibtex output/diogoaosCV.aux
	pdflatex --output-directory output  diogoaosCV.tex
	pdflatex --output-directory output  diogoaosCV.tex
	mv diogoaosCV.pdf output/

clean:

	find . -regex ".*/.*\.\(aux\|bbl\|blg\|glg\|glo\|gls\|ilg\|ist\|lof\|log\|lot\|nlo\|nls\|out\|toc\|fdb_latexmk\|out\|fls\)" | xargs rm -f

# ---------------------------------------------------------
# type "make" command in Unix to create the PDF file
# ---------------------------------------------------------

# Main filename
FILE=diogoaosCV.tex

# ---------------------------------------------------------

all:
	latexmk diogoaosCV.tex -pdf -outdir=output
	latexmk diogoaosCV.tex -dvi -outdir=output


clean:

	find . -regex ".*/.*\.\(aux\|bbl\|blg\|glg\|glo\|gls\|ilg\|ist\|lof\|log\|lot\|nlo\|nls\|out\|toc\|fdb_latexmk\|out\|fls\)" | xargs rm -f

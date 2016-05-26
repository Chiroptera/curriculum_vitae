# Modularity
The main file (diogoaosCV.tex) gathers sections from the different folders to make it easy to change the CV for different contexts. Just make new section files (e.g. a education_academic.tex file for academic environment) and change the input in the main file.

# Compile
From the CV directory run `latexmk diogoaosCV.tex -pdf -outdir=output`. This will generate a PDF file on the output folder.


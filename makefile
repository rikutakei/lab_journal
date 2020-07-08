# Make file to generate my lab journal

# TODO: add .PHONY targets
# TODO: figure out how to generate correct directory structure for daily journals
# TODO: create a template for notes/tips/journal
# TODO: add recipes for generating latex document

all : lab_journal.pdf
	@echo Compiling lab journal

new_journal :

lab_journal.pdf : lab_journal.tex
	# makeglossaries thesis
	latexmk -bibtex -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make lab_journal.tex

clean:
	latexmk -c


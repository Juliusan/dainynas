build: dainos.pdf

dainos.pdf: src/dainos.lytex
	lilypond-book -f latex -o build/ --lily-output-dir=build/ src/dainos.lytex
	(cd build && pdflatex dainos.tex)
	mv build/dainos.pdf .

open: build
	evince dainos.pdf

.PHONY: build open
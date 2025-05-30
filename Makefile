build: dainos.pdf

dainos.pdf: build/dainos.tex build/titulinis.tex build/komandos.tex build/turinys.tex
	(cd build && pdflatex -output-directory=. dainos.tex)
	mv build/dainos.pdf .

build/dainos.tex: src/dainos.lytex
	lilypond-book -f latex -I src/ -o build/ --lily-output-dir=build/ dainos.lytex

build/%.tex: src/%.tex
	cp $< $@

open: build
	evince dainos.pdf

.PHONY: build open

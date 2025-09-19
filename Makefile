build: dainos.pdf

dainos.pdf: build/dainos.tex build/titulinis.tex build/komandos.tex build/turinys.tex build/dainos-xindy-style.xdy
	(cd build && pdflatex -output-directory=. -shell-escape dainos.tex)
	mv build/dainos.pdf .

build/dainos.tex: src/dainos.lytex
	lilypond-book -f latex -I src/ -o build/ --lily-output-dir=build/ dainos.lytex

build/%.tex: src/%.tex
	cp $< $@

build/%.xdy: src/%.xdy
	cp $< $@

open: build
	evince dainos.pdf

.PHONY: build open

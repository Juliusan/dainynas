build: dainos.pdf

dainos.pdf: build/dainos.tex build/titulinis.tex build/komandos.tex build/turinys.tex build/dainos-xindy-style.xdy
	(cd build && pdflatex -output-directory=. -shell-escape dainos.tex)
	mv build/dainos.pdf .

force:

build/version.txt: force
	tmp=$$(mktemp); git describe --tags > $$tmp; if ! cmp -s $$tmp $@; then mv $$tmp $@; else rm $$tmp; fi

build/titulinis.tex: build/titulinis.template.tex build/version.txt
	sed "s/{{gitVersion}}/$(shell cat build/version.txt)/g" $< > $@

build/dainos.tex: src/dainos.lytex
	lilypond-book -f latex -I src/ -o build/ --lily-output-dir=build/ dainos.lytex
	rm -f *.idx *.out

build/%.tex: src/%.tex
	cp $< $@

build/%.xdy: src/%.xdy
	cp $< $@

open: build
	evince dainos.pdf

.PHONY: force build open

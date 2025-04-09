# Lithuanian song book / Lietuviškas dainynas

Lithuanian folk songs I was singing, am still singing or simply want to remember.

Lietuviškos dainos, kurias aš dainavau vis dar dainuoju arba paprasčiausiai noriu nepamiršti.

## Compiling

The song book is prepared using Latex for text formatting and LilyPond for entering notes.
To compile it, the `lilypond-book` and `pdflatex` commands are needed in system's path variable.
For Debian GNU/Linux it should be enough to install `texlive` and `lilypond` packages.

	$ sudo apt install texlive lilypond
    
If your system can run Makefile, then to generate `dainos.pdf` file in the root folder simply run

	$ make build
    
Otherwise, please, consult `Makefile` for a list of commands to run.

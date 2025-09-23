# Lithuanian song book / Lietuviškas dainynas

Lithuanian folk songs I was singing, am still singing or simply want to remember.

Lietuviškos dainos, kurias aš dainavau vis dar dainuoju arba paprasčiausiai noriu nepamiršti.

## Compiling

Or how to obtain song book in PDF format.

The song book is prepared using Latex for text formatting and LilyPond for entering notes.
To compile it, the `lilypond-book` and `pdflatex` commands are needed in system's `PATH` variable.
To build an alphabetic index of songs at the end of the song book, `xindy` index maker is also required, but this step is optional.
For Debian GNU/Linux it should be enough to install `texlive`, `lilypond` and `xindy` packages.

	$ sudo apt install texlive lilypond xindy

If your system contains `make` utility, then to generate song book (`dainos.pdf`) in project's root folder simply run

	$ make build

Otherwise, please, consult `Makefile` for a list of commands to run.

## Kompiliavimas

Arba kaip gauti dainyną PDF formatu.

Dainynas parengtas naudojant Latex teksto formatavimui ir LilyPond natų įvedimui.
Norint jį sukompiliuoti, reikalingos `lilypond-book` ir `pdflatex` komandos sistemos `PATH` kintamajame.
Norint sugeneruoti alfabetinę dainų rodyklę dainyno pabaigoje, reikalingas `xindy` įrankis, bet šis žingsnis nėra privalomas.
Debian GNU/Linux sistemoje turėtų pakakti susidiegti `texlive`, `lilypond` ir `xindy` paketus:

	$ sudo apt install texlive lilypond xindy

Jeigu sistemoje yra `make` įrankis, tada kad sugeneruotumėte dainyną (`dainos.pdf`) projekto šakniniame kataloge, paprasčiausiai įvykdykite:

	$ make build

Kitu atveju, informacijos, kokias komandas reikia vykdyti, prašau ieškoti `Makefile` faile.


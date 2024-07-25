all:
	lilypond --loglevel=ERROR --output=alawon_abertawe ./alawtawe.ly

wip:
	clear
	lilypond wip.ly

test:
	cd book && lilypond-book --output=out --pdf main.lytex
	cd book/out && pdflatex main
	open book/out/main.pdf
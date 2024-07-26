all:
	lilypond --loglevel=ERROR --output=alawon_abertawe ./alawtawe.ly

wip:
	clear
	lilypond wip.ly

books:
	cd book && lilypond-book --output=out --pdf dots.lytex
	cd book/out && xelatex --output-directory ./.. dots
	rm -r book/out/
	open book/dots.pdf
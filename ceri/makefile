all:
	lilypond --loglevel=ERROR --output=alawon_abertawe ./alawtawe.ly

wip:
	clear
	lilypond wip.ly

books:
	cd book && lilypond-book --output=out --pdf dots.lytex
	cd book/out && pdflatex --output-directory ./.. dots
	rm -r book/out/
	open book/dots.pdf
.PHONEY: poetry lytex

SRC_DIR := scores
LYTEX_DIR := templates/lytex
OUT_DIR := prints
SOURCES := $(wildcard $(LYTEX_DIR)/*.lytex)

poetry:
	cd templates && poetry install --no-root

lytex: poetry
	cd templates && poetry run python generate.py

all: lytex $(SOURCES:$(LYTEX_DIR)/%.lytex=$(OUT_DIR)/%)
	echo $*

$(OUT_DIR)/%: $(LYTEX_DIR)/%
	cd $(LYTEX_DIR) && lilypond-book --output=out --pdf $*.dots.lytex
	cd $(LYTEX_DIR)/out && xelatex $*.dots
	cd $(LYTEX_DIR) && lilypond-book --output=out --pdf $*.mandoline.lytex
	cd $(LYTEX_DIR)/out && xelatex $*.mandoline
	cp $(LYTEX_DIR)/out/$*.*.pdf prints/

$(LYTEX_DIR)/%: poetry $(SRC_DIR)/%.ly
	cd templates && poetry run python generate.py $*

clean:
	rm -rf $(OUT_DIR)/*
	rm -rf $(LYTEX_DIR)

alls:
	lilypond --loglevel=ERROR --output=alawon_abertawe ./alawtawe.ly


books:
	cd book && lilypond-book --output=out --pdf dots.lytex
	cd book/out && xelatex --output-directory ./.. dots
	rm -r book/out/
	open book/dots.pdf

single:
	cd book && lilypond-book --output=out --pdf single.lytex
	cd book/out && xelatex --output-directory ./.. single
	open book/single.pdf

print:



compile:
	echo "compile"
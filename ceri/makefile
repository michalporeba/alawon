.PHONY: poetry lytex

SRC_DIR := scores
LYTEX_DIR := templates/lytex
OUT_DIR := prints
SOURCES := $(wildcard $(LYTEX_DIR)/*.lytex)

poetry:
	cd templates && poetry install --no-root

lytex: poetry
	cd templates && poetry run python generate.py

all: lytex $(SOURCES:$(LYTEX_DIR)/%.lytex=$(OUT_DIR)/dots/%)
	echo $*


$(OUT_DIR)/dots/%: $(LYTEX_DIR)/%.dots.lytex
	cd $(LYTEX_DIR) && lilypond-book --output=out --pdf $*.dots.lytex
	cd $(LYTEX_DIR)/out && xelatex $*.dots
	cp $(LYTEX_DIR)/out/$*.dots.pdf $(OUT_DIR)/dots/$*.pdf

$(OUT_DIR)/mandolin/%.pdf: $(LYTEX_DIR)/%.mandolin.lytex
	cd $(LYTEX_DIR) && lilypond-book --output=out --pdf $*.mandolin.lytex
	cd $(LYTEX_DIR)/out && xelatex $*.mandolin
	cp $(LYTEX_DIR)/out/$*.mandolin.pdf $(OUT_DIR)/mandolin/$*.pdf


$(LYTEX_DIR)/%: poetry $(SRC_DIR)/%.ly
	cd templates && poetry run python generate.py $*

clean:
	rm -rf $(OUT_DIR)/*
	rm -rf $(LYTEX_DIR)

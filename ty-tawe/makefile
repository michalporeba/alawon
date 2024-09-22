.PHONY: all poetry templates individual_prints book_prints


SRC_DIR := scores
LYTEX_DIR := templates
OUT_DIR := prints
SOURCES := $(wildcard $(LYTEX_DIR)/*/*.lytex)
BOOK_SOURCES := $(wildcard $(LYTEX_DIR)/*.lytex)
BOOK := ty-tawe

poetry:
	cd ../templates && poetry install --no-root

templates: poetry
	cd ../templates && poetry run python generate.py $(BOOK)

prints: individual_prints book_prints

book_prints: $(BOOK_SOURCES:$(LYTEX_DIR)/%.lytex=$(OUT_DIR)/%)

individual_prints: \
	$(SOURCES:$(LYTEX_DIR)/dots/%.lytex=$(OUT_DIR)/dots/%) \
	$(SOURCES:$(LYTEX_DIR)/guitar/%.lytex=$(OUT_DIR)/guitar/%) \
	$(SOURCES:$(LYTEX_DIR)/mandolin/%.lytex=$(OUT_DIR)/mandolin/%)

$(OUT_DIR)/dots/%: $(LYTEX_DIR)/dots/%.lytex
	@echo "hello"
	cd $(LYTEX_DIR) && lilypond-book --output=out --loglevel=ERROR --pdf dots/$*.lytex
	cd $(LYTEX_DIR)/out && xelatex $*
	mkdir -p $(OUT_DIR)/dots
	cp $(LYTEX_DIR)/out/$*.pdf $(OUT_DIR)/dots/$*.pdf

$(OUT_DIR)/guitar/%: $(LYTEX_DIR)/guitar/%.lytex
	cd $(LYTEX_DIR) && lilypond-book --output=out --loglevel=ERROR --pdf guitar/$*.lytex
	cd $(LYTEX_DIR)/out && xelatex $*
	mkdir -p $(OUT_DIR)/guitar
	cp $(LYTEX_DIR)/out/$*.pdf $(OUT_DIR)/guitar/$*.pdf

$(OUT_DIR)/mandolin/%: $(LYTEX_DIR)/mandolin/%.lytex
	cd $(LYTEX_DIR) && lilypond-book --output=out --loglevel=ERROR --pdf mandolin/$*.lytex
	cd $(LYTEX_DIR)/out && xelatex $*
	mkdir -p $(OUT_DIR)/mandolin
	cp $(LYTEX_DIR)/out/$*.pdf $(OUT_DIR)/mandolin/$*.pdf

$(OUT_DIR)/book.%:
	@echo "generic"
	cd $(LYTEX_DIR) && lilypond-book --output=out --loglevel=ERROR --pdf book.$*.lytex
	cd $(LYTEX_DIR)/out && xelatex book.$*
	mkdir -p $(OUT_DIR)
	cp $(LYTEX_DIR)/out/book.$*.pdf $(OUT_DIR)/book.$*.pdf

#single part dots
$(LYTEX_DIR)/dots/%.lytex: poetry $(SRC_DIR)/%.ly
	@echo "single part dots $*"
	cd ../templates && poetry run python generate.py $(BOOK) $*

#single part mandoline
$(LYTEX_DIR)/mandolin/%.lytex: poetry $(SRC_DIR)/%.ly
	cd ../templates && poetry run python generate.py $(BOOK) $*

clean:
	rm -rf $(LYTEX_DIR)

make cleanall: clean
	rm -rf $(OUT_DIR)/*

wip: clean poetry prints/dots/king_of_swansea
	open prints/dots/king_of_swansea.pdf
.PHONY: all poetry templates

BOOKS := $(wildcard */music.json)

poetry:
	cd _templates && poetry install --no-root

%/templates: poetry
	cd _templates && poetry run python generate.py $*


clean:
#  rm -rf $(LYTEX_DIR)

cleanall: clean
#  rm -rf $(OUT_DIR)/*

wip: clean poetry prints/dots/king_of_swansea
	open prints/dots/king_of_swansea.pdf


all: $(BOOKS)

%/music.json: %/all


%/makefile:
	cp _templates/makefile.template $*/makefile


%/all: %/makefile %/templates
	make --directory=$* prints


%/clean: %/makefile
	make --directory=$* clean

%/cleanall: %/makefile
	make --directory=$* cleanall

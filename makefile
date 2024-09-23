.PHONY: all poetry templates


BOOKS := $(wildcard */music.json)


poetry:
	cd _templates && poetry install --no-root


%/templates: poetry
	cd _templates && poetry run python generate.py $*


all: $(BOOKS)

%/music.json: %/all

%/makefile:
	sed 's/BOOK\_FOLDER/$*/g' _templates/makefile.template > $*/makefile

%/all: %/makefile %/templates
	make --directory=$* prints


%/clean: %/makefile
	make --directory=$* clean


%/cleanall: %/makefile
	make --directory=$* cleanall


wip: ty-tawe/templates ty-tawe/makefile
	make --directory=ty-tawe prints/book.dots
	open ty-tawe/prints/book.dots.pdf
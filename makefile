.PHONY: all poetry templates


BOOKS := $(wildcard */music.json)


poetry:
	cd _templates && poetry install --no-root


%/templates: poetry
	cd _templates && poetry run python generate.py $*


all: $(BOOKS)

nomusic:
	make -B ty-tawe/nomusic && xdg-open ty-tawe/prints/ty-tawe.nomusic.pdf
	make -B yscolan/nomusic && xdg-open yscolan/prints/yscolan.nomusic.pdf

%/music.json: %/all

%/makefile:
	sed 's/BOOK\_NAME/$*/g' _templates/makefile.template > $*/makefile

%/all: %/makefile %/templates
	make --directory=$* prints

%/books: %/makefile %/templates
	make --directory=$* book_prints

%/nomusic: %/makefile %/templates
	make --directory=$* prints/$*.nomusic.pdf

%/clean: %/makefile
	make --directory=$* clean

%/cleanall: %/makefile
	make --directory=$* cleanall


tytawewip: ty-tawe/templates ty-tawe/makefile
	make --directory=ty-tawe prints/ty-tawe.dots
	xdg-open ty-tawe/prints/ty-tawe.dots.pdf

yscolanwip: yscolan/makefile
	cd _templates && poetry run python generate.py yscolan pia_ar_ben_yr_onnen
	make -B --directory=yscolan prints/dots/pia_ar_ben_yr_onnen
	xdg-open yscolan/prints/dots/pia_ar_ben_yr_onnen.pdf
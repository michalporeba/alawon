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


tytawewip: ty-tawe/makefile
	cd _templates && poetry run python generate.py ty-tawe ${WIP_SCORE}
	rm -f ty-tawe/prints/dots/${WIP_SCORE}.pdf || true 
	make -B --directory=ty-tawe prints/dots/${WIP_SCORE}
	xdg-open ty-tawe/prints/dots/${WIP_SCORE}.pdf

yscolanwip: yscolan/makefile
	cd _templates && poetry run python generate.py yscolan ${WIP_SCORE}
	make -B --directory=yscolan prints/dots/${WIP_SCORE}
	xdg-open yscolan/prints/dots/${WIP_SCORE}.pdf

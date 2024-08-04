# alawtawe
Casgliad o alawon Abertawe


## generating music

to generate all music
```bash
make templates
make prints
```

to generate specific version of a specific melody during development, for example
```bash
make prints/dots/king_of_swansea
```

when working on dots the following can be used
```bash
make templates && make prints/book.dots && open prints/book.dots.pdf
```
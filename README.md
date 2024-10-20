# Alawon - Melodies
Collections of traditional music from various sources.
The music is encoded with [Lilypond](https://lilypond.org/) notation.
The code can be processed to generate either individual pieces, or full books.


## Prerequisits

To generate the music it is necessary to have:
* Python 3.12+ and poetry
* Lilypond
* xlatex

## generating music

to generate music from a specific book you can do
```bash
make yscolan/all
```
where yscolan is the name of folder in which the data is stored.

Alternative, to generate all scores and books, you can do
```bash
make all
```

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

After cloning the repository execute first
```bash
make poetry
```

to generate music from a specific book you can do
```bash
make yscolan/all
```
where yscolan is the name of folder in which the data is stored.

Alternative, to generate all scores and books, you can do
```bash
make all
```

## adding new score

An example workflow of adding a new score to the yscolan book, assuming it is called `fancy_tune` do the following. 

create `yscolan/scores/fancy_tune.ly` file with content like this:
```lilypond
melody = \relative d'' {
  \time 2/2
  \key d \major
}
```
The variable has to be called `melody`. 

Add the entry in `ysolan\music.json`. The `id` value needs to match the file, so in this case `fancy_tune`. 

Set the WIP_SCORE environmental variable to the same id. 
```bash
export WIP_SCORE=fancy_tune
```
And execute `make yscolanwip`.

Sometimes the work in progress pdf does not refresh. Runing `make yscolan/clean` helps. 



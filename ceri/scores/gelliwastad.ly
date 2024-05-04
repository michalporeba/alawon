% recorded on 2024-05-04
% transcription from Ceri Rhys Matthews
% from the perspective of Ynys Forgan (where the capital or Gower used to be)
% Mynydd Gelliwastad is where the sun sets, and Mynydd Drumma is where it rises.

gelliwastad_title = "Mynydd Gelliwastad"

gelliwastad_common =  {
  \time 6/8
  \clef treble
  \key d \major
  \partial 4
}

gelliwastad_melody = \relative d'' {
  \gelliwastad_common

  b4 
  \bar"||"

  d8 b a b a fis
  b8 a b d fis e
  d4 a8 b a fis
  e4 fis8 fis4.

  d'4 a8 b4.
  b8 a b d fis e
  d4 a8 b a fis
  e8 fis e d4 \breathe b'8

  d8 b a b4.
  b8 a b d fis e
  d4 a8 b a fis
  e4 fis8 fis4 fis8

  d'4 a8 b8 b b
  b8 a b d fis e
  d4 a8 b a fis
  e8 fis e d4.

  \repeat volta 2 {
    fis'4. g
    a4 fis8 g4 e8
    fis4 d8 e4 b8
    d4 a8 b4 d8
    fis4. d4 fis8
    e4 d8 b4.
    d8 b a b a fis
    e8 fis e d4.
  }
  \bar"|."
}

gelliwastad = \score {
  \header {
    title = \gelliwastad_title
  }
  \gelliwastad_melody
} %score

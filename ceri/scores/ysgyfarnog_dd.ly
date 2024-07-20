% recorded on 2024-07-20 during Yscolan Tremarchog
% transcription from Ceri Rhys Matthews
% one of three mid glamorgan early jigs

ysgyfarnog_dd_title = "Ysgyfarnog Daran Dinbych"

ysgyfarnog_dd_common =  {
  \time 6/8
  \clef treble
  \key d \major
}

ysgyfarnog_dd_melody = \relative d'' {
  \ysgyfarnog_dd_common

  \repeat volta 2 {
    d4 d8 d b a
    b8 a fis a fis e
    d8 e fis a4 a8
    b8 a fis e4.

    a8 fis e d e fis
    a8 d cis b a fis
    d8 e fis a4 a8
    a8 fis e d4.
  }

  fis'4. fis8 e d
  fis8 e d fis e d
  e4. e
  e8 d b a4.

  d4 d8 d b a
  b8 a fis a fis e
  d e fis a4 a8
  a8 fis e d4.

  fis'4. fis8 e d
  fis8 e d fis e d
  e4. e
  e8 d b a4.

  a8 fis e d e fis
  a8 d cis b a fis
  d8 e fis a4 a8
  a8 fis e d4.

  \bar"|."
}

ysgyfarnog_dd = \score {
  \header {
    title = \ysgyfarnog_dd_title
  }
  \ysgyfarnog_dd_melody
} %score

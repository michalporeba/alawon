% recorded on 2024-05-04
% transcription from Ceri Rhys Matthews 

llynllyw_title = "Llyn Llyw"

llynllyw_common =  {
  \time 6/8
  \clef treble
  \key g \major
}

llynllyw_melody = \relative d' {
  \llynllyw_common

  \repeat volta 2 {
    g4. a
    b8 d e d b a
    b4 b8 g4 b8
    a8 g fis e4 d8

    g4. a
    b8 d e d b 
    a
    b4 b8 g4 b8
  }
  \alternative {
    { a8 g fis g4 d8 }
    { a'8 g fis g4 fis'8 }
  }

  \repeat volta 2 {
    \time 9/8
    e8 d b g' fis e fis8 e d

    \time 6/8
    e d b
    d4 e8 d b a
    b4 d8 e4 fis8

    g4. 
    \time 9/8
    a8 g fis g8 fis e d b a
    \time 6/8
    b4. g4 b8
  }
  \alternative {
    { a8 g fis g4 fis'8 }
    { a,8 g fis g4.}
  }
  \bar"|."
}

llynllyw = \score {
  \header {
    title = \llynllyw_title
  }
  \llynllyw_melody
} %score

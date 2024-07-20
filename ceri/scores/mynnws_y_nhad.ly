% recorded on 2024-07-13
% transcription from Ceri Rhys Matthews
% one of three mid glamorgan early jigs

mynnws_y_nhad_title = "Mynnws y Nhad Fynyd y Bad"

mynnws_y_nhad_common =  {
  \time 6/8
  \clef treble
  \key d \major
}

mynnws_y_nhad_melody = \relative d' {
  \mynnws_y_nhad_common

  \repeat volta 2 {
    fis4 fis8 fis e d
    e8 fis g a4.
    d8 cis b a4.
    b8 a g fis8 e d

    fis4 fis8 fis e d
    e8 fis g a4. 
    d8 cis b a g fis 
    e8 fis e d4.
  }

  \repeat volta 2 {
    e4 e8 e d e
    e8 d e e d e
    fis4. fis
    b8 a g fis e d

    e4. e d e
    e8 d e e4.
    d'8 cis b a g fis
    e4 fis8 d4.
  }
  \bar"|."
}

mynnws_y_nhad = \score {
  \header {
    title = \mynnws_y_nhad_title
  }
  \mynnws_y_nhad_melody
} %score

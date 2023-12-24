% recorded on 2023-08-12 
% transcription from Ceri Rhys Matthews 

waunlwyd_title = "Y Waunlwyd"

waunlwyd_common =  {
  \time 4/4
  \clef treble 
  \key g \major
  \partial 4
}

waunlwyd_melody = \relative d'' {
  \waunlwyd_common 

  d8 e16 fis 
  \repeat volta 2 {
    g8 d b d c a a c 
    b8 g d' b b a d e16 fis
    g8 d b d c a a c 
  }
  \alternative {
    { b8 g a fis g4 d'8 e16 fis }
    { b,8 g a fis g4. a8 }
  }
  \repeat volta 2 {
    fis8 d fis a c b b4 
    g8 d g b d b b4 
    e8. fis16 g8 e d b b d 
  }
  \alternative {
    { c8 a g fis g4. a8 }
    { c8 a g fis g4 d'8 e16 fis }
  }
  \bar "|."
}

waunlwyd = \score {
  \header { 
    title = \waunlwyd_title
  }
  \waunlwyd_melody
} %score
  
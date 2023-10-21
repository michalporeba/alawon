% recorded on 2023-10-07 
% transcription from Ceri Rhys Matthews 

cape_horner_title = "The Cape Horner"

cape_horner_common =  {
  \time 4/4
  \clef treble 
  \key g \major
  \partial 8
}

cape_horner_melody = \relative d'' {
  \cape_horner_common 

  fis8 
  \repeat volta 2 {
    g8 fis e d b2 
    e8 fis e d b a g e 
    d4 d8 g fis4 fis8 a 
    g4 g8 a b a g fis'

    g8 fis e d b2 
    e8 fis e d b a g e 
    d4 d8 g fis4 fis8 a
  }
  \alternative {
    { g4 g8 fis g4 fis'8}
    { g,4 g g4. a8 }
  }
  
  \repeat volta 2 {
    b4 g8 b a4 fis8 a 
    g4 e8 g fis4 d 
    e4 g fis a 
    g4 g8 a b a g fis

    g'8 fis e d b2 
    e8 fis e d b a g e 
    d4 d8 g fis4 fis8 a
  }
  \alternative {
    { g4 g8 fis g4 fis'8}
    { g,4 g8 fis g2 }
  }

  \bar "|."
}

cape_horner = \score {
  \header { 
    title = \cape_horner_title
  }
  \cape_horner_melody
} %score
  
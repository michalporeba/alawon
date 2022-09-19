% written 2022-09-19 
% transcription from Ceri Rhys Matthews 

swansea_hornpipe_title = "Swansea Hornpipe"

swansea_hornpipe_common =  {
  \time 4/4
  \clef treble 
  \key d \major
  \partial 4
}

swansea_hornpipe_melody = \relative a' {
  \swansea_hornpipe_common 

  a8 fis
  \repeat volta 2 {
    d4 a' b8 a fis d 
    d'8 a e' a, fis' d a fis 
    g8 b d g, fis a d fis 
    e d cis b a g fis e

    d4 a' b8 a fis d 
    d'8 a e' a, fis' d a fis 
    g4 d'8 g fis e d cis 
    
  }

  \alternative {
    { d8 fis e fis d4 a8 fis }
    { d'8 fis e fis d4 cis8 d }
  }

  \repeat volta 2 { 
    e8 cis a4 fis'8 d a fis'
    \tuplet 3/2 { g8 fis e } \tuplet 3/2 { fis e d } e8 cis a4
    \tuplet 3/2 { g'8 fis e } \tuplet 3/2 { fis e d } e8 d cis d 
    e8 d cis b a g fis e 

    d4 a' b8 a fis d 
    d'8 a e' a, fis' d a fis 
    g4 d'8 g fis e d cis 
  }

  \alternative {
    { d8 fis e fis d4 cis8 d }
    { d8 fis e fis d4 }
  }
  \bar "|."
}

swansea_hornpipe = \score {
  \header { 
    title = \swansea_hornpipe_title
  }
  \swansea_hornpipe_melody
} %score
  
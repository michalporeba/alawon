% written 2022-09-19 
% transcription from Ceri Rhys Matthews 

val_pariso_title = "Val Pariso"

val_pariso_common =  {
  \time 6/8
  \clef treble 
  \key e \minor
}

val_pariso_melody = \relative e' {
  \val_pariso_common 

  \repeat volta 2 {
    e8 b' e, b'4 d8
    e8 fis g g fis e 
    d4. b4. 
    a8 b a b c b 

    e,8 b' e, b'4 e8
    e8 fis g g fis e 
    d4 d8 b4 a8 
  }

  \alternative {
      { g4. g4 fis8 }
      { g4. g }
  }
  
  \repeat volta 2 {
    g'4. a 
    b8 a g e4 d8 
    g4 g8 fis8 g fis 
    e4. e8 fis g 
    d4. d8 b d
    e4 fis8 g fis e
    d4 d8 b4 a8 
  }

  \alternative {
    { g4. g }
    { g4. g4 fis8 }
  }

}

val_pariso = \score {
  \header { 
    title = \val_pariso_title
  }
  \val_pariso_melody
} %score
  
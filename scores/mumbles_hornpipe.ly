% written 2022-09-19 
% transcription from Ceri Rhys Matthews 

mumbles_hornpipe_title = "Mumbles Hornpipe"

mumbles_hornpipe_common =  {
  \time 4/4
  \clef treble 
  \key g \major
  \partial 4
}

mumbles_hornpipe_melody = \relative g' {
  \mumbles_hornpipe_common 

  g8 fis
  \repeat volta 2 {
    g8 b d4 \tuplet 3/2 { d8 e fis } g8 e
    d4 b g2 

    c8 b a b a g e g
    c8 b a b a g e d 

    g8 b d4 \tuplet 3/2 { d8 e fis } g8 e
    d8 b g d g4. b16 c 
    d8 c b a c b a g 
  }

  \alternative {
    { g8 e d e g4 g8 fis }
    { g8 e d e g2 }
  }

  \repeat volta 2 {
    b8 d g d b d g d
    c8 e g4 c,8 e g4 

    a4 a8 b a g e4 
    g,8 b d e e d b4 

    b8 d g d b d g d
    c8 e g4 c,8 e g4
    
    a4 a8 g e d e4 
  }

  \alternative {
    { b'8 a g fis g fis e d }
    { b'8 a g fis g4 }
  }
  \bar "|."
}

mumbles_hornpipe = \score {
  \header { 
    title = \mumbles_hornpipe_title
  }
  \mumbles_hornpipe_melody
} %score
  
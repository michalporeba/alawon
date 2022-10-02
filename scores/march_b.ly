% recorded on 2022-09-17 
% transcription from Ceri Rhys Matthews 

march_b_title = "March 2"

march_b_common =  {
  \time 4/4
  \clef treble 
  \key g \major
}

march_b_melody = \relative g' {
  \march_b_common 

  \repeat volta 2 {
    g4 g8 e d e a4 
    e8 d16 e c'8 b a b g4
    g4 g8 e d e a4 
    e8 d16 e c'8 b a g g4
  }

  \repeat volta 2 {
    g8 a16 b c4 b8 a a g 
    g8 a16 b c8 d16 c b8 a g e 
    d8 g g e d e a4 
    e8 d16 e c'8 b a g g4
  }
}

march_b = \score {
  \header { 
    title = \march_b_title
  }
  \march_b_melody
} %score
  
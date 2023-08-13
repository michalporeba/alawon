% recorded on 2022-09-17 
% transcription from Ceri Rhys Matthews 

march_a_title = "The Go At Swansea"

march_a_common =  {
  \time 4/4
  \clef treble 
  \key g \major
}

march_a_melody = \relative d'' {
  \march_a_common 

  \repeat volta 2 {
    d8. b16 g8 b d b g4
    e'8 c a g fis e d4
    d'8. b16 g8 b d b g4
    e'8 c a fis g4 g
  }
  \repeat volta 2 {
    a8. g16 fis8 g a b c d 
    c8 b a g fis e d4

    a'8. g16 fis8 g a b c d 
    c8 b a g d'4 d
  }
}

march_a = \score {
  \header { 
    title = \march_a_title
  }
  \march_a_melody
} %score
  
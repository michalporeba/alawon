% recorded on 2022-09-17 
% transcription from Ceri Rhys Matthews 

go_at_swansea_title = "The Go At Swansea"

go_at_swansea_common =  {
  \time 4/4
  \clef treble 
  \key g \major
}

go_at_swansea_melody = \relative d'' {
  \go_at_swansea_common 

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

go_at_swansea = \score {
  \header { 
    title = \go_at_swansea_title
    composer = "William Burton Harp"
  }
  \go_at_swansea_melody
} %score
  
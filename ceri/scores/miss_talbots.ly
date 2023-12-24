% recorded on 2023-08-12 
% transcription from Ceri Rhys Matthews 

miss_talbots_title = "Miss Talbot's Reel"

miss_talbots_common =  {
  \time 2/4
  \clef treble 
  \key d \major
}

miss_talbots_melody = \relative a' {
  \miss_talbots_common 

  \repeat volta 2 {
    \repeat unfold 2 {
      a16 fis fis fis d fis fis fis 
      a16 fis fis fis g fis e d 
      a'16 fis fis fis d fis fis fis 
      g8 g16 fis g fis e d 
    }
  }
  \repeat volta 2 {
    fis8 fis16 a g8 g16 b
    a8 fis16 a d e fis8 
    fis8 d16 fis a fis d fis 
    a fis d fis e d b a

    fis8 fis16 a g8 g16 b
    a8 fis16 a d e fis8 
    fis16 e d cis b a g fis 
  }
  \alternative {
    { e8. fis16 d4 } 
    { e16 d cis' e d4 }
  }
  \bar "|."
}

miss_talbots = \score {
  \header { 
    title = \miss_talbots_title
  }
  \miss_talbots_melody
} %score
  
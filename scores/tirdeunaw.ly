% written 2023-06-17 
% transcription from Ceri Rhys Matthews 

tirdeunaw_title = "Tirdeunaw (?)"

tirdeunaw_common =  {
  \time 4/4
  \clef treble 
  \key d \major

}

tirdeunaw_melody = \relative d'' {
  \tirdeunaw_common 
  \hornpipe_tempo
  
  fis4 e8 fis a fis e fis 
  a8 fis e fis e d b d 
  e4 e8 fis g fis e d 
  cis4 b a2 

  a8 fis fis fis b8 g g g 
  cis8 a a a d e fis4 
  d8 e fis d e d b d 
  e8 d e fis d2

  \bar"||"

  a8 b d e d e fis d 
  e4 e8 fis e d b4 
  d8 b a b fis b a b
  d8 b cis d e2

  d4 fis8 d e d b4 
  d8 b a b fis b a b 
  d8 b a fis e d e fis 
  e d e fis d4 d4

  \bar"|."
}

tirdeunaw = \score {
  \header { 
    title = \tirdeunaw_title
  }
  \tirdeunaw_melody
} %score
  
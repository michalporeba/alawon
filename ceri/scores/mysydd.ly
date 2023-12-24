% recorded on 2023-02-25
% Version of Calon Lan. Y Mysydd is anglicaised name Y Maesydd, the road in Swansea
% Title by Ceri to distinguish it from another one - tirdeunaw
% transcription from Ceri Rhys Matthews 

mysydd_title = "Y Mysydd"

mysydd_common =  {
  \time 6/8
  \clef treble 
  \key g \major
  \partial 4.
}

mysydd_melody = \relative d' {
  \mysydd_common 
  d8 e g 
  b4 g8 a4 a8 
  a8 g e g e d 
  d4 a'8 d,8 e g 
  a4 a8 d,8 e g
  b4 g8 a4 a8 
  a8 g e g4 g8 
  g8 e d g d e 
  g8 d g d e g

  b4 g8 a4 a8 
  a8 g e g e d 
  d4 d8 d8 e g 
  a4 a8 d8 b g
  a4. a8 b a 
  g e d g4 g8 
  g8 e d g d e 
  g4. 

  \repeat volta 2 {

    b4. 
    d4. b4. 
    a8 g e a4. 
    c8 b a g fis e 
    d4. 
    e8 d e fis4 fis8 
    g8 fis g a4 a8
    g4 a8 b d b 
    a g fis g4.   
  }
}

mysydd = \score {
  \header { 
    title = \mysydd_title
  }
  \mysydd_melody
} %score
  
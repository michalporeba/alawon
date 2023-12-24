% written 2023-11-04 
% transcription from Ceri Rhys Matthews on 2022-09-17 and 2023-11-04
% Ceri added the "under the starry coat of dawn" to the title, "because it needed adding"

round_bracelet_title = "Round Bracelet (under the starry coat of dawn)"

round_bracelet_common =  {
  \time 6/8
  \clef treble 
  \key g \major
}

round_bracelet_melody = \relative d'' {
  \round_bracelet_common 

  \repeat volta 2 {
    d8 b g d' b g 
    e8 fis g e fis g 
    d'8 b g d' b g 
    e4 fis8 g4.

    d'8 b d e4 e8 
    fis4 fis8 g4 g8 
    e8 fis g fis e d 
    e d b g4.
  }
  \repeat volta 2 {
   b4 d8 fis d d 
   e d d b d d 
   b8 d d fis4 fis8
   fis8 e d b4. 

   b8 d d e4 e8 
   fis4 fis8 g4 g8
   e8 fis g fis e d 
   e d b g4.
  }

  \bar "|."
}

round_bracelet = \score {
  \header { 
    title = \round_bracelet_title
  }
  \round_bracelet_melody
} %score
  
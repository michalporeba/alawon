% recorded on 2022-10-29 
% transcription from Ceri Rhys Matthews 
% a Gower melody, probably used to be a song

abraham_ace_title = "Abraham Ace"

abraham_ace_common =  {
  \time 12/8
  \clef treble 
  \key g \major
}

abraham_ace_melody = \relative d'' {
  \abraham_ace_common 

  d4. d8 e d b4 a8 a g e 
  a4. a8 b a g4 e8 e4 d8 
  d'4. d8 e d b4 a8 a g e 
  a4. b8 a g e4 d8 d4. 

  d'4. d8 e d b4 a8 a g e 
  a4. a8 b a g4 e8 e4 d8 
  d4 g8 g fis g fis4 g8 a fis g 
  a4 g8 fis4 e8 d4. d'

  \bar "|."
}

abraham_ace = \score {
  \header { 
    title = \abraham_ace_title
  }
  \abraham_ace_melody
} %score
  
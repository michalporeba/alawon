% recorded on 2022-10-29 
% transcription from Ceri Rhys Matthews 
% a Gower maritime melody recorded with Abram Ace and Gleaning the Zongals. 

maritime_a_title = "A maritime melody"

maritime_a_common =  {
  \time 12/8
  \clef treble 
  \key d \major
}

maritime_a_melody = \relative d'' {
  \maritime_a_common 

  a8. b16 a8 a b d fis4 fis8 fis e d 
  fis4. e4 d8 b4 b8 d4 b8
  a4. a4 fis8 a4 b8 d4 e8 
  fis4 fis8 fis e d e4. e8 d b
  
  a4. a8 b d fis4. fis8 e d 
  fis4. e4 d8 b4 b8 d4 b8
  a4. a4 fis8 a4 b8 d4 e8 
  fis8 a fis e fis e d4. d8 e fis 

  \bar "||"

  g4 g8 g fis e fis4. fis4 d8 
  fis4. e4 d8 b4. d4 b8 
  a4. a4 fis8 a4 b8 d4 e8 
  fis4. fis8 e d e4.~ e8 fis g

  a4 a8 a g fis g4. g8 fis e 
  fis4 fis8 e4 d8 b4 b8 d4 b8 
  a4. a4 fis8 a4 b8 d4 e8 
  fis8 a fis e fis e d2. 

  \bar "|."
}

maritime_a = \score {
  \header { 
    title = \maritime_a_title
  }
  \maritime_a_melody
} %score
  
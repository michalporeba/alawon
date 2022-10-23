% recorded on 2022-09-17
% transcription from Ceri Rhys Matthews 

tom_rosser_title = "Tom Rosser"
tom_rosser_pencader_title = "Tom Rosser o Bencader"

tom_rosser_common =  {
  \time 6/8
  \clef treble 
  \key g \major
}

tom_rosser_melody_a = \relative b' {
  \tom_rosser_common 
  r8 b8 a g fis e
  \repeat volta 2 {
    d4. e8 fis e 
    d4. d4 g8 
    fis4 a8 g4 b8 
    b8 a g g fis e 
    d4. e8 fis e 
    d4. d4 g8 
    fis4 a8 g4. 
  }
  \alternative {
    { g8 b a g fis e }
    { \time 3/8 g4 a8 }
  }

  \repeat volta 2 {
    \time 6/8
    b8 g b a fis a 
    g e g fis4 d8 
    e4 g8 fis4 a8 
    g4 b8 b8 a g
    d'8 e d b4. 
    e8 fis e d b a
    d,4 g8 fis4 a8 
  }
  \alternative {
    { g4. g4 a8 }
    { \time 3/8 g4. }
  }
  \bar"|."
}

tom_rosser_melody = \relative b' {
  \tom_rosser_common 
  \partial 4
  b8 a 
  \repeat volta 2 {
    g fis e
    d4. e8 fis e 
    d4. d4 g8 
    fis4 a8 g4 b8 
    b8 a g g fis e 
    d4. e8 fis e 
    d4. d4 g8 
    fis4 a8 
  }
  \alternative {
    {  g4. g8 b a }
    { g4. g4 a8 }
  }

  \repeat volta 2 {
    b8 g b a fis a 
    g e g fis4 d8 
    e4 g8 fis4 a8 
    g4 b8 b8 a g
    d'8 e d b4. 
    e8 fis e d b a
    d,4 g8 fis4 a8 
  }
  \alternative {
    { g4. g4 a8 }
    {  g4. ~ g8 }
  }
  \bar"|."
}

tom_rosser_pencader_melody = \relative b' {
  \tom_rosser_common 

  b4 a8 g fis e
  \repeat volta 2 {
    d4. e8 fis e 
    d4 g8 d4 g8 
    fis8 g a g4 b8 
    b8 a g g fis e 
    d4. e8 fis e 
    d4. d4 g8 
    fis4 a8 \afterGrace g4. { g8 }

    g8 b a g fis e  
    d4. e8 fis e 
    d8 e d d4 g8
    fis4 a8 \afterGrace g4. { b8 }
    b8 a g g fis e 
    d4. e8 fis e
    d8 b' a d,4 g8 
    \time 9/8
    fis4 a8 g4. g4 a8 
    \time 6/8
    \bar"||"
    
    b8 g b a fis a 
    g e g fis4 d8 
    e4 g8 fis4 a8 
    g4 b8 b8 a g
    d8 e d b'4. 
    e8 fis e d b a
    d,4 g8 fis4 a8 
    g4. g4 a8   
    
    b8 g b a fis a 
    g e g fis4 d8 
    e4 g8 fis4 a8 
    g4 b8 b8 a g
    g'8 fis e d4. 
    e8 fis e d b a
    \time 9/8
    d,4 g8 fis4 a8 g4. 
    \time 6/8
    \bar"|."
    g8 b a g fis e
  }   
}

tom_rosser = \score { 
  \header { 
    title = \tom_rosser_title
  }
  \tom_rosser_melody
}

tom_rosser_pencader = \score {
  \header { 
    title = \tom_rosser_pencader_title
  }
  \tom_rosser_pencader_melody
} %score
  
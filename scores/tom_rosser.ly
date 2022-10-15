% recorded on 2022-09-17
% transcription from Ceri Rhys Matthews 

tom_rosser_title = "Tom Rosser"

tom_rosser_common =  {
  \time 6/8
  \clef treble 
  \key g \major
}

tom_rosser_melody = \relative b' {
  \tom_rosser_common 

  \repeat volta 2 {
    r8 b a g fis e
    d4. e8 fis e 
    d4 g8 d4 g8 
    fis8 g a g4 b8 
    b8 a g g fis e 
    d4. e8 fis e 
    d4. d4 g8 
    fis4 a8 g4. 
  }

  
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
  d,4 g8 fis4 a8 
  g4. g4.   
  
  \bar "|."
}

tom_rosser = \score {
  \header { 
    title = \tom_rosser_title
  }
  \tom_rosser_melody
} %score
  
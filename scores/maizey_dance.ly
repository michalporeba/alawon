% recorded spring 2023
% transcription from Ceri Rhys Matthews 

maizey_dance_title = "The Spirit of the Maizey Dance"

maizey_dance_common =  {
  \time 9/8
  \clef treble 
  \key g \major
}

maizey_dance_melody = \relative b' {
  \maizey_dance_common 
  \repeat volta 2 {
    b4. a4 g8 e4 d8 
    d4 g8 fis4 g8 a4. 
    d,4 b'8 a g fis e4 d8
    d4 g8 fis g a g4.
  }
  
  \repeat volta 2 {
    a4. b8 a b cis4 a8 
    a4 d8 c?4 b8 a4 g8
    d4 b'8 a g fis e4 d8
    d4 g8 fis g a g4.
  }
}

maizey_dance = \score { 
  \header { 
    title = \maizey_dance_title
  }
  \maizey_dance_melody
}
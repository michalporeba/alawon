% recorded spring 2023
% transcription from Ceri Rhys Matthews 

i_lawr_ar_brenin_title = "I Lawr a'r Brenin"

i_lawr_ar_brenin_common =  {
  \time 3/4
  \clef treble 
  \key e \minor
}

i_lawr_ar_brenin_melody = \relative g' {
  \i_lawr_ar_brenin_common 
  
  g4 e8 d e4 
  g4 fis8 g g16 a b8 
  g4 e8 d e \breathe g 
  fis4 d fis16 g a8 
  g8 e e d e4 
  g4 e fis16 g a8 
  g8 e e d e \breathe g 
  fis8 d d g fis16 g a8

  \repeat volta 2 {
    \time 9/8
    \tempo \markup {\rhythm { 8[ 8] } = \rhythm { 8[ 8 8] }}
    e4 b'8 c4 b8 a g a 
    b4 a8 g4 fis8 g a b 
    e4 b8 c4 b8 a g a 
    b4 a8 g4 fis 8 e4.
  }
  \bar"|."


}

i_lawr_ar_brenin = \score { 
  \header { 
    title = \i_lawr_ar_brenin_title
  }
  \i_lawr_ar_brenin_melody
}
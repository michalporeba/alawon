% recorded on 2022-10-01 
% transcription from Ceri Rhys Matthews 

rita_nant_title = "Rita Nant Wrth Gwta Ty"

rita_nant_common =  {
  \time 2/4
  \clef treble 
  \key e \minor
}

rita_nant_melody = \relative b' {
  \rita_nant_common 

  \repeat volta 2 {
   b8 a16 b e8 d16 e 
   b8. a16 e fis g a 
   b8 b e8 d16 e 
   fis8 e16 d b4

   b8 a16 b e8 d16 e
   b8 a e16 fis g a 
   e8 d' b16 a fis e 
  b'8 a16 fis e4 
  }
  \repeat volta 2 {
    b'8 cis16 d b8 b
    e16 fis e d b4
    e16 fis g a fis8 e 
    d16 e fis g e fis g a 
  
    b8 a16 g a8 a 
    b16 a e fis d4
    e,8 d' b16 a fis e 
    b'8 a16 fis e4 
  }
  \bar"|."
}

rita_nant = \score {
  \header { 
    title = \rita_nant_title
  }
  \rita_nant_melody
} %score
  
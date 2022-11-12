% recorded on 2022-10-01 
% transcription from Ceri Rhys Matthews 

cwm_felin_title = "Cwm Felin"

cwm_felin_common =  {
  \time 2/4
  \clef treble 
  \key d \major
}

cwm_felin_melody = \relative d' {
  \cwm_felin_common 

  \repeat volta 2 {
    fis8 fis g fis16 g 
    a8 fis16 e d e fis a
    b8 d16 b a fis e d 
    e8 e16 d e d b' a 
    
    fis8 fis g fis16 g 
    a8 fis16 e d e fis a
    b8 g'16 fis e d b d 
    
  }
  \alternative {
    { a16 fis e fis d8 d16 e }
    { a16 fis e fis d4 }
  }
  \bar"||"
  \repeat volta 2 {
    e'8 e16 d b a b e 
    fis8 fis16 e d b a8 
    e'8 e16 d b a b fis' 
    g8 g16 fis e d b a 

    fis8 fis g fis16 g 
    a8 fis16 e d e fis a
    b8 g'16 fis e d b d 
    a16 fis e fis d4
  }
  \bar"|."
}

cwm_felin = \score {
  \header { 
    title = \cwm_felin_title
  }
  \cwm_felin_melody
} %score
  
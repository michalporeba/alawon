% recorded on 2022-10-01 
% transcription from Ceri Rhys Matthews 
% a reel. 

cwm_felin_title = "The Cwm Felin"

cwm_felin_common =  {
  \time 2/2
  \clef treble 
  \key d \major
}

cwm_felin_melody = \relative d' {
  \cwm_felin_common 
  \swing_ceri
  \repeat volta 2 {
    fis4 fis g fis8 g 
    a4 fis8 e d e fis a
    b4 d8 b a fis e d 
    e4 e8 d e d b' a 
    
    fis4 fis g fis8 g 
    a4 fis8 e d e fis a
    b4 g'8 fis e d b d 
    
  }
  \alternative {
    { a8 fis e fis d4 d8 e }
    { a8 fis e fis d2 }
  }
  \repeat volta 2 {
    e'4 e8 d b a b e 
    fis4 fis8 e d b a4
    e'4 e8 d b a b fis' 
    g4 g8 fis e d b a 

    fis4 fis g fis8 g 
    a4 fis8 e d e fis a
    b4 g'8 fis e d b d 
    a8 fis e fis d2
  }
}

cwm_felin = \score {
  \header { 
    title = \cwm_felin_title
  }
  \cwm_felin_melody
} %score
  
dots = \score {
  \header { 
    title = \cwm_felin_title
  }
  \cwm_felin_melody
} %score

mandolin = \score {
  \header { 
    title = \cwm_felin_title
  }
  \cwm_felin_melody
} %score
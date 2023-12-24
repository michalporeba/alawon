% recorded on 2022-11-12 
% transcription from Ceri Rhys Matthews 

beau_nash_title = "Beau Nash"

beau_nash_common =  {
  \time 2/4
  \clef treble 
  \key d \major
}

beau_nash_melody = \relative d' {
  \beau_nash_common 

  \repeat volta 2 {
    d8 a' a a16 b 
    g8 g fis8 fis 
    fis16 g fis e fis8 fis16 g 
    a16 g fis e fis8 d

    d8 a' a a16 b 
    g8 g16 a fis8 fis 
    fis16 g fis e fis8 fis16 g 
    a16 g fis e d4
  }
  \repeat volta 2 {
    d'8 e16 fis g8 fis 
    e d a4 
    a16 b a g fis8 fis16 g 
    a16 g fis e fis8 d  

    d'8 e16 fis g8 fis 
    e d a4 
    a16 b a g fis8 fis16 g 
    a16 g fis e d4
  }
  \bar"|."
}

beau_nash = \score {
  \header { 
    title = \beau_nash_title
  }
  \beau_nash_melody
} %score
  
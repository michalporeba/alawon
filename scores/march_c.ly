% recorded on 2022-09-17 
% transcription from Ceri Rhys Matthews 

march_c_title = "The Crymlyn Races"

march_c_common =  {
  \time 4/4
  \clef treble 
  \key g \major
}

march_c_melody = \relative d' {
  \march_c_common 

  \repeat volta 2 {
    d8. fis16 a8 d b a fis4 
    a4 a8. b32 cis d8 a fis e 
    d8. fis16 a8 d b a fis4 
    a8 d a fis d4 d
  }

  \repeat volta 2 {
    d'8. e16 fis8 d e b d a
    b8 d d e fis d b a
    d8. e16 fis8 d e b d a
    b8 d a fis d4 d
  }
}

march_c = \score {
  \header { 
    title = \march_c_title
  }
  \march_c_melody
} %score
  
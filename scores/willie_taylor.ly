% recorded on 2023-010-21 
% transcription from Ceri Rhys Matthews 
% a slip jig based on Willie Taylor Sea Shanty as sang by John

willie_taylor_title = "Willie Taylor"

willie_taylor_common =  {
  \time 12/8
  \clef treble 
  \key d \major
  \partial 4.
}

willie_taylor_melody = \relative d'' {
  \willie_taylor_common 

  cis8 d e 
  \repeat volta 2 {
    fis4 fis8 e4 d8 b a b d4 e8 
    fis8 g fis e4 d8 e4. d4 e8 
    fis4 fis8 e4 d8 b4 a8 d4 cis8 
    b4 a8 fis4 a8 b4.
  }
  \repeat volta 2 {
    b8 cis b 
    a4 fis8 e4 fis8 a4. d4 cis8 
    b4 a8 fis4 a8 b4. 

    b8 cis b 
    a4 fis8 e4 fis8 a4. d4. 
    cis8 b a fis4 e8 b4. 
  }
  \bar "|."
}

willie_taylor = \score {
  \header { 
    title = \willie_taylor_title
  }
  \willie_taylor_melody
} %score
  
% recorded on 2022-10-29 
% transcription from Ceri Rhys Matthews 
% Zongals is a Gower word which relates to bits left in the field after the crop was taken

zongals_title = "Gleaning the Zongals"

zongals_common =  {
  \time 12/8
  \clef treble 
  \key g \major
}

zongals_melody = \relative d'' {
  \zongals_common 

  \repeat volta 2 {
    fis4. a fis4. fis4 a8
    fis4 d8 d e fis e4 fis8 e d b 
    fis'4. a fis4 fis8 a4.
    fis4 d8 d e fis e4 fis8 d4. 
  }
  \repeat volta 2 {
    d4.~d8 b a d b a d b a
    d4 e8 fis e d cis4 d8 e cis a 
    b4. d8 b a a4 a8 a fis d 
    e4. a a8 fis e d4. 

  }
  \bar "|."
}

zongals = \score {
  \header { 
    title = \zongals_title
  }
  \zongals_melody
} %score
  
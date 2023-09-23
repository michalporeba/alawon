% recorded on 2022-10-15
% minuette 
% transcription from Ceri Rhys Matthews 

% Melody related to hymn by Tomos Williams from Ynys Meudwy (called Ebenezer?) 
% that got popular as Ton y Botl and banned from chapels. 

glowty_pengwern_title = "Glowty Pengwern"

glowty_pengwern_common =  {
  \time 6/8
  \clef treble 
  \key a \minor
}

glowty_pengwern_melody = \relative a' {
  \glowty_pengwern_common 

  \repeat volta 2 {
    e8 d e a4. 
    a8 b a g e d 
    b'4 b8 b c d 
    c4 a8 b4 g8 

    e'4 e8 g e d 
    e4 e8 d c a 
    e'4 e8 g fis e 
    d c b a4. 
  }

  e'4 e8 e4 e8
  e8 f e e d c 
  d4 d8 d4 d8 
  d8 e d d c b 

  a8 a a a b c 
  d8 e d d4. 
  e8 d e g4 g8 
  a8 g a b a g 

  e d e a, e a 
  a8 b a g e d 
  b'8 g b b c d 
  c4 a8 b4 g8 

  e'4 e8 g e d 
  e4 e8 d c a 
  e'4 e8 g fis e 
  d c b a4. 

  \bar"|."
}

glowty_pengwern = \score {
  \header { 
    title = \glowty_pengwern_title
  }
  \glowty_pengwern_melody
} %score
  
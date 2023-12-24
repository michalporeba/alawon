% recorded on 2022-10-15
% minuette 
% transcription from Ceri Rhys Matthews 

dywetydd_title = "Ar Diwetydd Teg O Ebrill"

dywetydd_common =  {
  \time 3/4
  \clef treble 
  \key g \major
  \partial 4
}

dywetydd_melody = \relative a' {
  \dywetydd_common 
  \hornpipe_tempo

  \tuplet 3/2 { a8 c e }

  \repeat volta 2 {
    \afterGrace a4 { a,8 } g'8 e d e 
    \afterGrace a,2 { a4 } b8 a
    g8 a b c d e 
    d b g b d b 
    a4 a8 g e d 
    e4 e8 d e g 
    a4 g8 e d b'
  }
  \alternative {
    { a4. a8 c e }
    { \afterGrace a,2 { a4 } a8 b }
  }
  \bar"||"
  c2 a8 c
  b4 g e 
  a2 a8 b 
  a8 g \afterGrace e2 { d4 }

  c'4 a c 
  b g e 
  a4 \afterGrace g2 { g4 } 
  e4 d \tuplet 3/2 {d'8 e g}
  
  a4 g8 e d b 
  \afterGrace a2 { a4 } b8 a 
  g8 a b c d e 
  d b g b d4
  a'8 b a g e d
  e2 \tuplet 3/2 { d8 e g }
  b8 a g e d b 
  a2 %\tuplet 3/2 { a8 c e }
  \bar"|."
  %a4 g8 e d e 
  %\afterGrace a,2 { a4 } b8 a
  %g8 a b c d e 
  %d4 b g
  %a4. g8 e d
  %e4. d8 e g 
  %a4 g8 e d4
  %a'2 

  \bar "|."
}

dywetydd = \score {
  \header { 
    title = \dywetydd_title
  }
  \dywetydd_melody
} %score
  
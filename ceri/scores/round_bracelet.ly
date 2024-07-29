melody = \relative d'' {
  \time 6/8
  \key g \major

  \repeat volta 2 {
    d8 b g d' b g
    e8 fis g e fis g
    d'8 b g d' b g
    e4 fis8 g4.

    d'8 b d e4 e8
    fis4 fis8 g4 g8
    e8 fis g fis e d
    e d b g4.
  }
  \repeat volta 2 {
   b4 d8 fis d d
   e d d b d d
   b8 d d fis4 fis8
   fis8 e d b4.

   b8 d d e4 e8
   fis4 fis8 g4 g8
   e8 fis g fis e d
   e d b g4.
  }

  \bar "|."
}
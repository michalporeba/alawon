melody = \relative d'' {
  \time 12/8
  \key g \major

  \repeat volta 2 {
    d8 g d b4 b8 g b g d4.
    d8 e fis g4 d'8 e4 d8 e4 d8
    d8 g d b4 b8 g b g d4.
    d8 e fis g4 d'8 e4 d8 g,4.
  }
  \repeat volta 2 {
    g'8 fis e b4. g'8 fis e a,4.
    a8 gis a b c d e4 e8 e4 d8
    g8 fis e b4. g'8 fis e a,4.
    a4 a8 a8 b d e4 d8 g,4.
  }
}
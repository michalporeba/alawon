melody = \relative a' {
  \time 4/4
  \key d \major

  \repeat volta 2 {
    a4 a8 g fis a d4
    g4 e8 cis d fis fis a
    a,4 a8 g fis a d e16 fis
    g8 fis16 e d8 cis d4 d
  }
  \repeat volta 2 {
    a'4 fis8 d a' a fis d
    b'4 g8 d b' b g d
    a'4 fis8 d a' a fis d
  }
  \alternative {
    { e8 d cis b a2 }
    { g'8 fis16 e d8 cis d2 }
  }
  \bar "|."
}

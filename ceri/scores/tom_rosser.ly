melody = \relative b' {
  \time 6/8
  \key g \major

  \partial 4
  b8 a
  \repeat volta 2 {
    g fis e
    d4. e8 fis e
    d4. d4 g8
    fis4 a8 g4 b8
    b8 a g g fis e
    d4. e8 fis e
    d4. d4 g8
    fis4 a8
  }
  \alternative {
    {  g4. g8 b a }
    { g4. g4 a8 }
  }

  \repeat volta 2 {
    b8 g b a fis a
    g e g fis4 d8
    e4 g8 fis4 a8
    g4 b8 b8 a g
    d'8 e d b4.
    e8 fis e d b a
    d,4 g8 fis4 a8
  }
  \alternative {
    { g4. g4 a8 }
    {  g4. ~ g8 }
  }
  \bar"|."
}

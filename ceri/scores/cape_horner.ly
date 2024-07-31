melody = \relative d'' {
  \time 4/4
  \key g \major
  \partial 8

  fis8
  \repeat volta 2 {
    g8 fis e d b2
    e8 fis e d b a g e
    d4 d8 g fis4 fis8 a
    g4 g8 a b a g fis'

    g8 fis e d b2
    e8 fis e d b a g e
    d4 d8 g fis4 fis8 a
  }
  \alternative {
    { g4 g8 fis g4 fis'8}
    { g,4 g g4. a8 }
  }

  \repeat volta 2 {
    b4 g8 b a4 fis8 a
    g4 e8 g fis4 d
    e4 g fis a
    g4 g8 a b a g fis

    g'8 fis e d b2
    e8 fis e d b a g e
    d4 d8 g fis4 fis8 a
  }
  \alternative {
    { g4 g8 fis g4. a8}
    { g4 g8 fis g2 }
  }

  \bar "|."
}

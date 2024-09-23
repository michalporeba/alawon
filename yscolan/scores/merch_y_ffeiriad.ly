melody = \relative g' {
  \time 4/4
  \key e \minor
  \partial 4

  b8 d
  \repeat volta 2 {
    e4 e e8 fis g e
    d4 b a8 b d b
    a8 b d e fis a e fis
    d4 b8 a b4 b8 d

    e4. fis8 g4 fis8 e
    d8 b g b d4 b8 a
    g4. e8 d4 b'8 a
  }

  \alternative {
    { \afterGrace g4 { a8 } \afterGrace fis4 { g8 } e4 b'8 d }
    { \afterGrace g,4 { a8 } \afterGrace fis4 { g8 } e2 }
  }

  \repeat volta 2 {
    b'4. g8 e2
    b'8 a g fis e2
    a4. fis8 d2
    a'8 g fis e d4 e8 fis
    g4. fis8 g4 g'8 e
    d8 b g b d4 b8 a
    g4. e8 d4 b'8 a
    g4 fis e2
  }
}

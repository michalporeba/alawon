melody = \relative d' {
  \time 2/4
  \key e \minor

  \repeat volta 2 {
    e8 e16 fis g8 fis16 g
    a8 a16 g fis8 a
    g8 e e16 fis g a
    b8 a g fis

    e8 e16 fis g8 fis16 g
    a8 a16 g fis g a8
    g8 e d16 e fis d

  }
  \alternative {
    { e2 }
    { e4. b'16 a}
  }
  \bar"||"
  \repeat volta 2 {
    g8 g b a16 g
    fis8 fis a g16 fis
    e8 g g fis16 e
    fis16 g fis e d8 b
  }
  \bar"|."
}

melody = \relative d' {
  \time 2/4
  \key d \major

  \repeat volta 2 {
    d8 a' a a16 b
    g8 g fis8 fis
    fis16 g fis e fis8 fis16 g
    a16 g fis e fis8 d

    d8 a' a a16 b
    g8 g16 a fis8 fis
    fis16 g fis e fis8 fis16 g
    a16 g fis e d4
  }
  \repeat volta 2 {
    d'8 e16 fis g8 fis
    e d a4
    a16 b a g fis8 fis16 g
    a16 g fis e fis8 d

    d'8 e16 fis g8 fis
    e d a4
    a16 b a g fis8 fis16 g
    a16 g fis e d4
  }
  \bar"|."
}

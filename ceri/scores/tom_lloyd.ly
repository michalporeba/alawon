
melody = \relative a' {
  \time 2/2
  \key e \minor

  \repeat volta 2 {
    a4. g8 e4 a--
    a8 b c d e4 e--
    e8 d c e d4 d8 e
    d8 b a g g4 g8 a
    g8 e d e a4 a--
    a8 b c d e4 e--
    e8 d c e d4 b
    b8 a g4 a2--
  }
  \repeat volta 2 {
    a4 b8 a g a b d
    e4 g fis d8 fis
    e8 d b4 e8 fis e d
    b8 a fis4 fis'8 e d b
    g'8 fis e d b a \acciaccatura b16 a8 g
    a8 b c d e4 e--
    e8 d c e d4 b
    b8 a g4 a2--
  }
}

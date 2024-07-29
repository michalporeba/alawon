melody = \relative a' {
  \time 6/4
  \key g \major
  \swing_ceri

  \repeat volta 2 {
    b4 b8 a b d e4 \afterGrace b2 { b4 }
    g'4 g8 fis e d b4 b8 a g a
    b8 g e g b d e4 d8 b a g
    b4 b8 a fis e d2.
  }

  b'4 d4. b8 a4 \afterGrace b2 { b8 a }
  b4 d e fis2 fis4
  g4 g8 fis g a g fis e d b d
  g4 g8 fis e d b4 b8 a g a
  b8 g e g b d e4 b2
  g'8 a g fis e d b4 b8 a g4
  a4 a8 g a b d b e b d b
  a4 b8 a g fis e2.
  \bar"|."
}

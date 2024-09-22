melody = \relative a' {
  \time 6/4
  \key g \major

  \repeat volta 2 {
    a4 b16 a g e d e g8 a4 ~ a8 g a b
    a4 b16 a g e d e g8 d16 e g8 g b a g

    a4 b16 a g e d e g8 a4 ~ a8 g a b
    a4 b16 a g e d e g8 e'8 d ~ d b a g
  }

  \repeat volta 2 {
    g'4 e8 d e16 fis g8 a4 a8 g a b
    g4 e8 d e16 fis g8 b8 a ~ a g e d

    g4 e8 d e16 fis g8 a4 a8 g a b
    g8 a e g d4 b16 c d8 d b a g
  }
}
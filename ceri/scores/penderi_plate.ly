melody = \relative g' {
  \time 4/4
  \key g \major

  \repeat volta 2 {
    g4 g8 e d e a4
    e8 d16 e c'8 b a b \afterGrace g4 { d8 }
    g4 g8 e d e a4
    e8 d16 e c'8 b a g g4
  }

  \repeat volta 2 {
    g8 a16 b c4 b8 a a g
    g8 a16 b c8 d16 c b8 a g e
    \grace { d8 } g4 g8 e d e a4
    e8 d16 e c'8 b a g g4
  }
}

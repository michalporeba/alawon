melody = \relative a' {
  \time 4/4
  \key g \major

  \repeat volta 2 {
    c8 b a gis a g e d
    a'8 b c d e fis \tuplet 3/2 { g fis g }
    a8 g e g fis e d b
  }

  \alternative {
    { c8 b c d e4 d8 b }
    { c8 b a g? a2 }
  }

  \repeat volta 2 {
    a4 c?8 e a e c e
    g8 d b d g d b4

    a4 c?8 e a e cis e
    d8 cis d e d c a4

    \tuplet 3/2 { a8 cis e } a e g e \tuplet 3/2 { d e fis }
    g4 g8 fis e d b4
    e,8 a c? e a g e g
  }

  \alternative {
    { fis8 e d b a2}
    { fis'8 e d b a4 a8 b }
  }
  \bar "|."
}
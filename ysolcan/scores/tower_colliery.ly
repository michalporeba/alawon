melody = \relative a' {
  \time 2/4
  \key g \major

  \repeat volta 2 {
    a4 c8 a b d d g
    g8 fis fis d d b b \breathe g
    a4 c8 a b d d g
    g8 fis fis d
  }
  \alternative {
    { b4 b }
    { b2 }
  }
  \bar "||"

  \repeat volta 2 {
    fis'8 d d b b a b d
    d8 a a4 g8 a a \breathe fis'
    fis8 d d b

  }
  \alternative {
    { b8 a b d  a4 a8 g g8 a8 a4 }
    { b8 a b4 a8. b16 c8 d c b a g }
  }
  \bar "|."
}

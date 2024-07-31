melody = \relative b' {
  \time 2/4
  \key e \minor

  \repeat volta 2 {
    b8 a16 b e8 d16 e
    b8. a16 e fis g a
    b8 b e8 d16 e
    fis8 e16 d b4

    b8 a16 b e8 d16 e
    b8 a e16 fis g a
    e8 d' b16 a fis e
    b'8 a16 fis e4
  }
  \repeat volta 2 {
    b'8 cis16 d b8 b
    e16 fis e d b4
    e16 fis g a fis8 e
    d16 e fis g e fis g a

    b8 a16 g a8 a
    b16 a e fis d4
    e,8 d' b16 a fis e
    b'8 a16 fis e4
  }
  \bar"|."
}

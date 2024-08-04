melody = \relative d'' {
  \time 12/8
  \key d \major
  \partial 4.

  cis8 d e
  \repeat volta 2 {
    fis4 fis8 e4 d8 b a b d4 e8
    fis8 g fis e4 d8 e4. d4 e8
    fis4 fis8 e4 d8 b4 a8 d4 cis8
    b4 a8 fis4 a8 b4.
  }
  \repeat volta 2 {
    b8 cis b
    a4 fis8 e4 fis8 a4. d4 cis8
    b4 a8 fis4 a8 b4.

    b8 cis b
    a4 fis8 e4 fis8 a4. d4.
    cis8 b a fis4 e8 b4.
  }
  \bar "|."
}

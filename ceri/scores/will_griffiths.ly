melody = \relative d' {
  \time 2/2
  \key d \major

  \repeat volta 2 {
    d4 a'

    d8 e d cis b a b cis
    d8 e d a d,4 a'4
    d8 e d b a4. fis8
    e4 \tuplet 3/2 {a8 fis e}

    d4 a' d8 e d cis
    b8 a b cis d4. e8
    fis8 d e cis d b a fis
  }
  \alternative {
    { e8 d e fis d4 \tuplet 3/2 {a'8 fis e} }
    { e8 d cis' e d4 d8 e }
  }
  \repeat volta 2 {
    fis4. d8 e d b4
    d8 e d b a fis d4
    fis'4 fis8 d e d b4
    e8 d e fis d4 d8 b

    a4 a8 g fis g a4
    b4 b8 a b cis d e
    fis8 d e cis d b a fis
  }

  \alternative {
    { e8 d cis' e d4 d8 e }
    { e,8 d e fis d4 \tuplet 3/2 {a'8 fis e} }
  }
  \bar"|."

}

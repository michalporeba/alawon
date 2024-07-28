melody = \relative a' {
  \time 6/4
  \key d \major

  \repeat volta 2 {
    fis8 a g b a16 b cis d e4. d8 cis a
    a'8 fis g e fis16 e d cis d4. a8 fis d

    fis8 a g b a16 b cis d e4. d8 cis a
    a'8 fis g e fis16 e d cis d4. a8 d,4
  }

  \repeat volta 2 {
    cis'16 d e d cis8 fis d b cis4. a8 fis4
    a'8 b g a fis a g16 a g fis e2

    cis16 d e d cis8 fis d b cis4. a8 fis4
    a'8 b g a fis b a16 g fis e d2
  }
}
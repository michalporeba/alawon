melody = \relative d' {
  \time 2/2
  \key e \minor

  \repeat volta 2 {
    e4 e8 fis g4 g8 a
    b4 d8 b e b d b
    e,8 d e fis g4 g8 b
    a4 a8 b a g fis d

    e4 e8 fis g4 g8 a
    b8 g d' b g' d b d
  }
  \alternative {
    {
      g8 fis e g fis e d b
      d4 d8 e d b a g
    }
    {
      g'4 g8 fis e d b d
      e4 e8 d e4. fis8
    }
  }

  \repeat volta 2 {
    g4. g8 fis e d e
    b4 e8 d b e e fis
    g4 a8 g fis e d b
    d4 e8 d b a g a

    b'8 g a fis g e fis d
    b4 b8 d e4 e8 fis
  }
  \alternative {
    {
      g8 e fis d e d b d
      e4 e8 d e4. fis8
    }
    {
      g4 g8 fis e d b d
      e4 e8 d e2
    }
  }
}

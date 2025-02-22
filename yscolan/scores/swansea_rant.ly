melody = \relative d'' {
  \time 2/4
  \key g \major
  \partial 8

  d16 c 

  \repeat volta 2 {
    b8 g g d'16 c
    b8 g g d'16 c
    b8 g g b 
    d8 g d d16 c

    b8 g g d'16 c
    b8 g g d'16 c
    b8 g a fis
    g4 g
  }

  \repeat volta 2 {
    g'8. fis16 g8 d
    g8. fis16 g8 d
    e8 g fis a 
    g8 a b4

    g8. fis16 g8 d
    g8. fis16 g8 d
    e8 g fis a
    g4 g
  }
}
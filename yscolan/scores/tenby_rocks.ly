melody = \relative d' {
  \time 6/8
  \key d \major

  \repeat volta 2 {
    d8. e16 d8 d8. e16 d8 
    fis4 fis8 fis e d
    d8. e16 d8 d e d
    a'8. b16 a8 fis4 e8
    
    d8. e16 d8 d e d
    fis4 fis8 fis e d
    d8. e16 fis8 a4 a8
  }
  \alternative {
    {  d,8 e fis a4. }
    { a8. b16 cis8 d8. e16 fis8 }
  }

  \repeat volta 2 {
    e4. e
    a8 fis d e4. 
    e8. fis16 a8 b4 b8
    b4 a8 fis4.

    e8. fis16 e8 e4.
    a8 fis d e4 cis8
    d4 b8 cis4 a8
  }
  \alternative {
    { fis4. e }
    { b'4 fis8 a fis e }
  }
}

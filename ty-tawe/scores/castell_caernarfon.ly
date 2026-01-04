melody = \relative d'' {
    \key d \major
    \time 6/8

    \partial 8

    b8

    \repeat volta 2 {
        a8 fis d d fis a
        a8 b a fis e d
        fis8 e d d fis a
        b4. d4 b8
    }
    \repeat volta 2 {
        a4 d8 d cis d 
        e8 cis a e' cis a
        d8 e fis e d cis
        b4. d4 e8

        fis8 d fis e cis e
        d8 b d b a g
        fis8 e d d fis a
        b4. d4 e8
    }
}

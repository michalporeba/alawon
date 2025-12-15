melody = \relative d' {
    \time 4/4
    \key d \major

    \repeat volta 2 {
        fis4 a a fis 
        g4 b b g
        fis4 a a fis 
        g4 e e2

        fis4 a a fis 
        g4 b b g
        fis4 a e8 fis g e
        fis4 d d2
    }

    \repeat volta 2 {
        d4 fis a d
        d8 cis b cis d4 b
        a4 fis fis d
        g4 e e2

        d4 fis a d
        d8 cis b cis d4 b
        a4 fis g8 fis e4
        fis4 d d2
    }
}
melody = \relative d'' {
    \key d \major
    \time 2/2

    \partial 4

    a4

    \repeat volta 2 {
        d2 a
        fis4 a d e8 fis
        g4 fis e d 
        e4 d cis8 b a4

        d2 a
        fis4 a d e8 fis
        g4 fis e d 
        d2 d
    }

    \repeat volta 2 {
        fis2 d
        e2 cis
        d4 e8 fis g4 fis 
        e4 d cis8 b a4

        d2 a
        fis4 a d e8 fis
        g4 fis e d 
        d1
    }
}

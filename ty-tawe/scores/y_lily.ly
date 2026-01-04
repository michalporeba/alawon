melody = \relative d'' {
    \key d \major
    \time 4/4

    \partial 4

    \repeat volta 2 {
        a4

        d8 cis d a b4 a8 g
        fis8 d fis a e4 a
        d8 cis d a b4 a8 g
        fis8 g fis e d4
    }

    \repeat volta 2 {
        a'8 g 

        fis8 a d, a' fis a d, a'
        g8 b e, b' g b e, b'
        fis8 a d, a' fis a d, a'
        fis8 g fis e d4
    }

    \repeat volta 2 {
        a'4 

        fis'8 a, fis' a, e' a, e' a,
        fis'8 a, fis' a, e' a, e' a,
        fis'8 a, fis' a, e' a, e' a
        a8 g fis e d4
    }
}

melody = \relative g' {
    \time 4/4
    \key g \major

    \repeat volta 2 {
        b8 a g a b4 d
        d4 c c2
        c8 b a b c4 e
        e4 d d2

        b8 a g a b4 d
        d4 c c2
        c8 b a4 c8 b a4
        b4 g g2
    }

    \repeat volta 2 {
        g'4 fis e d
        g4 fis e d
        g4 fis e d
        c4 b a2

        fis'4 e d2
        fis4 e d2 
        fis4 e d c 
        b4 a g2
    }
}
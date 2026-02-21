melody = \relative d'' {
    \key g \major
    \time 3/4

    \partial 4

    \repeat volta 2 {
        d8 c
        b4 g8 b a g
        fis4 d8 e d c
        b4 d g8 fis
        g2 

        d'8 c
        b4 g' fis
        e4 a, d
        cis4. d8 e cis 
        d2
    }

    \repeat volta 2 {
        d4
        e8 d e fis g e
        d4 b c8 d 
        e4 e,8 fis g a 
        g4 fis8 e d c
        b4 d g8 fis
        e4 c' b 
        a2 g8 fis
        g2
    }

    \bar "|."

}

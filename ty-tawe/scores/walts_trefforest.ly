melody = \relative g' {
    \key g \major
    \time 3/4

    \partial 4

    \repeat volta 2 {
        d4 
        g4 g8 d g b
        g4 g8 d g b
        g4 g8 d g b
        e8 d c b a g

        fis4 fis8 d fis a
        fis4 fis8 d fis a
        d4 d8 b c a
        g2
    }

    \repeat volta 2 {
        d'8 c 
        b4 c d 
        e2 c8 b
        a4 b c 
        d2 

        b8 a
        g4 a b
        c4 d e 
        d8 e d c b a 
        g2
    }

    \repeat volta 2 {
        d4
        g4 g8 d g b
        b8 a a4 g
        fis4 fis8 d fis a
        a8 g g4 d
        
        g4 g8 d g b
        b8 a a4 g 
        fis4 fis8 g a fis
        g2
    }

    \bar "|."

}

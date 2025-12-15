melody = \relative g' {
    \time 4/4
    \key g \major 

    \repeat volta 2 {
        g4 g8 a b4 g 
        c4 a8 b c4 a
        b4 g g8 a b c
        d4 a fis d

        g4 g8 a b4 g
        c4 c8 b a4 c
        g4 g fis8 g a fis 
        g4 b g2
    }

    \repeat volta 2 {
        b4 d d c8 b
        a4 c c b8 a
        g4 b b a8 g
        fis4 a fis d 

        g4 g8 a b4 g
        c4 c8 b a4 c
        b4 g fis8 g a fis
        g4 b g2
    }
}
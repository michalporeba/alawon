melody = \relative d' {
    \key g \major
    \time 3/4

    \partial 4

    d4

    \repeat volta 2 {
        g2 g4 fis4. e8 d4
        g2 g4 e g d
        e2 e4 fis4. e8 d4
        fis4 g a 
    }
    \alternative {
        { g2 d4 } 
        { g2. }
    }

    \bar "||"

    b2 g4 b d2
    c2 d4 b g a 
    b2 g4 b d2
    c2 b4 a2 

    d4
    d2 g,4 fis4. e8 d4
    g2 g4 e g d
    e2 e4 fis4. e8 d4
    fis4 g a g2

    \bar "|."

}

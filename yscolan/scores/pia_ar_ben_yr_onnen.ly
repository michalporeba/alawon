melody = \relative c'' {
    \time 6/8
    \key a \minor

    \repeat volta 2 {
        c4 a8 b4 g8
        c8 b a b g e
        g4 g8 g a b
        g4 g8 g a b
        c4 a8 b4 g8
        c8 b a b g e
        a4 a8 a4 g8
    }

    \alternative {
        { a2. }
        { a4.~ a8 c d }
    }
    
    \repeat volta 2 {
        e4. d4 e8
        e8 d c b a e
        g4 g8 g e d 
        a'8 g e d e g
        e'4. d4 e8
        e8 d c b a g
        a4 a8 a4 g8
    }
    
    \alternative {
        { a4.~ a8 c d }
        { a2. }
    }

    \bar "|."
}
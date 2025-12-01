melody = \relative a' {
    \time 3/4
    \key d \minor

    \repeat volta 2 {
        a8 d a b cis d 
        e4 a,2
        f'8 g f e d e
        cis4 a2
        a8 d a g a f
        bes d bes a bes g
        f8 a f4 e 
    }
    \alternative {
        { d2. }
        { d4. e8 f g }
    }

    a4 c4. a8 g4 a2
    a4 c d e2 e4
    f4 g4. f8 f4 e d 
    c8 e c4 b a2. 
    
    \bar "||" 
    a8 d a b cis d 
    e4 a,2
    f'8 g f e d e
    cis4 a2
    a8 d a g a4
    bes8 d bes a bes4
    f8 a f4 e 
    d2.
    \bar "|."
}
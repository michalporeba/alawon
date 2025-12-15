melody = \relative a' {
    \time 3/4
    \key d \major

    \partial 4

    a4 
    
    \repeat volta 2 {
        d4 a fis 
        d4. e8 fis4
        g4 b e8 d
        cis4 a cis

        d4 a fis 
        g4. a8 b4
        a4 d cis
    }

    \alternative {
        { d2 a4 }
        { d2 d8 e }
    }

    fis 4 d fis
    e4 cis a
    b4 b8 cis d e
    cis4 a d8 e

    fis4 d fis
    e4 cis a 
    d4 cis b
    a2 b8 cis 

    d4 a fis 
    d4. e8 fis4
    g4 b e8 d
    cis4 a cis

    d4 a fis 
    g8 fis g a b4
    a4 d cis
    d2
    
    \bar "|."
}
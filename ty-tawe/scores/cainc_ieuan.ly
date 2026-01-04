melody = \relative d'' {
    \key g \major
    \time 4/4

    \repeat volta 2 {
        g4 fis8 e d4 c 
        b4 c d b 
        a4 b c a
        b4 g g a
        b4. c d4 b
 c4 d e fis 
        g2 fis
    }
    \alternative {
        { g2 d }
        { g1 }
    }

    \repeat volta 2 {
       b4 g g8 a b a
       a4 fis fis8 g a fis
       
    }
}

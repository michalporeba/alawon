melody = \relative g' {
    \key g \major
    \time 2/4

    \repeat volta 2 {
        g4. a8 b4 g
        c4 b c a
        g4. a8 b4 g
        fis4 a fis d

        g4. a8 b4 g
        c4 b c a
        b4 d c8 b a g
        fis4 a fis d
    }

    \repeat volta 2 {
        e4 c' c4. g8
        e4 c' g e
        fis4 d' d4. a8
        fis4 d' a fis

        e4 c' c4. g8
        e4 c' g e
        b'4 d c8 b a g
        fis4 a fis d
    }

    \bar "|."

}

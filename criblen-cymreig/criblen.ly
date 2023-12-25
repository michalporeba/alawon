\version "2.24.2" 

#(ly:font-config-add-font "../fonts/Alumni_Sans/static/AlumniSans-Light.ttf")
#(ly:font-config-add-font "../fonts/Oswald/static/Oswald-Regular.ttf")

miniTitle = #(define-scheme-function
  (text) ; Argument: the tempo text
  (string?) ; Type of the argument
  #{
    \tempo \markup {
      \override #'((font-name . "Alumni Sans") (font-size . 0.5))
      \normal-text #text
    }
  #}
)

\paper {
  #(set-paper-size "a5")
  ragged-right = ##t  % Aligns scores to the left
  indent = 0
}

staffMagnification = { \magnifyStaff #0.55 }

commonLayout = \layout{
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 6) (padding . 1))
    \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 12) (padding . 2))
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 0) (padding . 6))  
    \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
    \override TempoMark.font-size = #0.05
    \override TempoMark.font-name = #"Alumni Sans"
  }
}

\score {
  \new Staff \relative  d' {
    \staffMagnification
    \clef treble 

    \miniTitle "Pwt ar y Bys"
    \key d \major \time 4/4
    fis4 a a fis 
    g b b g
    fis4 a s4
    \stopStaff s4 s1 \startStaff \bar ""

    \miniTitle "Pant Corlan yr Ŵyn"
    \key g \major \time 2/4
    g8 g16 a b8 g c8 a16 b c8 a b8 g g16 a b c d8 a s8
    \stopStaff s8 s2 \startStaff \bar ""

    \miniTitle "Y Delyn Newydd"
    \key g \major \time 4/4
    b8 a g a b4 d d c c2 c8 b a b
    \bar ""
  }
  \commonLayout
}

\score {
  \new Staff \relative g' {
    \staffMagnification
    \clef treble

    \miniTitle "Crwt yn LLwyd"
    \key d \major \time 2/4
    g8. fis16 e8 d e fis g4 fis8 a g fis e4 s8
    \stopStaff s8 s2 s4 \startStaff \bar ""

    \miniTitle "Can y Ceiliog Du"
    \key d \major \time 2/4 \partial 4
    d8 e fis8. g16 fis8 e e d d e fis g fis e d4 s8 
    \stopStaff s8 s2 \startStaff \bar ""

    \miniTitle "Y Lili"
    \key d \major \time 2/2 \partial 4
    a'4 d8 cis d a b4 a8 g fis d fis a e4 s
  }
  \commonLayout
}

\score {
  \new Staff \relative d'' {
    \staffMagnification
    \clef treble

    \miniTitle "Hela'r Sgyfarnog"
    \key d \major \time 6/8
    d4 d,8 fis g a b4 e8 cis b a d4 d,8 s4 
    \stopStaff s8 s2. \startStaff \bar ""

    \miniTitle "Tŷ Gardd"
    \key g \major \time 6/8
    b'4 g8 g fis g b4 g8 g fis g a4 s4
  }
  \commonLayout
}

\score {
  \new Staff \relative d' {
    \staffMagnification
    \clef treble

    \miniTitle "Hela'r Sgwarnog"
    \key d \major \time 4/4
    d4. fis8 a4 d cis a b g fis d s4
    \stopStaff s4 s1 \startStaff \bar ""

    \miniTitle "Ymgyrchdon y Waunlwyd"
    \key g \major \time 4/4
    g'4 d b d c a a c b g s4
    \stopStaff s4 s2. \startStaff \bar ""

    \miniTitle "Crainc Ieuan y Telynor Dall"
    \key g \major \time 4/4 \partial 4
    d'4  g4 fis8 e d4 c b4. c8 d4 b a4. b8 s4
    \bar ""
  }
  \commonLayout
}

\score {
  \new Staff \relative g' {
    \staffMagnification
    \clef treble

    \miniTitle "Torth o Fara"
    \key g \major \time 6/8 \partial 8
    d8 g4 g8 g4 a8 g8 fis e d4 d8 g4 g8 b4 s8 \bar ""
    \stopStaff s2. \startStaff \bar ""

    \miniTitle "Glandyfi"
    \key g \major \time 6/8 \partial 8
    d,8 g4 g8 g4 b8 d4 c8 b4 g8 a4 a8 s4.
    \bar ""
  }
  \commonLayout
}
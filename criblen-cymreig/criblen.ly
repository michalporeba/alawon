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

  max-systems-per-page = 20
  systems-per-page = 14

  ragged-right = ##t 
  ragged-last-bottom = ##t
  ragged-bottom = ##t
  indent = 0
  score-system-spacing = #'((basic-distance . 4) (minimum-distance . 4) (padding . 3))
  %annotate-spacing = ##t 
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

    \miniTitle "Pant Corlan yr Wŷn"
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

%\score {
%  \new Staff \relative a'' {
%    \staffMagnification
%    \clef treble

%    \miniTitle "Tom Jones"
%    \key d \major \time 6/8
%    a4 a,8 g'4 a,8 fis'4 s8 \bar ""
%    \stopStaff s4. \startStaff \bar ""

%    \miniTitle "Y Derwydd"
%    \key d \major \time 6/8
%    fis,8 g a a fis a b s4 \bar ""
%    \stopStaff s4. \startStaff \bar ""

%    \miniTitle "Hela'r Sgyfarnog"
%    \key d \major \time 6/8
%    d4 d,8 fis g a b4 e8 cis b a d4 d,8 s4 
%    \stopStaff s8 s2. \startStaff \bar ""

%    \miniTitle "Tŷ Gardd"
%    \key g \major \time 6/8
%    b'4 g8 g fis g b4 g8 g fis g a4 s4
%  }
%  \commonLayout
%}

\score {
  \new Staff \relative a'' {
    \staffMagnification
    \clef treble

    \miniTitle "Tom Jones"
    \key d \major \time 6/8
    a4 a,8 g'4 a,8 fis'4 a,8 e'4 a,8 d4 fis8 s8 
    \stopStaff s4 s2. \startStaff \bar ""

    \miniTitle "Hela'r Sgyfarnog"
    \key d \major \time 6/8
    d4 d,8 fis g a b4 e8 cis b a d4 d,8 s8 
    \stopStaff s4 s2. \startStaff \bar ""

    \miniTitle "Y Derwydd"
    \key d \major \time 6/8
    fis8 g a a fis a b g b a4. b8 cis d s4. \bar ""
  }
  \commonLayout
}

\score {
  \new Staff \relative g' {
    \staffMagnification
    \clef treble

    \miniTitle "Tŷ Gardd"
    \key g \major \time 6/8
    b4 g8 g fis g b4 g8 g fis g a4 s4
    \stopStaff s4 s2. \startStaff \bar ""

    \miniTitle "Torth o Fara"
    \key g \major \time 6/8 \partial 8
    d,8 g4 g8 g4 a8 g8 fis e d4 d8 g4 g8 b4 s8 \bar ""
    \stopStaff s2. \startStaff \bar ""

    \miniTitle "Glandyfi"
    \key g \major \time 6/8 \partial 8
    d,8 g4 g8 g4 b8 d4 c8 b4 g8 a4 a8 s4.
    \bar ""
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

    \miniTitle "Hyd y Frwynen"
    \key e \minor \time 2/2 
    e4 b' b a8 g fis4. e8 e4 dis e fis s2 \bar ""
    \stopStaff s1 \startStaff \bar ""

    \miniTitle "Dŵr Glân"
    \key e \minor \time 2/2 \partial 4
    e8 fis g4 g8 a fis4 fis8 g e4 e8 fis g fis g e
    \bar ""
    \stopStaff s1 \startStaff \bar ""
    
    \miniTitle "Nyth y Gog"
    \key e \minor \time 2/2 \partial 4
    e8 fis g fis g fis e4 g'8 e d b a g s4
  }
  \commonLayout
}

\score {
  \new Staff \relative g' {
    \staffMagnification
    \clef treble

    \miniTitle "Y Ferch o Blwy Penderyn"
    \key g \major \time 3/4 \partial 4 
    d4 g2 g4 fis4. e8 d4 g2 g4 e s2 \bar ""
    \stopStaff s2. \startStaff \bar ""

    \miniTitle "Morfa'r Frenhines"
    \key e \minor \time 3/4 \partial 4
    b4 e e8 fis g a b2 s4 \bar ""
    \stopStaff s2. \startStaff \bar ""
    
    \miniTitle "Breuddwyd Rhysyn Bach"
    \key e \minor \time 3/4 \partial 4
    e,4 a4. b8 c d, e d e4 e8 fis d2 s4 \bar ""
    \stopStaff s2. \startStaff \bar ""

    \miniTitle "Walts Trefforest"
    \key g \major \time 3/4 
    g4 g8 d g b g4 s4
  }
  \commonLayout
}


\score {
  \new Staff \relative a' {
    \staffMagnification
    \clef treble

    \miniTitle "Ffaniglen"
    \key d \major \time 2/2 \partial 2
    a4. g8 fis4 d d2 d4 fis a s \bar ""
    \stopStaff s1 \startStaff \bar ""

    \miniTitle "Pigau'r Dur"
    \key g \major \time 2/4 
    d8. e16 d8 d d16 c d e d8 c16 d e8 d s4 \bar ""
    \stopStaff s1 \startStaff \bar ""
    
    \miniTitle "Difyrrwch Gwŷr Llanfabon"
    \key g \major \time 2/4 \partial 8
    g,16 a b8 b b d g, g g8. a16 b8 b s4 \bar ""
  }
  \commonLayout
}

\score {
  \new Staff \relative a' {
    \staffMagnification
    \clef treble

    \miniTitle "Tŷ Coch Caerdydd"
    \key g \major \time 4/4 \partial 4
    b8 a g4 g' g8 fis e4 d2 c4 b c e s2 \bar ""
    \stopStaff s1 \startStaff \bar ""

    \miniTitle "Mynydd Drumau"
    \key e \minor \time 4/4 \partial 4
    g,8 fis e4 e8 fis g4 g8 a b4 d8 b e b s4 \bar ""
    \stopStaff s1 \startStaff \bar ""
    
    \miniTitle "Sawdl y Fuwch"
    \key e \minor \time 4/4 \partial 4
    b4 e8 fis g fis e4 dis e2. d8 c b4 g s4 \bar ""
  }
  \commonLayout
}

\score {
  \new Staff \relative g' {
    \staffMagnification
    \clef treble

    \miniTitle "Val Pariso"
    \key e \minor \time 6/8 
    e8 b' e, b'4 c8 d e fis fis e d c4 s8 \bar ""
    \stopStaff s4. s2. \startStaff \bar ""

    \miniTitle "Bedd y Morwr"
    \key g \major \time 6/8 \partial 8
    d,8 g4 g8 b d b e4 fis8 g fis e d4 s8 \bar ""
    \stopStaff s4. s2. \startStaff \bar ""

    \miniTitle "Jig Esgob Bangor"
    \key e \minor \time 6/8 \partial 8 
    b8 e fis g fis g e dis e fis b,4 fis'8 d s8 \bar ""

  }
  \commonLayout
}

\score {
  \new Staff \relative g' {
    \staffMagnification
    \clef treble

    \miniTitle "Meillionen Meironnydd"
    \key g \major \time 4/4 \partial 4
    d4 g2 b4 a8 g fis g a b c4 s4 \bar ""
    \stopStaff s1 \startStaff \bar ""

    \miniTitle "Gwenynen Gwent"
    \key g \major \time 4/4 \partial 4
    d,4 g g8 fis g4 a b g d f e s4 s2 \bar ""
    \stopStaff s4. s2. \startStaff \bar ""
  }
  \commonLayout
}

\score {
  \new Staff \relative g' {
    \staffMagnification
    \clef treble

    \miniTitle "Consêt Arglwyddes Tre-ffael"
    \key a \minor \time 3/4 \partial 4
    e4 a2 e'4 c4. d8 e4 d2 c4 b4. a8 gis4 a2 s4 \bar ""
    \stopStaff s2. \startStaff \bar ""

    \miniTitle "Blodau'r Drain"
    \key a \minor \time 3/4 \partial 4
    e4 a2 b4 c b a e' d8 c b a b2 s4 \bar ""
    \stopStaff s2. \startStaff \bar ""

    \miniTitle "Glwysen"
    \key a \minor \time 3/4 \partial 4
    e,4 a2 a8 b c a b4 gis e a4 s2 \bar ""
  }
  \commonLayout
}

\score {
  \new Staff \relative g' {
    \staffMagnification
    \clef treble

    \miniTitle "???"
    \key e \minor \time 4/4
    e4 b' b a8 g fis4. e8 e4 dis e fis g s4 \bar ""
    \stopStaff s1 \startStaff \bar ""

    \miniTitle "Galar y Ffrancod"
    \key e \minor \time 6/8 
    e4 fis8 g a b a b c b4. a8 fis a s4. \bar ""
    \stopStaff s2. \startStaff \bar ""

    \miniTitle "Dawns y Tylwyth Teg"
    \key e \minor \time 2/2 
    g4 g8 e g4 g8 e g4 g8 fis e fis e fis g4 s4 \bar ""
  }
  \commonLayout
}

\score {
  \new Staff \relative g' {
    \staffMagnification
    \clef treble

    \miniTitle "Tomos Lloyd o Dreforys"
    \key e \minor \time 2/2
    a4. g8 e4 a a8 b c d e4 e e8 d c e d4 d8 e d8 b a g s2 \bar ""
    \stopStaff s1 \startStaff \bar ""

    \miniTitle "Swansea Races"
    \key e \minor \time 2/2 
    c8 b a gis a g e d a' b c d e fis \tuplet 3/2 { g fis g } a8  \bar ""
    \stopStaff s2. \startStaff \bar ""

  }
  \commonLayout
}
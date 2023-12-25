\version "2.24.2" 

\paper {
  #(set-paper-size "a5")
  ragged-right = ##t  % Aligns scores to the left
  indent = 0
}

\score {
  \new Staff \relative  d' {
    \magnifyStaff #0.5 
    \clef treble 

    \tempo "Pwt ar y Bys"
    \key d \major \time 4/4
    fis4 a a fis 
    g b b g
    fis4 a s4
    \stopStaff s4 s1 \startStaff 

    \tempo "Pant Corlan yr Ŵyn"
    \key g \major \time 2/4
    g8 g16 a b8 g c8 a16 b c8 a b8 g g16 a b c d8 a s8
    \stopStaff s8 s2 \startStaff

    \tempo "Y Delyn Newydd"
    \key g \major \time 4/4
    b8 a g a b4 d d c c2 c8 b a b s8
  }

  \layout{
    \context {
      \Score
      \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 6) (padding . 1))
      \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 12) (padding . 2))
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 0) (padding . 6))  
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
      \override TempoMark.font-size = #0.05
    }
  }
}
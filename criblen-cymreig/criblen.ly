\version "2.24.2" 

\paper {
  #(set-paper-size "a5")
  ragged-right = ##t  % Aligns scores to the left
}

\score {
  \new Staff \relative  d' {
    \magnifyStaff #0.5  % Apply magnification to all staves
    \clef treble \key d \major \time 4/4
    \tempo "Pwt ar y Bys"
    fis4 a a fis 
    g b b g
    \stopStaff
    s1
    \startStaff 
    \tempo "Pwt ar y Bys"
    \key g \major \time 2/4
    g8 g16 a b8 g c8 a16 b c8 a
  }
  \layout{
    %#(layout-set-staff-size 8)
    \context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
      \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 6) (padding . 1))
      \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 12) (padding . 2))
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'((basic-distance . 0) (padding . 6))  
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 2/3)
      \override TempoMark.font-size = #0.1
    }
  }
}
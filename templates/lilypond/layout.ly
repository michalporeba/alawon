\version "2.24.0"
\layout {
  \context {
    \ChordNames
    \override ChordName.#'.font-size = #2
    %\override ChordName.font-series = #'bold 
   
    chordChanges = ##t
   
    \remove "Clef_engraver"
    \remove "Bar_engraver"
    \remove "Bar_number_engraver"
  }
  
  \context {
    \Voice
    \consists "Ambitus_engraver"
  }
  
  \context {
    \Staff
    \override Clef.#'font-size = #3
    \override TimeSignature.#'font-size = #4
    \override KeySignature.#'font-size = #4
  }
  
  #(layout-set-staff-size 24)
  
}
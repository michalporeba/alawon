\version "2.24.0"
hornpipe_tempo = \tempo \markup {
    \score { 
        \new Staff \with {
            \override StaffSymbol.staff-space = #0.6
            \override StaffSymbol.line-count = #0
            \override VerticalAxisGroup.Y-extent = #'(-0.85 . 4)
        }

        {
            \magnifyMusic 0.5 {
                \override Score.SpacingSpanner.spacing-increment = #(* 1.2 0.5)
                \relative c' { \stemUp b8 b8 }
            }

            \once \override Score.TextScript.Y-offset = #-1.5
            s4.^\markup{ \halign #0 \italic "=" }

            \magnifyMusic 0.5 {
                \override Score.SpacingSpanner.spacing-increment = #(* 1.2 0.5)
                \relative c' { \stemUp \tuplet 3/2 {b8[ ~ b b]} }
            }
        }

        \layout {
            ragged-right= ##t
            indent = 0
            \context {
            \Staff
            \remove "Clef_engraver"
            \remove "Time_signature_engraver"
            }
        } % layout end

        } % Score end
  }


swing_ceri = \tempo \markup {
    \score { 
        \new Staff \with {
            \override StaffSymbol.staff-space = #0.6
            \override StaffSymbol.line-count = #0
            \override VerticalAxisGroup.Y-extent = #'(-0.85 . 4)
        }

        {
            \magnifyMusic 0.5 {
                \override Score.SpacingSpanner.spacing-increment = #(* 1.2 0.5)
                \relative c' { \stemUp b8 b8 }
            }

            \once \override Score.TextScript.Y-offset = #-1.5
            s4.^\markup{ \halign #0 \italic "=" }
            
            \magnifyMusic 0.5 {
                \override Score.SpacingSpanner.spacing-increment = #(* 1.2 0.5)
                \relative c' { \stemUp \tuplet 3/2 {b8[ ~ b b]} }
            }
        } 
        
        \layout {
            ragged-right= ##t
            indent = 0
            \context {
            \Staff
            \remove "Clef_engraver"
            \remove "Time_signature_engraver"
            }
        } % layout end

        } % Score end
  }




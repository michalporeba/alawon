\version "2.24.0"

\include "includes.ly"

\include "layout.ly"

\paper {
    print-page-number = ##f
    first-page-number = -1
    ragged-bottom = ##t
    indent = 15\mm
    #(set-paper-size "a5")

    #(define fonts (make-pango-font-tree
                          "Indie Flower"
                          "Autobus Bold"
                          "Truetypewriter"
                          (/ staff-height pt 20)))
}

melody_one = \relative c' {
  c4 d e f | g a b c
}

melody_two = \relative c' {
  e4 f g a | b c d e
}

melody_three = \relative c' {
  g4 a b c | d e f g
}

mandolin-tuning = \stringTuning <g d' a' e''>

generate-score = #(define-music-function (melody title) (ly:music? string?)
  #{
    \score {
      \header {
        title = #title
      }
      <<
        \new Staff {
          \clef treble
          #melody
        }
        \new TabStaff {
          \clef moderntab
          \set TabStaff.stringTunings = \mandolin-tuning
          #melody
        }
      >>
    }
  #})

generate-scores = #(define-music-function (melody-title-pairs) (list?)
   (for-each
    (lambda (pair)
      (let* ((melody (car pair))
             (title (cadr pair))
             (parsed_melody (ly:parser-lookup parser melody)))
        #{
          \score {
            \header {
              title = #title
            }
            <<
              \new Staff {
                \clef treble
                #parsed_melody
              }
              \new TabStaff {
                \clef moderntab
                \set TabStaff.stringTunings = \mandolin-tuning
                #parsed_melody
              }
            >>
          }
        #}))
    melody-title-pairs))

% Generate scores
#(generate-score
  melody_one "Melody One")
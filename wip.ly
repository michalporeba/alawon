\version "2.18.2"

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
  
\abraham_ace
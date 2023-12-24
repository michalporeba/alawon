\paper {
    print-page-number = ##f
    first-page-number = -1
    
    ragged-bottom = ##t
    % ragged-last = ##t
    
    % two-sided = ##t
    
    % annotate-spacing = ##t
  
    indent = 15\mm
    %system-count = #5
    
    #(set-paper-size "a5")
    
    #(define fonts (make-pango-font-tree 
                          "Indie Flower"
                          "Autobus Bold"
                          "Truetypewriter"
                          (/ staff-height pt 20)))
    
    bookTitleMarkup = \markup {
      \bold
      \fill-line {
        \center-column {
          
          \vspace #9
          \line { \fontsize #13 \override #'(font-name . "Indie Flower") \fromproperty #'header:title }
          \vspace #16
          \line { \fontsize #8 \override #'(font-name . "Indie Flower") \fromproperty #'header:subtitle }
          \vspace #0.5
          
        }
      }
    }
    
    scoreTitleMarkup = \markup {
      \fill-line {
        \left-column {
          \vspace #0.5
          \line {
            
            \column { \rounded-box \pad-markup #1 { \line { \huge { \bold { \fromproperty #'header:key } } } } }
            \column {
              \vspace #-0.1
              \left-column { 
                \line{ \fontsize #5 \override #'(font-name . "Indie Flower") \fromproperty #'header:title } 
             }
            }
          }
        }
        \right-column {  
          \vspace #1
          \line { 
            \fontsize #0.25 \override #'(font-name . "Indie Flower")  
            \fromproperty #'header:composer }
          \line { 
            \fontsize #0.25 \override #'(font-name . "Indie Flower")
            \fromproperty #'header:form }
        }
      }
    }
    
    evenFooterMarkup = \markup {
      \unless \on-first-page
      \column {
        \fill-line {
          \right-column {
            \vspace #0.25
            \with-color #grey
            %\typewriter
            \fromproperty #'header:tagline
          }
          \left-column { 
            \vspace #0.25
            \bold \unless \on-first-page \skip-page-number-range #'(0 0)
            \vspace #0.75
          }
          
        }
      }
    }
    oddFooterMarkup = \markup {
      \unless \on-first-page
      \column {
        \fill-line {
          \left-column {
            \vspace #0.25
            \with-color #grey
            %\typewriter
            \fromproperty #'header:tagline
          }
          \right-column { 
            \vspace #0.25
            \bold \unless \on-first-page \skip-page-number-range #'(0 0)
            \vspace #0.75
          }
        }
      }
    }
  } %paper
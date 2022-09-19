\paper {
    print-page-number = ##f
    first-page-number = -1
    
    ragged-bottom = ##t
    % ragged-last = ##t
    
    % two-sided = ##t
    
    % annotate-spacing = ##t
  
    indent = 25\mm
    %system-count = #5
    
    #(set-paper-size "a5landscape")
    
    %#(define fonts (make-pango-font-tree 
    %                      "FoglihtenNo07"
    %                      "Autobus Bold"
    %                      "Truetypewriter"
    %                      (/ staff-height pt 20)))
    
    bookTitleMarkup = \markup {
      \bold
      \fill-line {
        \center-column {
          
          \vspace #7
          \line { \fontsize #8 \override #'(font-name . "FoglihtenNo07") "Alawon o Abertawe" }
          \vspace #1.5
          \line { \fontsize #6 \override #'(font-name . "FoglihtenNo04") "Casgliad Ceri Rhys Matthews" }
          \vspace #0.5
          
        }
      }
    }
    
    scoreTitleMarkup = \markup {
      \fill-line {
        \left-column {
          \vspace #0.75
          \line {
            
            \column { \rounded-box \pad-markup #1 { \line { \huge { \bold { \fromproperty #'header:key } } } } }
            \column {
              \vspace #-0.25
              \left-column { 
                \line{ \fontsize #5 \override #'(font-name . "FoglihtenNo07") \fromproperty #'header:title } 
             }
              \vspace #0.75
            }
          }
        }
        \right-column {  
          \vspace #1
          \typewriter \line { \fromproperty #'header:form }
        }
      }
    }
    
    evenFooterMarkup = \markup {
      \on-the-fly \not-first-page
      \column {
        \fill-line {
          \right-column {
            \vspace #0.25
            \with-color #grey
            \typewriter
            \fromproperty #'header:tagline
          }
          \left-column { 
            \vspace #0.25
            \bold \on-the-fly \not-first-page \skip-page-number-range #'(0 0)
            \vspace #0.75
          }
          
        }
      }
    }
    oddFooterMarkup = \markup {
      \on-the-fly \not-first-page
      \column {
        \fill-line {
          \left-column {
            \vspace #0.25
            \with-color #grey
            \typewriter
            \fromproperty #'header:tagline
          }
          \right-column { 
            \vspace #0.25
            \bold \on-the-fly \not-first-page \skip-page-number-range #'(0 0)
            \vspace #0.75
          }
        }
      }
    }
    
  } %paper
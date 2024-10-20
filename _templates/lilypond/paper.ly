\version "2.24.0"
\paper {
    print-page-number = ##f
    first-page-number = -1
    
    ragged-bottom = ##t
    % ragged-last = ##t
    
    % two-sided = ##t
    
    % annotate-spacing = ##t
  
    indent = 15\mm
    %system-count = #5
    
    % #(set-paper-size "a5landscape")
    
    #(define fonts (make-pango-font-tree 
                          "../../_assets/fonts/Indie_Flower/IndieFlower-Regular.ttf"
                          "Autobus Bold"
                          "Truetypewriter"
                          (/ staff-height pt 20)))

  } %paper
\version "2.18.2"

\include "includes.ly"

\include "layout.ly"

\book {
  \include "paper.ly"
  
  \header { 
    title = "Alawon o Abertawe"
    subtitle = ""
    copyright = ""
    tagline = "Fersiwn 2022-09-19."
  }
 
  \bookpart {
    \pageBreak
    
%      \markup { 
 %     
 %       \fill-line {
 %         \center-column {
 %           \vspace #1 \line { "..." }
 %         }
 %       }
 %     }
 %     \markup {
 %       \fill-line {
 %         \left-column {  
 %           \vspace #1
 %           \typewriter \wordwrap { "Ers ganrifoedd mae
%clerwyr yn teithio o dre i dre, 
%drwy'r goroesi gwledydd, traddodiad ac amser. Sawl wedi crwydro." }
 %         }
 %         \left-column {  
 %           \vspace #1
 %           \typewriter \wordwrap { "center" }
 %         }
 %         \left-column {  
 %           \vspace #1
 %           \typewriter \wordwrap { "abcd" }
 %         }
 %       }
%   }
    
    \pageBreak
    
    \mumbles_hornpipe
    \val_pariso   
    
    \pageBreak

  } %bookpart
} %book
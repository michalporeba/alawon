\version "2.18.2"

draft_date = #(strftime "%Y-%m-%d" (localtime (current-time)))
\include "includes.ly"
\include "layout.ly"
\include "paper.ly"
  
\book {
  \header { 
    title = "Alawon o Abertawe"
    subtitle = ""
    copyright = ""
    tagline = \markup { "Fersiwn" \draft_date }
  }
 
  \bookpart {
    \pageBreak
    
    \pageBreak
    
    \march_a % the go at swansea
    \march_b % the penderry plate
    \march_c % the crymlyn races

    \pageBreak 

    \mumbles_hornpipe
    \swansea_hornpipe
    \valparaiso   
    \tom_rosser

    \pageBreak

    \dywetydd

  } %bookpart
} %book
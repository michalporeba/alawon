\version "2.18.2"

draft_date = #(strftime "%Y-%m-%d" (localtime (current-time)))
\include "includes.ly"
\include "layout.ly"
\include "paper.ly"
  
\book {
  \header { 
    title = "Casgliad Ceri"
    subtitle = "Alawon Ardal Abertawe"
    copyright = ""
    tagline = \markup { \smaller { "Fersiwn" \draft_date } }
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
    
    \pageBreak 
    \valparaiso
    \dywetydd

    \pageBreak 
    \nantypal
    \swansea_races

    \pageBreak 
    \cwm_felin
    \tom_lloyd 

    \pageBreak
    \tom_rosser
    \tom_rosser_pencader

    \pageBreak 
    \beau_nash
    \dyfatty_sheppans

    \pageBreak 
    \rita_nant
    \jig_rita_nant

    \pageBreak 
    \mysydd
    \merch_y_ffeiriad

    \pageBreak
    \maizey_dance
    \i_lawr_ar_brenin
    \laleston

    \pageBreak
    \waunlwyd
    \tower_colliery

    \pageBreak 
    \miss_talbots
  } %bookpart
} %book
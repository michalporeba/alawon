\version "2.18.2"

draft_date = #(strftime "%Y-%m-%d" (localtime (current-time)))
\include "includes.ly"
\include "layout.ly"
\include "paper.ly"

\book {
  \header {
    title = "Fâs Gopr"
    subtitle = "still drawing of a theoretical object"
    copyright = ""
    tagline = \markup { \smaller { "Fersiwn" \draft_date } }
  }

  \bookpart {
    \pageBreak

    \pageBreak
    \go_at_swansea % 4/4
    \march_b % the penderry plate
    \march_c % the crymlyn races

    \pageBreak
    \mumbles_hornpipe
    \swansea_hornpipe

    \pageBreak
    \valparaiso %6/8 jig
    \dywetydd

    \pageBreak
    \nantypal
    \swansea_races

    \pageBreak
    \cwm_felin %4/4 reel
    \tom_lloyd

    \pageBreak
    \tom_rosser %6/8
    \tom_rosser_pencader  %6/8 mostly

    \pageBreak
    \round_bracelet %6/8
    \tirdeunaw %4/4

    % done to here

    \pageBreak
    \beau_nash
    \dyfatty_sheppans

    \pageBreak
    \rita_nant
    \jig_rita_nant

    \pageBreak
    \mysydd % 6/8
    \merch_y_ffeiriad % 4/4

    \pageBreak
    \maizey_dance
    \i_lawr_ar_brenin
    \laleston

    \pageBreak
    \waunlwyd
    \tower_colliery

    \pageBreak
    \miss_talbots
    \glowty_pengwern

    \pageBreak
    \cape_horner
    \will_griffiths % 2/2

    % current limit

    \pageBreak
    \qoquimbo
    \willie_taylor

    \pageBreak
    \zongals
    \abraham_ace
    \trip_to_fortes

    \pageBreak
    \gelliwastad
    \llynllyw

    \pageBreak
    \drumau

    \pageBreak
    \ysgyfarnog_dd
    \mynnws_y_nhad

    \pageBreak
    \bryn_y_don
    \king_of_swansea

    \pageBreak
    \dawn_hywel
  } %bookpart
} %book
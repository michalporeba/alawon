% recorded on 2023-010-21 
% transcription from Ceri Rhys Matthews 
% Bus 36 was one in which Ceri and his Grandmother would go on  
% trip to Forte's, ice cream parlour by Limeslide Bay. 
% it was composed by Ceri for his grandmother who would take him there 
% for icecrea, and who spoke in a very Swansea melodic way - the mellody is an impression of it. 

trip_to_fortes_title = "Trip to Fortes"

trip_to_fortes_common =  {
  \time 12/8
  \clef treble 
  \key g \major
}

trip_to_fortes_melody = \relative d'' {
  \trip_to_fortes_common 

  \repeat volta 2 {
    d8 g d b4 b8 g b g d4. 
    d8 e fis g4 d'8 e4 d8 e4 d8
    d8 g d b4 b8 g b g d4. 
    d8 e fis g4 d'8 e4 d8 g,4.
  }
  \repeat volta 2 {
    g'8 fis e b4. g'8 fis e a,4.
    a8 gis a b c d e4 e8 e4 d8 
    g8 fis e b4. g'8 fis e a,4.
    a4 a8 a8 b d e4 d8 g,4. 
  }
  \bar "|."
}

trip_to_fortes = \score {
  \header { 
    title = \trip_to_fortes_title
    composer = "Ceri Rhys Matthews"
  }
  \trip_to_fortes_melody
} %score
  
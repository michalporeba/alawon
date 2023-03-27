% recorded on 2023-02-25
% Version of Calon Lan. Y Mysydd is anglicaised name Y Maesydd, the road in Swansea
% Title by Ceri to distinguish it from another one - tirdeunaw
% transcription from Ceri Rhys Matthews 

mysydd_title = "Y Mysydd"

mysydd_common =  {
  \time 6/8
  \clef treble 
  \key g \major
  \partial 4
}

mysydd_melody = \relative d' {
  \mysydd_common 
  d8 e g 
  b4 g8 a4 

  \bar"|."
}

mysydd = \score {
  \header { 
    title = \mysydd_title
  }
  \mysydd_melody
} %score
  
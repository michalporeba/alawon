% recorded on 2024-07-20
% transcription from Ceri Rhys Matthews

king_of_swansea_title = "King of Swansea"

king_of_swansea_common =  {
  \time 6/4
  \clef treble
  \key d \major
}

king_of_swansea_melody = \relative a' {
  \king_of_swansea_common

  \repeat volta 2 {
    fis8 a g b a16 b cis d e4. d8 cis a
    a'8 fis g e fis16 e d cis d4. a8 fis d
    
    fis8 a g b a16 b cis d e4. d8 cis a
    a'8 fis g e fis16 e d cis d4. a8 d,4
  }

  \repeat volta 2 {
    cis'16 d e d cis8 fis d b cis4. a8 fis4
    a'8 b g a fis a g16 a g fis e2

    cis16 d e d cis8 fis d b cis4. a8 fis4
    a'8 b g a fis b a16 g fis e d2
  }
  \bar"|."
}

king_of_swansea = \score {
  \header {
    title = \king_of_swansea_title
  }
  \king_of_swansea_melody
} %score

dots = \score {
  \header {
    title = \king_of_swansea_title
  }
  \king_of_swansea_melody
}

mandolin = \score {
  \header {
    title = \king_of_swansea_title
  }
  \king_of_swansea_melody
}
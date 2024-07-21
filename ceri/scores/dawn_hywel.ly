% recorded on 2024-07-21
% transcription from Ceri Rhys Matthews

dawn_hywel_title = "Dawn Hywel"

dawn_hywel_common =  {
  \time 6/4
  \clef treble
  \key g \major
}

dawn_hywel_melody = \relative b' {
  \dawn_hywel_common

  b2 g4 b8 g e4 e
  b'8 a g4 b d4. e8 d c
  b4. g8 e g b g e4 e
  fis8 g a4 fis e4 e8 fis g a

  b4. g8 e g b g e4 e
  b'8 g e g b c d4. e8 d c
  b8 g b g e g b g e4 e
  fis8 g a4 fis e2 d4

  \bar "||"

  fis8 g a4 fis g b g
  a8 b c4 a b d d,
  fis8 g a4 fis g8 a b4 g
  a8 b a g fis e fis2 d4

  fis8 g a4 fis g b g
  a4 c a b8 c d4 d,
  fis8 g a4 fis g b g
  a8 b a g fis e fis2.

  \bar"|."
}

dawn_hywel = \score {
  \header {
    title = \dawn_hywel_title
  }
  \dawn_hywel_melody
} %score

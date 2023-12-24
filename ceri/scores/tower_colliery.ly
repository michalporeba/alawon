% transcription from Ceri Rhys Matthews 

tower_colliery_title = "Tower Colliery"

tower_colliery_common =  {
  \time 2/4
  \clef treble 
  \key g \major
}

tower_colliery_melody = \relative a' {
  \tower_colliery_common 

  \repeat volta 2 {
    a4 c8 a b d d g 
    g8 fis fis d d b b \breathe g 
    a4 c8 a b d d g 
    g8 fis fis d 
  }
  \alternative {
    { b4 b }
    { b2 }
  }
  \bar "||"

  \repeat volta 2 {
    fis'8 d d b b a b d 
    d8 a a4 g8 a a \breathe fis'
    fis8 d d b 
    
  }
  \alternative {
    { b8 a b d  a4 a8 g g8 a8 a4 }
    { b8 a b4 a8. b16 c8 d c b a g }
  }
  \bar "|."
}

tower_colliery = \score {
  \header { 
    title = \tower_colliery_title
    composer = "Ceri Rhys Matthews"
  }
  \tower_colliery_melody
} %score
  
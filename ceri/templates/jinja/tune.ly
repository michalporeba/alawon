{{ score }}

thedots = \score {
  \header {
    title = "{{ titles[0] }}"
  }
  \new Staff {
    \clef treble
    \melody
  }
  \layout {}
}

mandolin-tuning = \stringTuning <g d' a' e''>

mandolin = \score {
  \header {
    title = "{{ titles[0] }}"
  }
  \new TabStaff {
    \clef moderntab
    \set TabStaff.stringTunings = #mandolin-tuning
    \melody
  }
  \layout {}
}

guitar-tuning = \stringTuning <e a d' g' b' e''>

guitar = \score {
  \header {
    title = "{{ titles[0] }}"
  }
  \new TabStaff {
    \clef moderntab
    \set TabStaff.stringTunings = #guitar-tuning
    \melody
  }
  \layout {}
}
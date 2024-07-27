{{ score }}

dots = \score {
  \header {
    title = "{{ titles[0] }}"
  }
  \melody
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
}
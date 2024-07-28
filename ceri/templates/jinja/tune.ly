{{ score }}

thedots = \score {
  \header {
    title = "{{ title }}"
    {% if composer %}composer = "{{composer}}"{% endif %}
  }
  \new Staff {
    \clef treble
    \melody
  }
}

mandolin-tuning = \stringTuning <g d' a' e''>

mandolin = \score {
  \header {
    title = "{{title}}"
    {% if composer %}composer = "{{composer}}"{% endif %}
  }
  \new TabStaff {
    \clef moderntab
    \set TabStaff.stringTunings = #mandolin-tuning
    \melody
  }
}

guitar-tuning = \stringTuning <e a d' g' b' e''>

guitar = \score {
  \header {
    title = "{{ title }}"
    {% if composer %}composer = "{{composer}}"{% endif %}
  }
  \new TabStaff {
    \clef moderntab
    \set TabStaff.stringTunings = #guitar-tuning
    \melody
  }
}
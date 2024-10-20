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
    {% if composer %}form = "{{form}}"{% endif %}
  }
  \new TabStaff {
    \tabFullNotation
    \clef moderntab
    \set TabStaff.stringTunings = #mandolin-tuning
    \melody
  }
  \layout {
    \context {
      \Score
      \override VerticalAxisGroup.system-system-spacing.minimum-distance = #25
    }
  }
}

gdad-tuning = \stringTuning <g d' a' d''>

gdad = \score {
  \header {
    title = "{{title}}"
    {% if composer %}composer = "{{composer}}"{% endif %}
    {% if composer %}form = "{{form}}"{% endif %}
  }
  \new TabStaff {
    \tabFullNotation
    \clef moderntab
    \set TabStaff.stringTunings = #gdad-tuning
    \melody
  }
  \layout {
    \context {
      \Score
      \override VerticalAxisGroup.system-system-spacing.minimum-distance = #25
    }
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
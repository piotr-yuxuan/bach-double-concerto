\include "../.sources/solo_violin1_1.ly"
\include "../.sources/solo_violin2_1.ly"
\include "../.sources/right_1.ly"
\include "../.sources/left_1.ly"

scoreAViolinIPartI = \new Staff \with {
  instrumentName = "Violon I"
  midiInstrument = "violin"
  fontSize = #-3
  \override StaffSymbol.staff-space = #(magstep -3)
  \override StaffSymbol.thickness = #(magstep -3)
  \override VerticalAxisGroup.default-staff-staff-spacing =
  #'((basic-distance . 6)
     (padding . 1)
     )
} \relative c' {
  \global-violin
  \soloViolinBB
}

scoreAViolinIIPartI = \new Staff \with {
  instrumentName = "Violon II"
  midiInstrument = "violin"
  fontSize = #-3
  \override StaffSymbol.staff-space = #(magstep -3)
  \override StaffSymbol.thickness = #(magstep -3)
} \relative c'' {
  \global-violin
  \soloViolinCB
}

scoreAPianoPartI = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \relative c'' {
    \global-piano
    \rightB
  }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \relative c' {
    \global-piano
    \leftB
  }}
>>
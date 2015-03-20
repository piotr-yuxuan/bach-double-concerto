\version "2.19.16"

\include "../.perso.ly"

\paper {
  left-margin = 1.5\cm
}

\include "../.sources/solo_violin1_1.ly"
\include "../.sources/solo_violin2_1.ly"
\include "../.sources/right_1.ly"
\include "../.sources/left_1.ly"
\include "../.sources/marks.ly"

ViolinIPartI = \new Staff \with {
  instrumentName = "Violon I"
  midiInstrument = "violin"
  shortInstrumentName = "Vl. I"
} \relative c' {
  \globalI-violin
  \soloViolinBB
}

ViolinIIPartI = \new Staff \with {
  instrumentName = "Violon II"
  shortInstrumentName = "Vl. II"
  midiInstrument = "violin"
} \relative c'' {
  \globalI-violin
  \soloViolinCB
}

PianoPartI = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \relative c'' {
    \globalI-piano
    \rightB
  }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \relative c' {
    \globalI-piano
    \leftB
  }}
>>

%{%%%%%%%%
 Sortie
%}%%%%%%%%

\score {
  <<
    \ViolinIPartI
    \ViolinIIPartI
    \PianoPartI
    \Marks
  >>
  \header {
    piece = "Vivace"
    opus = ""
  }
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
  \midi {
    \tempo 4 = 85
  }
}
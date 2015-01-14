\version "2.18.2"

\include "../.perso.ly"

\include "../.sources/solo_violin2_1.ly"

ViolinIIPartI = \new Staff \with {
  instrumentName = "Violon II"
  midiInstrument = "violin"
} \relative c' {
  \globalI-violin
  \soloViolinCB
}

%{%%%%%%%%
 Sortie
%}%%%%%%%%

\score {
  <<
    \ViolinIIPartI
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
    \tempo 4 = 100
  }
}

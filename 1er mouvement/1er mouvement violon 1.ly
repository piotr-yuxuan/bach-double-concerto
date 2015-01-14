\version "2.18.2"

\include "../.perso.ly"

\include "../.sources/solo_violin1_1.ly"

ViolinIPartI = \new Staff \with {
  instrumentName = "Violon I"
  midiInstrument = "violin"
} \relative c' {
  \globalI-violin
  \soloViolinBB
}

%{%%%%%%%%
 Sortie
%}%%%%%%%%

\score {
  <<
    \ViolinIPartI
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

\version "2.19.16"

\include "../.perso.ly"

\include "../.sources/solo_violin2_1.ly"
\include "../.sources/marks.ly"

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
}

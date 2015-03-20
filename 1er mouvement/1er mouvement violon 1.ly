\version "2.19.16"

\include "../.perso.ly"

\include "../.sources/solo_violin1_1.ly"
\include "../.sources/marks.ly"

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

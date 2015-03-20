\version "2.19.16"

\include "../.perso.ly"

\include "../.sources/solo_violin1_1.ly"
\include "../.sources/left_1.ly"
\include "../.sources/marks.ly"

ViolinIPartI = \new Staff \with {
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
  \globalI-violin
  \soloViolinBB
}

CelloPartI = \new Staff = "left" \with {
  instrumentName = "Violoncelle"
} {
  \clef bass \relative c' {
    \globalI-piano
    \leftB
  }
}

PartI = \score {
  <<
    \ViolinIPartI
    \Marks
    \CelloPartI
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

%{%%%%%%%%
 Sortie
%}%%%%%%%%

\PartI
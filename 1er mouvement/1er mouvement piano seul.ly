\version "2.19.16"

\include "../.perso.ly"

\include "../.sources/right_1.ly"
\include "../.sources/left_1.ly"
\include "../.sources/marks.ly"

PianoPartI = \new PianoStaff \with {
  instrumentName = "Piano"
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
}

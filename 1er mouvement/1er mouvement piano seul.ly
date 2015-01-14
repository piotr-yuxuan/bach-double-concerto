\version "2.18.2"

\include "../.perso.ly"

\include "../.sources/right_1.ly"
\include "../.sources/left_1.ly"

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

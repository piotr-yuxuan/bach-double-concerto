\version "2.18.2"

\include "../.perso.ly"

%{%%%%%%%%%%%%%%%%%%%
 Premier mouvement
%}%%%%%%%%%%%%%%%%%%%

\include "../.sources/solo_violin1_1.ly"
\include "../.sources/solo_violin2_1.ly"
\include "../.sources/viola_1.ly"
\include "../.sources/continuo_1.ly"

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
} \new Voice \with {
  %\consists "Ambitus_engraver"
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
} \new Voice \with {
  %\consists "Ambitus_engraver"
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
    \violaB
  }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \relative c' {
    \global-piano
    \continuoB
  }}
>>

tuttiMvtI = \score {
  <<
    \scoreAViolinIPartI
    \scoreAViolinIIPartI
    \scoreAPianoPartI
  >>
  \header {
    piece = "Vivace"
    opus = ""
  }
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##f
    }
  }
  \midi {
    \tempo 4 = 100
  }
}

%{%%%%%%%%%%%%%%%%%%%
 Second mouvement
%}%%%%%%%%%%%%%%%%%%%

\include "../.sources/solo_violin1_2.ly"
\include "../.sources/solo_violin2_2.ly"
\include "../.sources/viola_2.ly"
\include "../.sources/continuo_2.ly"

scoreAViolinIPartII = \new Staff \with {
  instrumentName = "Violon I"
  midiInstrument = "violin"
} \new Voice \with {
  %\consists "Ambitus_engraver"
} \relative c' {
  \global-violin
  \soloViolinBC
}

scoreAViolinIIPartII = \new Staff \with {
  instrumentName = "Violon II"
  midiInstrument = "violin"
} \new Voice \with {
  %\consists "Ambitus_engraver"
} \relative c'' {
  \global-violin
  \soloViolinCC
}

scoreAPianoPartII = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \relative c'' {
    \global-piano
    \violaC
  }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \relative c' {
    \global-piano
    \continuoC
  }}
>>

tuttiMvtII = \score {
  <<
    \scoreAViolinIPartII
    \scoreAViolinIIPartII
    \scoreAPianoPartII
  >>
  \header {
    piece = "Largo, ma non tanto"
    opus = ""
  }
  \layout {}
  \midi {
    \tempo 4 = 100
  }
}

%{%%%%%%%%%%%%%%%%%%%
 Troisième mouvement
%}%%%%%%%%%%%%%%%%%%%

\include "../.sources/solo_violin1_3.ly"
\include "../.sources/solo_violin2_3.ly"
\include "../.sources/viola_3.ly"
\include "../.sources/continuo_3.ly"

scoreAViolinIPartIII = \new Staff \with {
  instrumentName = "Violon I"
  midiInstrument = "violin"
} \new Voice \with {
  %\consists "Ambitus_engraver"
} \relative c' {
  \global-violin
  \soloViolinBD
}

scoreAViolinIIPartIII = \new Staff \with {
  instrumentName = "Violon II"
  midiInstrument = "violin"
} \new Voice \with {
  %\consists "Ambitus_engraver"
} \relative c'' {
  \global-violin
  \soloViolinCD
}

scoreAPianoPartIII = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \relative c'' {
    \global-piano
    \violaD
  }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \relative c' {
    \global-piano
    \continuoD
  }}
>>

tuttiMvtIII = \score {
  <<
    \scoreAViolinIPartIII
    \scoreAViolinIIPartIII
    \scoreAPianoPartIII
  >>
  \header {
    piece = "Allegro"
    opus = ""
  }
  \layout {}
  \midi {
    \tempo 4 = 100
  }
}

%{%%%%%%%%
 Sortie
%}%%%%%%%%

\tuttiMvtI
\tuttiMvtII
\tuttiMvtIII
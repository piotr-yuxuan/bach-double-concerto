\header {
  title = "Concerto pour deux violons"
  subtitle = "en ré mineur"
  composer = "Johann Sebastian Bach"
  copyright = \markup { "Gravé par" { \override #'(font-name . "TW-MOE-Std-Kai") "胡雨軒" } "d'après Sauret" }
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  ragged-last = ##f
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

globalI-piano = {
  \key d \minor
  \time 4/4
  \accidentalStyle piano-cautionary
}

globalI-violin = {
  \key d \minor
  \time 4/4
  \accidentalStyle modern-voice-cautionary
  \compressFullBarRests
}
\include "common/bend.ily"
\include "globals/ginja_ninja.ily"

instrumentName = "Guitar"

\optionsAdd opts part.guitar.template \Path lalily.instrument.electric-guitar
\optionsAdd opts part.guitar.staff-mods \with {
  midiMaximumVolume = 0.6
  \RemoveEmptyStaves
}
\putMusic guitar {
  \global
  \set countPercentRepeats = ##t
  \include "notes/ginja_ninja/guitar/intro.ily"

  %% \mark "Noodle"
  \include "notes/ginja_ninja/guitar/solo.ily"

  \bar "[|:"
  \repeat volta 2 {
    %% \mark "Verse"
    \include "notes/ginja_ninja/guitar/verse.ily"
    %% \mark "Chorus"
    \include "notes/ginja_ninja/guitar/chorus.ily"
  }
  \bar ":|]"

  \mark \markup { \musicglyph #"scripts.coda" }
  \set Timing.measurePosition = #(ly:make-moment 0)
  \time 6/4
  r2. r |
  \include "notes/ginja_ninja/guitar/coda.ily"
  \bar "|."
}

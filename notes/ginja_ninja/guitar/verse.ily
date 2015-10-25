\chordmode {
  \repeat volta 3 {
    \include "notes/ginja_ninja/guitar/verse/a.ily"
  }
  \alternative {
    { \set Timing.measurePosition = #(ly:make-moment 0)
      c,4:1.5.8 q8 q4 }
    { \set Timing.measurePosition = #(ly:make-moment 0)
      c,4:1.5.8 q8 q4 ~ }
  }
  q8 b,,4:1.5.8
}

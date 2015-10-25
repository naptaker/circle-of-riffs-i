\include "common/persons.ily"

\paper {
  #(set-paper-size "letter" 'landscape)
  indent      = 0.0\in
  ragged-last = ##t
}

\setTitle    "Ginja Ninja"
\setComposer #'("E. Bailey and P. Drum" . "")
\setPoet     #'andrew.smith
\setArranger #'naptaker

\putMusic meta {
  s1*4 \break
  s1*9 s2 s8 \break
  s1*5 \break
  s1*5 s8 \break
  s1.*8
}

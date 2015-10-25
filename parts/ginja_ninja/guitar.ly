\include "common/version.ily"
\include "common/preamble.ily"

\setMusicFolder naptaker.circle-of-riffs-i.ginja_ninja
\optionsInit    opts

\include "notes/ginja_ninja/guitar.ily"


\setDefaultTemplate naptaker.circle-of-riffs-i.ginja_ninja lalily.group #opts


\include "meta/ginja_ninja.ily"
\include "parts/defaults.ily"

\putMusic meta {
  s1*4 \break
  s1*6 \break
  s1*3 s2 s8 \break
  s1*5 \break

  s1*5 s8 \break
  s1.*5 \break
  % s1*4 \break
  % s1*4 \break
  % s1*4 \pageBreak

  % s1*4 \break
  % s1*4 \break
  % s4
}

\lalilyTest

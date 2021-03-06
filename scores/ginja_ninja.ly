\include "common/version.ily"
\include "common/preamble.ily"
\include "lalily.ly"

#(set-global-staff-size 11)

\setMusicFolder naptaker.circle-of-riffs-i.ginja_ninja
\optionsInit    opts

%% \include "notes/ginja_ninja/vocals.ily"
\include "notes/ginja_ninja/guitar.ily"
%% \include "notes/ginja_ninja/bass.ily"
%% \include "notes/ginja_ninja/drums.ily"

\setDefaultTemplate naptaker.circle-of-riffs-i.ginja_ninja lalily.group #opts

\include "meta/ginja_ninja.ily"

\lalilyTest

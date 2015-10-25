FLAC       = flac -f --best Output/WAV/$1.wav -o Output/FLAC/$1.flac
FLUIDSYNTH = fluidsynth -F
LAME       = lame --cbr -b 320
LILYPOND   = lilypond --silent -ddelete-intermediate-files \
		      -dno-point-and-click -djob-count=8 -dmidi-extension=mid
SHELL      = /bin/bash -O extglob
SOUNDFONT  = $(realpath ./soundfont.sf2)

%: scores/%.ly
	$(LILYPOND) -I lib/lalily $<
	test -f $*.pdf && mv $$_ output/pdf/
	test -f $*.mid && mv $$_ output/midi/
	mv *.log log

# $(FLUIDSYNTH) Output/WAV/$*.wav "$(SOUNDFONT)" Output/MIDI/$*.mid
# $(LAME) Output/WAV/$*.wav Output/MP3/$*.mp3

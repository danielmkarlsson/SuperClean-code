// At the time of writing \strum won't work in SuperClean because reasons ( ask me about it ).

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sin,
		degree: [2, 5, 8, 11, 13, 16],
		octave: 3,
		dur: 2,
		sustain: 3,
		strum: Pseq([0.00625, 0.0125, 0.025, 0.05, 0.1], inf),
	])
).play
)

// What we can do tho is we can use a synth which is part of SuperClean _outside_ of SuperClean, like this:

(
Pdef(0,
	Pbind(*[
		instrument: \sin,
		degree: [2, 5, 8, 11, 13, 16],
		octave: 3,
		dur: 2,
		sustain: 3,
		strum: Pseq([1/128, 1/64, 1/32, 1/16, 1/8, 1/4], inf),
	])
).play
)
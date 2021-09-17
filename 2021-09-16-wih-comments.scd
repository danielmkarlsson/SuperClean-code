(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \saw,
		scale: Pdup(99, Pseq([
			Scale.harmonicMinor.tuning_(Tuning.wcSJ),
			Scale.minor.tuning_(Tuning.sept1),
			Scale.melodicMinor.tuning_(Tuning.mean4),
		], inf)),
		degree: Plprand(0, 7), // Lowpassed random, bottom values more likely
		octave: Plprand(3, 6),
		dur: 1 / Pwhite(5, 11),
		pan: Pmeanrand(0.0, 1.0), // Mean values more likely (the values in the middle)
		amp: Pexprand(0.5, 1.0), // Exponential random, can not handle zero (0)
		lpf: Plprand(20, 20000),
		rel: 20,
		legato: 20,
	])
).play
)

(
Pdef(0,
	Pseed(1, // Change the seed to get a new infinity of random values.
		Pbind(*[
			type: \cln,
			snd: \saw,
			freq: Plprand(100, 1000).round(50), // Round to nearest multiple of 50
			//freq: [100, 300, 400, 700] * Pwhite(1, 5) / 2,
			dur: 1 / Pwhite(5, 11),
			lpf: Plprand(20, 20000),
			pan: 0,
			amp: Pexprand(0.5, 1.0),
			rel: 20,
			legato: 20,
		])
	)
).play;

Pdef(1, // same seed as above, so same as above.
	Pseed(1,
		Pbind(*[
			type: \cln,
			snd: \dfd,
			freq: Plprand(100, 1000).round(50),
			//freq: [100, 300, 400, 700] * Pwhite(1, 5) / 2,
			dur: 1 / Pwhite(5, 11),
			lpf: Plprand(20, 20000),
			pan: Pmeanrand(0.0, 1.0),
			amp: Pexprand(0.5, 1.0),
			rel: 20,
			legato: 20,
			stretch: Pseed(0, Prand([1, 1.01], inf)), // This line has it's own seed
		]) // This was necessary or else the amount of choices would not have been the same
	) // between Pdef(0) and Pdef(1) and they would have sounded nothing alike.
).play
)

// Read more about Pseed in the docs: http://doc.sccode.org/Classes/Pseed.html

(
Pdef(1,
	Pseed(1,
		Pbind(*[
			type: \cln,
			snd: \dfd,
			freq: Pwhite(100, 200).round(25),
			amp: 1,
			rel: 20,
			legato: 20,
			stretch: Pseed(0, Prand([1, 1.01], inf)),
		])
	)
).play
)

// So many scales!
Scale.directory

// And many tunings also!
Tuning.directory

// The possibilities are astounding!
// Mix and match to your heart's content!




	
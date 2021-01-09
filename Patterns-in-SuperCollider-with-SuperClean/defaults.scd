(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
	])
).play;
)

// Why does the above work?
// Within SuperCollider in general and in the Patterns paradigm in particular there are many defaults.

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 0,
		dur: 1, // dur for duration.
		amp: 0.5, // amp for amplification.
		pan: 0.5, // pan controls the position in the stereo field.
	])
).play;
)

// Here are some of the defaults from the example at the top made visible.
// You can find more SuperClean parameter names in "SuperClean/used-parameters.scd"
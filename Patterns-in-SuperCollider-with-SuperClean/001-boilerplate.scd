// Minimal
( // Top outermost paranthesis, the upper bound of this code block, not actually necessary but extremely convenient.
Pdef(0, // A named pattern definition, the unique name, here 0, lets us refer to it in the future with play and stop etc.
	Pbind(*[ // Combine several value patterns to one event stream by binding keys on the left to values on the right.
		type: \cln, // This can be thought of as the ON button for SuperClean, another useful event type is \rest.
		snd: \mmd // snd stands for sound, with this key we choose a synth or sample folder by it's unique name.
	]) // Closes out the Pbind, this syntax with the hard brackets uses less characters than some folks are used to.
).play; // Closes out the Pdef and plays the pattern, this is not enough to get multiple patterns to play in sync.
) // Bottom outermost paranthesis, the botttom bound of this code block, not actually necessary but extremely convenient.

// Added value
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd, // While not necessary, I  would add this comma because otherwise I get into trouble later.
	])
).play(quant:1); // I make sure that if I want to add other patterns later, they'll stay in sync with this one.
)

// Practical
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
	])
).play(quant:1;
)

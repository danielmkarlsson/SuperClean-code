( // This music is entirely linear and deterministic. It will sound the same everytime you run it.
Pdef(0, // This kind of strategy is sometimes refered to as polymetric
	Pbind(*[
		type: \cln,
		snd: \sin, // One of the synths in SuperClean is a sine wave oscillator.
		freq: Pseq([ 100, 200, 300, 400, 500, 600, 700 ],inf), // A linear sequence with 7 frequencies looping infinitely.
		dur: Pseq([ 1/4, 1/8, 1/4, 1/8, 1/2, 1/2, 1/8, 1/8, 1/8 ],inf)/1.2, // 9 duration values looping infinitely.
		amp: Pseq([ 2, 0.222, 1, 0.666, 0.888 ],inf), // 5 amplitude values looping infinitely.
		pan: Pseq([ 0.5, 0, 1 ],inf), // 3 pan values looping infinitely.
		rel: Pseq([ 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 1.0, 1.1, 1.2, 1.3, 1.4],inf), // 11 amplitude envelope release values looping infinitely.
	])
).play;
)

( // This music is stochastic, or to put it another way, nondeterministic. It will sound different every time you play it.
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \saw, // One of the synths in SuperClean is a saw wave oscillator.
		freq: Prand([ 100, 200, 300, 400, 500, 600, 700 ],inf), // An unweighted random sequence with 7 frequencies looping infinitely.
		dur: Prand([ 1/2, 1/4, 1/8 ],inf)/1.2, // 3 duration values looping infinitely.
		amp: Pseq([ 0.333, 0.555, 0.777, 0.999 ],inf), // 4 amplitude values looping infinitely.
		pan: Prand([ 0, 0.25, 0.5, 0.75, 1 ],inf), // 5 pan values looping infinitely.
		rel: Prand([ 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 1.0, 1.1, 1.2, 1.3, 1.4 ],inf), // 11 amplitude envelope release values looping infinitely.
		wid: Prand([ 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9 ],inf),
	])
).play;
)


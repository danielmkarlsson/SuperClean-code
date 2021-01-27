(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sin,
		degree: Pseq([7, 5, 0], 3), // repeat 3 times
		dur: 1/3,
	])
);
Pdef(1,
	Pbind(*[
		type: \cln,
		snd: \saw,
		degree: Pseq([5, 10, 12, 9], 2),  // repeat 2 times
		dur: 1/5,
		pan: 0,
	])
);
Pdef(2,
	Pbind(*[
		type: \cln,
		snd: \sqr,
		degree: Pseq([0, 2, 6, 7, 3], 4),  // repeat 4 times
		dur: 1/7,
		pan: 1,
	])
);
Pdef(3,
	Ptpar([ // list of pairs of times and patterns
		0.0, Pdef(0),
		3.5, Pdef(1),
		5.5, Pdef(2),
	])
).play(quant:1);
)
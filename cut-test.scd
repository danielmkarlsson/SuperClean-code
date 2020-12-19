(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 12,
		dur: 1,
		cut: 1,
		pan: 0,
	])
).play(quant:1);

Pdef(1,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: Pwhite(0,12),
		dur: 1.05,
		cut: 1,
		pan: 1,
	])
).play(quant:1);
)
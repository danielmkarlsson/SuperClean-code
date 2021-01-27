(
Pdef(0,
	Pbind(*[
		type: Pseq([\cln,\r,\r],inf),
		snd: \sin,
	])
).play(quant:1);

Pdef(1,
	Pbind(*[
		type: Pseq([\r,\cln,\r],inf),
		snd: \saw,
	])
).play(quant:1);

Pdef(2,
	Pbind(*[
		type: Pseq([\r,\r,\cln],inf),
		snd: \sqr,
	])
).play(quant:1);
)
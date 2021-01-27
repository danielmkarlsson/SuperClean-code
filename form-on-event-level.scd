(
Pdef(0,
	Pbind(*[
		type: Pseq([\cln,\r,\r],1),
		snd: \sin,
	])
).play(quant:1);

Pdef(1,
	Pbind(*[
		type: Pseq([\r,\cln,\r],1),
		snd: \saw,
	])
).play(quant:1);

Pdef(2,
	Pbind(*[
		type: Pseq([\r,\r,\cln],1),
		snd: \sqr,
	])
).play(quant:1);
)
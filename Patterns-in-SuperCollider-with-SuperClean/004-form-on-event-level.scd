(
Pdef(0,
	Pbind(*[
		type: Pseq([\cln,\r,\r],1), // \r for rest, or you can write it out like this if you prefer; \rest
		snd: \sin,
	])
).play(quant:1);

Pdef(1,
	Pbind(*[
		type: Pseq([\r,\cln,\r],1), // Here in the second Pdef the \cln event is on the second place in the Pseq
		snd: \saw,
	])
).play(quant:1);

Pdef(2,
	Pbind(*[
		type: Pseq([\r,\r,\cln],1), // Now it's on the third event.
		snd: \sqr,
	])
).play(quant:1);
)
(
Pdef(\0,
	Pbind(*[
		type: \clean,
		snd: \mmd,
		num: Prand([2,6,10,12],inf),
		bnd: Pseq([-1,0,1],inf)*Pwhite(1.0,3.0),
		dur: 1/Pwhite(1,11),
		pan: Pwhite(0.0,1.0),
		legato: 1,
	])
).play(quant:1);
)
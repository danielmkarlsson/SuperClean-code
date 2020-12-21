(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \sin,
		num: Pxshuf((-48,-41..12),inf),
		dur: 1/Prand([3,5,7,9,11,13],inf),
		seg: Pseg([1,2,1],Pexprand(10,30),\exp,inf),
		bit: Pkey(\seg).expexp(1,2,24,0.75).trace,
		sam: Pkey(\seg).expexp(1,2,0.01,100),
		stretch: Pkey(\seg).linlin(1,2,1.25,1/128),
		pan: Pwhite(0.0,1.0),
		amp: Pkey(\seg).linexp(1,2,1.0,0.975),
		atk: Pkey(\dur)/2,
		hld: Pkey(\dur)*4,
		rel: Pkey(\dur)*8,
		crv: -8,
		legato: 8,
	])
).play(quant:1);
)
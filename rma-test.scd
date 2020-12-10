(
Pdef(\0,
	Pbind(*[
		type: \cln,
		snd: \sin,
		wid: Pexprand(0.001,0.5),
		dur: Pexprand(5.0,11.0),
		sustain: Pkey(\dur)+1,
		legato: Pkey(\dur)+1,
		atk: Pwhite(0.4,4.0),
		rel: Pkey(\dur)-2,
		crv: Pwhite(6.0,10.0),
		amp: Pexprand(0.6,0.9),
		rma: 1-Pexprand(0.75,1.0),
		freq: Pexprand(20,640).trace,
		rmf: Pexprand(20,640),
		rdt: Pkey(\dur)*Pwhite(0.9,1.1),
		rdf: Pexprand(40,320),
		pan: Pwhite(0.0,0.5),
		pan: Pseq([Pwhite(0.0,0.5,1),Pwhite(0.5,1.0,1)],inf).trace,
		stretch: Pseg(Pexprand(1/2,1),Pexprand(10,20),\exp, inf),
		dark: 1/5,
		hpf: Pexprand(20,640),
	])
).play(quant:1);
)

s.record
Pdef(\0).stop;
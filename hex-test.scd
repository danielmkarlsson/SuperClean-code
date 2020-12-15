(
Pdef(\0,
	Pbind(*[
		type: \cln,
		snd: \hex,
		dur: 1/8,
		freq: 64*Pstutter(Pwhite(1,3),Pwhite(1,13)),
		hxr: Pexprand(0.001,10.0),
		bnd: Pwhite(0,-0.01),
		atk: Pexprand(0.001,10.0),
		rel: Pexprand(1.0,10.0),
		crv: Pwhite(-8.0,8.0),
		amp: Pexprand(0.01,0.9),
		pan: Pwhite(0.0,1.0),
		sustain: Pexprand(0.5,2.0),
	])
).play(quant:1);
)
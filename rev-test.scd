(
Pdef(\0,
	Pbind(*[
		type: \clean,
		snd: \mmd,
		num: Pstutter(Pwhite(1,12),Pwhite(0,12),inf),
		rel: 0.05,
		crv: -8,
		amp: Pseg(Pexprand(1/4,4.0),Pexprand(1,10),\exp,inf),
		hpf: Pseg(4000-Pexprand(20,4000),Pexprand(1,10),\exp,inf),
		lpf: Pseg(Pwhite(20,4000),Pexprand(1,10),\exp,inf).trace,
		lpq: Pseg(Pwhite(0.0,1.0),Pexprand(1,10),\exp,inf),
		pan: Pseg(Pwhite(0.0,1.0),Pexprand(1,10),\exp,inf),
		rin: Pseg(Pexprand(0.1,1),Pexprand(1,10),\exp,inf),
		rev: Pseg(Pwhite(0.5,1),Pexprand(1,10),\exp,inf),
		dry: Pseg(Pexprand(0.1,1),Pexprand(1,10),\exp,inf),
		stretch: Pseg(Pexprand(1/16,1/3),Pexprand(1,10),\exp,inf),
	])
).play(quant:1);
)
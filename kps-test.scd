(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \kps,
		amp: Pexprand(0.5,1.0),
		freq: 32*Prand([1,2,4,8,16],inf)*(1,3..11),
		dur: 1/Pstutter(Pwhite(5,11),Pwhite(5,11)),
		sustain: Pexprand(0.5,4.0),
		hpf: Pexprand(20,20000),
		lpf: (20000-Pexprand(20,20000)).trace,
		pan: Pwhite(0.0,1.0),
		])
).play(quant:1);
)
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: Pwhite(0,12),
		dur: 1/Pdup(Prand([5,7,9,11],inf),Prand([5,7,9,11],inf)),
		bpf: Pexprand(20,80).round.midicps,
		bpf: Pexprand(20,20000),
		bpq: Pdup(Prand([5,7,9,11],inf),Pexprand(0.000000001,1)),
		pan: Pwhite(0.0,1.0),
		amp: Pexprand(0.1,0.2),
	])
).play(quant:1);
)

(
Pdef(\0,
	Pbind(*[
		type: \clean,
		s: \mmd,
		n: 1,
		spd: Pstutter(Pexprand(8,18),Pexprand(1/3,512.0)),
		pan: Pstutter(Pexprand(7,17),Pwhite(0.0,1.0)),
		amp: Pstutter(Pexprand(6,16),Pwhite(1/8,2.0)),
		dur: 1/Pstutter(Pexprand(5,15),Pexprand(11,123)),
		cut: Pwrand([0,1],[1,8].normalizeSum,inf),
	])
).play(quant:1);
)
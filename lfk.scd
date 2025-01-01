(
Pdef(0,
	Pbind(*[
		type: Pseq([\cln, Pwrand([\cln, \], [20, 1], inf)], inf),
		snd: Pdup(Pseq([10, Pseq([1], inf)], inf),
			Pseq([\ixa, Pwrand2(
				[\ixa, \kps, \saw, \hat],
				[16, 1, 8, 4], inf)], inf)),
		freq: Pseq([
			Pexprand(20, 5.00, 10), Pwrand2([
				Pexprand(20, 2000, 1),
				Pexprand(20, 2000, 1).round(20),
				Pexprand(20, 2000, 1).round(40),
				Pexprand(20, 2000, 1).round(80),
				Pexprand(20, 2000, 1).round(160),
				Pexprand(20, 2000, 1).round(320),
				Pexprand(20, 2000, 1).round(640),
				Pexprand(20, 2000, 1).round(1280),
			], [3, 7, 8, 6, 5, 4, 2, 1], inf)
		], inf).clip(20, 2000),
		tun: Pexprand(1.0, 11.0) - 1,
		wid: Pexprand(1.0, 1.5) - 1,
		tri: Pexprand(1.0, 2.0),
		dur: Plprand(0.01, 1.5).trace,
		atk: Pseq([9.1 - Pexprand(0.1, 9, 10), Pexprand(0.1, 9)], inf),
		rel: 9,
		sustain: 9,
		pan: Pseq([Pmeanrand(0.25, 0.75, 10), Pwhite(0.0, 1.0, inf)], inf),
		amp: Pexprand(0.25, 1.0) / Pkey(\freq).linlin(20, 2000, 0.75, 1.75),
		lpf: Pkey(\freq).linlin(20, 2000, 20, 20000),
		jpr: 2,
		jps: 1,
		jpg: 4,
		dfm: 1,
		dfg: 0.75,
	])
).play
)

Pdef(0).stop

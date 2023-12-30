(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \ixa,
		dur: 1 / Pwrand2([1, 8], [1, 16], inf),
		pan: Pdup(Pexprand(1, 4), Pseq((0.0, 1/16 .. 1), inf)),
		amp: Pdup(Pexprand(1, 2), Pseq((1/64, 2/64 .. 4), inf)),
		fsh: 1,
		fsm: Pdup(Plprand(1, 4), Plprand(-4.0, 4.0)).round(1/11),
		freq: 100 * Pdup(Prand([4, 8, 32, 64], inf), Plprand(1.0, 4.0)).round(1/11),
		rel: 4,
		crv: Pdup(Plprand(1, 4), Plprand(-8.0, 8.0)).trace,
		sustain: 5,
		dla: 1/2,
		dlf: 0.94,
		dlt: (0.75 / Pdup(Pwrand2([1, 4, 8, 32], [32, 8, 4, 1], inf), Pn(Pgeom(32, 1.125, 9), inf) * Pn(Pgeom(2, 1.25, 7), inf))).clip(1/1024, 1),
		hpf: 150,
		jpr: 0.75,
		jps: 1,
		jpl: 0,
		jpg: 2,
		jlc: 0.4,
		ocq: 1,
		tnh: 1,
	])
).play;
)
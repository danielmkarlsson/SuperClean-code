(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \drm,
		dur: Prand([2, 1, 1/2, 1/4], inf),
		jpr: 1,
		jpg: Pexprand(1.0, 9.0) - 1,
		tnh: 1,
		tng: Pexprand(1.0, 9.0) - 1,
		dfm: 1,
		dfg: Pexprand(1.0, 9.0) - 1,
		jts: Plprand(0.0, 1.0),
		jpd: Plprand(0.0, 1.0),
		jpl: Pwhite(0.0, 1.0),
        jpm: Pwhite(0.0, 1.0),
        jph: Pwhite(0.0, 1.0),
        jpd: Pwhite(0.0, 1.0),
        jlc: Pwhite(0.0, 1.0),
        jhc: Pwhite(0.0, 1.0),
		rel: Plprand(1.0, 2.0),
		pew: Pwhite(0.5, 1.0),
	])
).play;
)
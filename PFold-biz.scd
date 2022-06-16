// You need to install UGenPatterns for this to work:
// https://github.com/redFrik/UGenPatterns

(
Pdef(0,
	Pseed(7,
		Pbind(*[
			type: \cln,
			snd: \ixa,
			dur: 1.5 / Pn(Pseries(1, 1.0002, 111), inf),
			neg: Pseries(0, -0.25, inf),
			pos: Pseries(0, 0.25, inf),
			atk: 0,
			crv: Pseg(Plprand(-8.0, 8.0), Pwhite(1.0, 19.0), \wel, inf),
			rel: Pkey(\dur) * Pseg(Pmeanrand(2.0, 64.0), Pwhite(1.0, 19.0), \wel, inf),
			legato: 64,
			freq: (300 + PFold(Pmeanrand(Pkey(\neg), Pkey(\pos)), -200, 1700).round(100) / 2).trace,
			pan: Pwhite(0.0, 1.0),
			stretch: (2 / Pn(Pseries(1, 1.0001, 124), inf)),
			hpf: Pseg(Plprand(20, 500), Pwhite(1.0, 19.0), \wel, inf),
			cav: 1/4,
			cai: Pkey(\hpf).explin(20, 500, 0.0, 1.0),
			amp: Pkey(\hpf).linlin(20, 500, 0.5, 0.25),
		])
	)
).play
)
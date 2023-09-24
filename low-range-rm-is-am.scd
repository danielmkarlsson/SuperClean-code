(
Pdef(0,
	Pseed(9199,
		Pbind(*[
			type: \cln,
			snd: Pseq([\drm, Pwrand2([\drm, \], [1, 4], inf)], inf),
			fed: Pexprand(0.001, 2),
			pew: Phprand(0.5, 1.0),
			dur: 4 / Pdup(Phprand(5, 11), Plprand(5, 11)),
			pan: Pwhite(0.0, 1.0),
			rel: 64,
			legato: 8,
			rma: 1,
			rmf: 0,
			rdf: Pexprand(0.01, 8.0),
			rdt: Phprand(5.0, 10.0),
			tun: Pexprand(3.0, 10.0).round(0.345),
			amp: Pexprand(1/8, 1/2) / Pkey(\tun).linexp(3, 10, 0.5, 2),
			jpr: 1/4,
			jpg: Pseg(Pdup(2, Pexprand(0.1, 99)), Pexprand(5.0, 20.0), \wel, inf),
			dfm: 1,
			lpf: Pseg(Pseq([10000, Pdup(2, Phprand(10000, 20000, inf))], inf), 8, \wel, inf).trace,
		])
	)
).play
)
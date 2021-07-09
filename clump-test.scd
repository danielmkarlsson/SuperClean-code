(
~clump = Plprand(1, 29).asStream;
Pdef(0,
	Pseed(4,
		Pbind(*[
			type: \cln,
			snd: \sin,
			dur: Pseg(Plprand(1/8, 1), Plprand(10, 50), \wel, inf),
			atk: Pstutter(Phprand(0, 2), Plprand(1/8, 8)),
			rel: Pstutter(Plprand(0, 2), Plprand(1/8, 8)),
			crv: Pseg([-8, 8, -8], Plprand(10, 100), \wel, inf),
			amp: Pseg(Plprand(0.333, 0.725), Plprand(10, 50), \wel, inf),
			freq: (20 * Pstutter(Plprand(0, 2), Plprand(1, 226).clump(Pfunc({~clump.next})).asStream.trace
				% (50 * Plprand(1, 226))) * Plprand(1, 5)),
			legato: Pkey(\atk) + Pkey(\rel),
			bnd: Pseg(Pwhite(-0.01, 0.01), Plprand(10, 50), \wel, inf)
				* Pkey(\legato).linlin(2/8, 16, 1, 2),
			cai: Pseg(Pwhite(0.0, 0.5), Plprand(10, 50), \wel, inf)
				* Pkey(\legato).linlin(2/8, 16, -0.25, 1.25).clip(0,1),
		])
	)
).play
)
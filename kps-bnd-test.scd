(
Pdef(0,
	Pseed(6,
		Pbind(*[
			type: \cln,
			snd: \kps,
			dur: 1,
			crv: -8,
			freq: Pseg(Pexprand(32, 3200), Phprand(1.0, 128.0), \exp, inf).trace,
			amp: Pkey(\freq).expexp(40, 15000, 6/7, 1/7),
			atk: Phprand(2.0, 4.0),
			crv: 0,
			rel: Phprand(2.0, 4.0),
			legato: Plprand(1.0, 4.0),
			sustain: Phprand(8.0, 64),
			bnd: Pmeanrand(-1.0, 1.0) / 8,
			tnh: 1,
			tnb: 10000,
			tng: 100,
			dark: 1,
			ocd: Pseg(Phprand(0.0, 1.0), Phprand(1.0, 128.0), \wel, inf),
			ocq: Pseg(Phprand(0.0, 1.0), Phprand(1.0, 128.0), \wel, inf),
		])
	)
).play
)

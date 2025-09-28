(
Pdef(0,
	Pseed(5,
		Pbind(*[
			type: \cln,
			snd: Pwrand2([\fmx, \ixa], [9, 1], inf),
			hr1: Plprand(1, 7),
			hr2: Plprand(1, 7),
			hr3: Plprand(1, 7),
			hr4: Plprand(1, 7),
			mi2: Plprand() * 20,
			scale: Scale.harmonicMinor(\sept1),
			degree: Plprand(1, 7),
			octave: Pwhite(3, 6),
			atk: Plprand(0.1, 19.0),
			rel: Pkey(\atk),
			crv: 8,
			legato: Pkey(\atk) + Pkey(\rel),
			dur: 4 / Prand([3, 5, 11], inf),
			amp: Plprand(1/4, 1),
			lpf: Plprand(20, 999),
			lhf: Plprand(),
			pan: Pmeanrand(),
			cav: 4,
			cai: Pseg(Plprand(), Pkey(\legato)),
		])
	)
).play;
)

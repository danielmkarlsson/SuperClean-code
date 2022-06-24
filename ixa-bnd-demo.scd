(
Pdef(0,
	Pseed(9129,
		Pbind(*[
			type: \cln,
			snd: \ixa,
			dur: Plprand(1.5, 3.5).round(0.25).trace,
			bnd: Pxshuf([
				0.1224620483089,
				0.2599210498937,
				0.3348398541685,
				0.4983070768743,
				0.6817928305039,
				0.8877486253586,
				1.0,
			], inf),
			amp: Plprand(0.5, 0.75),
			lpf: Plprand(4000, 20000),
			bnt: 4 / Plprand(8, 32),
			bnc: Pmeanrand(-8.0, 8.0),
			bno: Pkey(\dur) / 2,
			atk: Pkey(\dur) / 2,
			rel: Pkey(\dur) * 4,
			crv: 0,
			pan: Pseq([0.5, Plprand(0.0, 0.5, 1), Phprand(0.5, 1.0, 1)], inf),
			legato: 9,
			cav: 1/8,
			dla: 1/4,
			dlt: 16,
			dlf: 0.0,
		])
	)
).play;
)

Pdef(0).stop
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \drm,
		rps: Plprand(5, 11),
		dur: 1 / Pdup(Pkey(\rps), Phprand(5, 11)),
		pan: Pdup(Pkey(\rps), Pmeanrand(0.0, 1.0)),
		pew: Pdup(Pkey(\rps), Plprand(0.25, 4.0)),
		fed: Pdup(Pkey(\rps), Plprand(0.0, 2.5)),
		tri: Pdup(Pkey(\rps), Phprand(0.0, 1.0)),
		shp: Pdup(Pkey(\rps), Phprand(0.0, 1.0)),
		sha: 0,
		amp: Pdup(Pkey(\rps), Plprand(0.5, 2.0)),
	])
).play
)

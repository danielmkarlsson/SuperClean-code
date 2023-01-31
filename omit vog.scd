(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \drm,
		pan: Pwhite(0.0, 1.0),
		aux: Pxshuf(((0 .. 5) ++ (7 ..10)), inf), // omit vog
		dur: 1/9,
		legato: 49,
		tun: Pdup(Plprand(1, 4), Plprand(3.0, 9.0)).round(0.1),
		atk: Plprand(0.0, 0.3),
		rel: Plprand(4.5, 9.0),
		amp: Plprand(0.5, 0.7) / Pkey(\tun).linlin(3.0, 9.0, 1, 4),
		fed: Pkey(\tun).linlin(3.0, 9.0, 0.6, 0),
		shp: 1,
		sho: 0.462736,
		shi: 0.314214,
		slo: 0.983197,
		hit: 0.536125,
		lot: 0.193748,
	])
).play
)
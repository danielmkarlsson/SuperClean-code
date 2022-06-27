(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \drm,
		dur: 0.4 / Pseq([
			Pdup(Phprand(1, 11, 1), Plprand(3.0, 9.0)), Prand([
				Pdup(Plprand(1, 3, 1), Rest(1.25)), Pdup(Plprand(1, 3, 1), Rest(0.75))
		], 1)], inf),
		fed: Pdup(Plprand(1, 5, inf),Plprand(0.0, 10.0)),
		amp: Pseg(Pwhite(0.25, 0.75), Plprand(0.5, 3.0), \wel, inf).trace,
	])
).play
)
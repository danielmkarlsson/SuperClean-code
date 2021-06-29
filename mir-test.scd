// Test mir with some transients.

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \drm,
		dur: 1 / Plprand(1.0, 11.0),
		tun: Pwhite(0.0, 12.0),
		fed: Plprand(0.0, 4.0),
		shp: 1,
		sho: Plprand(0.0, 0.5),
		shi: Plprand(0.0, 0.5),
		slo: Phprand(0.5, 1.0),
		lhf: Pwhite(0.0, 1.0),
		rel: Pwhite(0.0, 1.0),
		amp: 0.33,
		mir: 1,
		mii: Pseg([0, 0, 1, 0], [5, 10, 10], \sin, inf),
	])
).play
)

// Test mir with some sustained sounds.
(
Pdef(0,
	Pbind(*[
		type: Pwrand2([\cln, \r], [9, 1], inf),
		snd: \fmx,
		hr1: Pxshuf((0 .. 2), inf),
		hr2: Pxshuf((0 .. 3), inf),
		hr3: Pxshuf((1 .. 4), inf),
		hr4: Pxshuf((1 .. 5), inf),
		fdb: Plprand(0.0, 0.01),
		mi2: Plprand(0.0, 0.1),
		mi3: Plprand(0.0, 1.0),
		mi4: Plprand(0.0, 10.0),
		en1: Plprand(0.0, 0.111),
		en2: Plprand(0.0, 0.222),
		en3: Plprand(0.0, 0.444),
		en4: Plprand(0.0, 0.888),
		cu1: Plprand(0.25, 2.0),
		cu2: Plprand(0.25, 2.0),
		cu3: Plprand(0.25, 2.0),
		cu4: Plprand(0.25, 2.0),
		sustain: Plprand(0.125, 1.25),
		scale: Scale.harmonicMinor.tuning_(Tuning.vallotti),
		degree: Plprand(0, 7),
		octave: Pstutter(Plprand(0, 3), Plprand(3, 7)) - Pwrand2([0, 1], [100, 1], inf),
		atk: Plprand(0.0, 1.5),
		hld: Phprand(0.0, 1.0),
		hld: Plprand(0.0, 1.0),
		rel: Phprand(1.0, 2.0),
		tri: Phprand(0.0, 1.0),
		amp: Pstutter(Plprand(3, 15), Plprand(0.4, 1.0)) / Pkey(\octave).linlin(2, 7, 0.75, 1.25),
		dur: 1.5 / Pstutter(Plprand(3, 15), Phprand(5, 11)),
		mir: 1,
		mii: Plprand(0.25, 0.5),
		stretch: Pseg(Pwhite(0.5, 3.0), Phprand(0.0, 15.0), \wel, inf),
		hpf: Pseg(Phprand(20, 400), Phprand(0.0, 15.0), \wel, inf),
		pan: Pseg(Pmeanrand(0.0, 1.0), Phprand(0.0, 15.0), \wel, inf),
	])
).play
)
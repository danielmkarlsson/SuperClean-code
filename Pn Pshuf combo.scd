(
Pdef(0,
	Pseed(9197,
		Pbind(*[
			type: \cln,
			snd: \drm,
			val: Pn(Pshuf((0.0, 1/5 .. 1.0), 9)),
			dur: 1 / Pn(Pshuf((0.0, 1/5 .. 1.0).linlin(0, 1, 5, 11), 9)).round(1/8),
			fed: Pn(Pshuf((0.0, 1/5 .. 1.0).linlin(0, 1, 0, 4), 9)),
			amp: Pn(Pshuf((0.0, 1/5 .. 1.0).linlin(0, 1, 0.2, 2.0), 9)),
			tun: Pn(Pshuf((0.0, 1/5 .. 1.0).linlin(0, 1, 0.0, 5.0), 9)).round(1/7),
			pan: 0.25,
			sustain: 2,
			rel: Pkey(\dur) * Plprand(1.0, 2.0),
			lpf: Plprand(20.0, 20000.0),
			lhf: Plprand(0.0, 1.0),
			tnh: 1,
			tng: 8,
			dfm: 1,
			dfg: 4,
			stretch: 1.5,
			shp: 1,
			sho: Pwhite(0.0, 1.0),
			shi: Pwhite(0.0, 1.0),
		])
	)
).play;

Pdef(1,
	Pseed(9197,
		Pbind(*[
			type: \cln,
			snd: \drm,
			val: Pn(Pshuf((0.0, 1/5 .. 1.0), 7)),
			dur: 1 / Pn(Pshuf((0.0, 1/5 .. 1.0).linlin(0, 1, 5, 11), 7)).round(1/8),
			fed: Pn(Pshuf((0.0, 1/5 .. 1.0).linlin(0, 1, 0, 4), 7)),
			amp: Pn(Pshuf((0.0, 1/5 .. 1.0).linlin(0, 1, 0.2, 2.0), 7)),
			tun: Pn(Pshuf((0.0, 1/5 .. 1.0).linlin(0, 1, 0.0, 5.0), 7)).round(1/7),
			pan: 0.75,
			sustain: 2,
			rel: Pkey(\dur) * Plprand(1.0, 2.0),
			lpf: Plprand(20.0, 20000.0),
			lhf: Plprand(0.0, 1.0),
			tnh: 1,
			tng: 8,
			dfm: 1,
			dfg: 4,
			stretch: 1.5,
			shp: 1,
			shi: Pwhite(0.0, 1.0),
			shi: Pwhite(0.0, 1.0),
		])
	)
).play;
)

s.record

(
Pdef(0).stop;
Pdef(1).stop
)
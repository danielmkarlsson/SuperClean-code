(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		frm: Pseg([0, 1], 30, \lin, 1),
		num: 0,
		dur: 1 / Prand([8, 4], inf),
		cav: 1,
		cai: Pkey(\frm).linlin(0.0, 0.5, 1, 0),
		amp: Pkey(\frm).linexp(0.0, 0.5, 0.25, 4),
		lpf: Pkey(\frm).linlin(0.0, 1.0, 20000, 1280),
		tri: Pkey(\frm).linlin(0.0, 1.0, 0.0, 1.0),
		dst: Pkey(\frm).linlin(0.25, 0.75, 0.0, 1.0),
		shp: Pkey(\frm).linlin(0.0, 0.5, 0, 1),
		sho: Pkey(\frm).linlin(0.0, 0.9, 0.001, 1.0),
		shi: Pkey(\frm).linlin(0.0, 0.8, 0.01, 0.5),
		slo: Pkey(\frm).linlin(0.0, 0.7, 0.9346, 0.141),
		lot: Pkey(\frm).linexp(0.0, 0.6, 0.376, 0.173),
		hit: Pkey(\frm).linlin(0.0, 0.5, 0.776, 0.351),
		hr1: Pkey(\frm).linexp(0.25, 0.75, 1, 2),
		fdb: Pkey(\frm).linlin(0.35, 0.85, 1, 10),
		mi1: Pkey(\frm).linlin(0.4, 0.90, 1, 10),
		mi2: Pkey(\frm).linlin(0.45, 0.95, 1, 10),
		mi3: Pkey(\frm).linlin(0.5, 1.0, 1, 10),
		octave: Pkey(\frm).linexp(0.5, 1.0, 6, 3).round,
	])
).play
)
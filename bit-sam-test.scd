

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \drm,
		amp: 1,
		dur: Pwhite(0.01, 0.5),
		sustain: Pwhite(0.01, 5.0),
		tun: Pseg([0, 5, 0], Pwhite(8.0, 16.0), \sin, inf),
		bit: Pseg([12, 1, 12], Plprand(8.0, 16.0), \lin, inf),
		sam: Pseg([1, 4096, 1], Phprand(8.0, 16.0), \exp, inf).trace,
		pan: Pwhite(0.0, 1.0),
	])
).play
)
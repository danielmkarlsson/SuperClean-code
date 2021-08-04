(
Pdef(0,
	Pbind(*[
		type: Pwrand2([\cln, \r], [1, 2], inf),
		rps: Plprand(5, 11),
		snd: Pwrand2([\sin, \saw, \sqr, \kps], [4, 3, 2, 1], inf),
		dur: 1 / Pdup(Pkey(\rps), Plprand(1, 5)),
		bnd: Pdup(Pkey(\rps), Plprand(0.0, 1.0).round(1/7)),
		octave: Pmeanrand(3, 8),
		degree: Plprand(0, 7),
		scale: Scale.locrian.tuning_(Tuning.sept2),
		calcFreq: Pfunc {|ev| ev.use {ev.freq.postln}},
		lpf: Pkey(\calcFreq) / 4,
		bnt: Plprand(0.0, 0.0125),
		atk: Pkey(\bnt) * Plprand(1, 80),
		sustain: Plprand(5, 15),
		rel: Plprand(5, 15),
		amp: Plprand(-9.dbamp, 3.dbamp),
		cav: 1,
		cai: Plprand(-192.dbamp, 0.dbamp),
	])
).play
)
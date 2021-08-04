(
Pdef(0,
	Pbind(*[
		type: Pwrand2([\cln, \r], [1, 2], inf),
		snd: Pwrand2([\saw, \ixa], [2, 1], inf),
		wid: Phprand(0.0, 0.5),
		iph: Pmeanrand(0.0, 1.0),
		bes: Plprand(0.0, 8.0),
		ber: Plprand(0.0, 1.0),
		abs: Plprand(0.0, 8.0),
		abr: Plprand(0.0, 1.0),
		ths: Plprand(0.0, 8.0),
		thr: Plprand(0.0, 1.0),
		dur: Pwrand2([1/8, 1/4], [2, 1], inf),
		bnd: Pwrand2([-1.0, 0.0, 1.0], [1, 3, 2], inf),
		bnt: Plprand(0.0, 0.125) / Prand([1, 2, 4], inf),
		bno: Phprand(0.0, 2.0).round(0.25),
		bnc: Pwhite(-8.0, 8.0),
		scale: Scale.harmonicMinor,
		degree: Pdup(Plprand(0, 3), Pseq([
			Plprand(0, 3, 1),
			Plprand(4, 7, 1)
		], inf)),
		mtranspose: Pdup(Phprand(4, 9), Pxshuf([
			Phprand(0, 3, 1),
			Phprand(4, 7, 1),
			Plprand(0, -3, 1),
			Plprand(-4, -7, 1)
		], inf)),
		octave: Pmeanrand(4, 6).round,
		sustain: Plprand(1.0, 4.0).round(0.25),
		atk: Plprand(0.0, 4.0).round(0.25),
		rel: Pkey(\sustain),
		crv: Plprand(-8.0, 8.0),
		pan: Pmeanrand(0.0, 1.0),
		calcFreq: Pfunc {|ev| ev.use {ev.freq.postln}},
		amp: Pkey(\calcFreq).expexp(73, 1975, 1, 1/3) * 1.5,
		lpf: Pkey(\calcFreq) * 4,
		hpf: 600,
		cav: 1,
		cai: Pseg(Phprand(0.0, 0.5), Phprand(30.0, 90.0), \wel, inf),
	])
).play
)
~clean.orderModules(['gra', 'env', 'lhf', 'shp', 'lpf','hpf']);

(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \saw,
		rps: Pexprand(5,11),
		wid: Pwhite(0.1,0.9),
		amp: Pexprand(0.5,2.0),
		pan: Pstutter(Pkey(\rps),Pwhite(0.0,1.0)),
		degree: Pstutter(Pkey(\rps),Pxshuf((0..7),inf)),
		octave: Pexprand(1,5).round,
		scale: Pstutter(Pkey(\rps),Pxshuf([Scale.harmonicMinor,Scale.minor,Scale.major,Scale.phrygian],inf)),
		rel: 10,
		sustain: 10,
		dur: 1/2,
		gra: 0.001,
		grf: 1,
		grs: 1,
		grr: 0,
		dark: 0.25,
		shp: 1,
		atk: Pwhite(0.0,10),
		sac: Pwhite(0.0,1.0),
		slo: Pwhite(0.0,1.0),
		shi: Pwhite(0.0,1.0),
		sho: Pwhite(0.0,1.0),
		lot: Pwhite(0.0,1.0),
		hit: Pwhite(0.0,1.0),
		lpf: Pexprand(20,20000),
		lhf: Pwhite(0.0,1.0),
	])
).play(quant:1);
)

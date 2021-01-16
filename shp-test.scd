(
Pdef(0,
	Pbind(*[
		type: Pwrand([\cln,\rest],[6,1].normalizeSum,inf),
		snd: \drm,
		dur: 1/Pwrand([5,10],[3,8].normalizeSum,inf),
		tun: Pstutter(Pexprand(1,8),Pexprand(0.0001,0.25)).trace,
		fdb: Pexprand(0.00001,2000.0),
		dst: Pwhite(0.0,1.0),
		shp: Pwhite(0.0,1.0),
		sac: Pwhite(0.0,1.0),
		slo: Pwhite(0.0,1.0),
		shi: Pwhite(0.0,1.0),
		sho: Pwhite(0.0,1.0),
		lot: Pwhite(0.0,1.0),
		hit: Pwhite(0.0,1.0),
		tri: Pwhite(0.0,1.0),
		amp: Pexprand(0.75,2.0),
		sustain: Pexprand(0.1,2.0),
		rel: Pexprand(Pkey(\dur)/(4/3),Pkey(\dur)*64),
		crv: Pwhite(-8.0,-0.00001),
		pan: Pseq([0.5,0.75,1.0,0.75,0.5,0.25,0.0,0.25],inf),
		lpf: 20000-Pexprand(2000,20000),
		legato: Pwrand([Pkey(\dur)*1.5,Pkey(\dur)*16],[1,2].normalizeSum,inf),
	])
).play(quant:1);
)
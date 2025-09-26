(
~tpa = Pwhite(0.0, 1.0).asStream;
Pdef(0,
	Pbind(*[
		type: Pwrand2([\cln, \], [2, 1], inf),
		snd: Pxshuf([\fm0, \fm1, \fm3, \fm4, \fm8, \fmb, \fmd], inf),
		dur: (1 / Pwrand2([
			Pseries(1, 1, 3),
			Pseries(1, 1, 5),
			Pseries(1, 1, 7),
			Pseries(1, 1, 9),
			Pseries(1, 1, 11),
			Pseries(1, 1, 13),
			Pseries(1, 1, 15),
			Pseries(1, 1, 17),
		], [15, 13, 11, 9, 7, 5, 3, 1], inf)).trace,
		freq: Pexprand(20, 2000).round(20),
		sustain: Pkey(\dur) * (12 - Pexprand(4, 8)),
        amp: Plprand(0.6, 1.2),
        pan: Pmeanrand(0.1, 0.9),
		jpr: 2/3,
        jps: Pkey(\dur).linlin(1/15, 1/3, 0.525, 1.0),
        jpg: Pkey(\dur).linlin(1/15, 1/3, 0.0, 1.0),
        bnd: Pkey(\dur).linlin(1/15, 1/3, -0.01, 0.01),
        bnt: Pkey(\sustain),
        tp1: Pfunc{~tpa.next},
        tp2: Pfunc{~tpa.next},
        tp3: Pfunc{~tpa.next},
        tp4: Pfunc{~tpa.next},
        tp5: Pfunc{~tpa.next},
        dfm: 1,
	])
).play
)

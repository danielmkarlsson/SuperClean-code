(
Pdef(0,
	Pseed(4,
		Pbind(*[
			type: Pwrand([\cln,\rest],[1,1].normalizeSum,inf),
			snd: \fmx,
			dur: Pstutter(Pexprand(1,5,inf),Pn(Prand((1..9)/24),inf),inf),
			atk: Pexprand(0.00001,0.1),
			hld: Pkey(\dur)*11,
			rel: Pkey(\dur)*8,
			amp: Pexprand(0.333,0.666).trace,
			rps: Pexprand(1,8),
			hr1: Pstutter(Pkey(\rps)+Pwhite(0,7),Pxshuf((1..4),inf)),
			hr2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pxshuf((1..4),inf)),
			hr3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pxshuf((1..4),inf)),
			hr4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pxshuf((1..4),inf)),
			mi2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pxshuf((0.0..3.0),inf)),
			mi3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pxshuf((0.0..3.0),inf)),
			mi4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pxshuf((0.0..3.0),inf)),
			fdb: Pexprand(0.000001,100.0),
			en1: Pstutter(Pkey(\rps)+Pwhite(0,7),Pexprand(0.001,0.666)),
			en2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pexprand(0.2,0.777)),
			en3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pexprand(0.3,0.888)),
			en4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pkey(\en3)*Pexprand(0.4,0.999)),
			cu1: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
			cu2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
			cu3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
			cu4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
			lpf: Pexprand(20,20000),
			pan: Pwhite(0.0,1.0),
			midinote: 60+PSloop(
				Pstutter(2,Prand([-24,-22,-19,-15,-12,-10,-8,-6,-5,-3,-1,2],inf))-12,
				bufSize: 4,
				lookBack: Pstutter(Pexprand(1,15),Pseq([0,1,2,3,4,5,6,7],inf),inf)
			),
			legato: Pexprand(8.0,32.0),
			dark: 0.25,

		])
	)
).play(quant:1);
)

Pdef(0).stop;

// You need a couple of things for this code to work on your machine:
// https://github.com/danielmkarlsson/SuperClean
// https://github.com/dkmayer/miSCellaneous_lib
// https://github.com/davidgranstrom/Pxshuf

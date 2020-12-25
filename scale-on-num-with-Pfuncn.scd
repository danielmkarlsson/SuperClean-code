(
Pdef(0,
	Pseed(345,
		Pbind(*[
			type: \cln,
			snd: \fmx,
			num: Pstutter(Pexprand(1,9),Pfuncn({
				var notes = Scale.harmonicMinor.degrees.collect(_+[0]).flat;
				notes.scramble[0];
			},inf))-Prand([0,12,24,36],inf),
			dur: 1/4,
			amp: Pexprand(0.5,4.0),
			rps: Pexprand(1,19),
			hr1: Pstutter(Pkey(\rps)-Pwhite(0,7),Pshuf((1..4),inf)),
			hr2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
			hr3: Pstutter(Pkey(\rps)-Pwhite(0,7),Pshuf((1..4),inf)),
			hr4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
			fdb: Pexprand(0.0001,100.0),
			mi2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((0.0001..4.0),inf)),
			mi3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((0.0001..4.0),inf)),
			mi4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((0.0001..4.0),inf)),
			amp: Pexprand(0.25,0.75),
			en1: Pstutter(Pkey(\rps)+Pwhite(0,7),Pexprand(0.0001,0.555)),
			en2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pexprand(0.2,0.666)),
			en3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pexprand(0.3,0.777)),
			en4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pkey(\en3)*Pexprand(0.4,0.888)),
			cu1: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
			cu2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
			cu3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
			cu4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
			legato: Pexprand(4,32),
			sustain: Pexprand(2.5,5.0),
		])
	)
).play(quant:1);
)
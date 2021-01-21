(
Pdef(0,
	Pseed(879,
		Pbind(*[
			type: \cln,
			snd: \dfd,
			scale: Scale.partch_o5,
			octave: Pwrand2((2..6),(6..2),inf),
			degree: Pstutter(Pwhite(0,7),Pwhite(0,7)),
			dur: Pstutter(Pexprand(1,16),Pexprand(0.01,0.5)),
			amp: Pexprand(0.5,1.0).trace,
			res: Pwhite(0.9,1.05),
			atk: Pexprand(0.00001,25.0),
			hld: Pexprand(0.1,2.5),
			rel: Pexprand(0.1,25.0),
			legato: Pwhite(10.0,20.0),
			sustain: Pwhite(10.0,20.0),
			den: Pexprand(0.0001,100),
			tri: Pkey(\octave).linlin(2,6,1,0),
			dark: 1/32,
		])
	)
).play;
)
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		sam: Pexprand(7,15),
		dur: 1/Pstutter(Pkey(\sam),Pkey(\sam)),
		pan: Pseq([0,1],inf),
		fdb: Pexprand(1.0,10001.0)-1,
		mi4: Pexprand(1.0,1001.0)-1,
		mi3: Pexprand(1.0,101.0)-1,
		mi2: Pexprand(1.0,11.0)-1,
		amp: Pexprand(1.0,2.0)-1,
		sustain: 1,
		octave: Pexprand(3,5).round,
		lhf: Pexprand(1.0,1.5)-1.0,
		//aux: Pseq((0..6),inf),
		dark: 1,
	])
).play;
)
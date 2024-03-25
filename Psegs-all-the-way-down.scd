(
Pdef(0,
	Pseed(50, // change me & reevaluate for another infinity's worth of slow interpolating changes
		Pbind(*[
			type: \cln,
			snd: \fmx,
			seg: Pexprand(9.0, 99.0),
			dur: Pseg(Pexprand(1/11, 1/5), Pkey(\seg), \exp, inf),
			hr1: Pseg(Pexprand(1.0, 4.0), Pkey(\seg), \exp, inf),
			hr2: Pseg(Pexprand(1.0, 4.0), Pkey(\seg), \exp, inf),
			hr3: Pseg(Pexprand(1.0, 4.0), Pkey(\seg), \exp, inf),
			hr4: Pseg(Pexprand(1.0, 4.0), Pkey(\seg), \exp, inf),
			mi1: Pseg(Pwhite(0.001, 1.0), Pkey(\seg), \exp,inf),
			mi2: Pseg(Pexprand(1.0, 2.0), Pkey(\seg), \exp, inf),
			mi3: Pseg(Pexprand(1.0, 3.0), Pkey(\seg), \exp, inf),
			mi4: Pseg(Pexprand(1.0, 4.0), Pkey(\seg), \exp, inf),
			en1: Pseg(Pexprand(0.001, 1.0), Pkey(\seg), \exp, inf),
			en2: Pseg(Pexprand(0.01, 1.0), Pkey(\seg), \exp,inf),
			en3: Pseg(Pexprand(0.1, 1.0), Pkey(\seg), \exp,inf),
			en4: Pseg(Pexprand(0.01, 1.0), Pkey(\seg), \exp,inf),
			cu1: Pseg(Pwhite(0.0, 1.0), Pkey(\seg), \wel,inf),
			cu2: Pseg(Pwhite(0.0, 1.0), Pkey(\seg), \wel,inf),
			cu3: Pseg(Pwhite(0.0, 1.0), Pkey(\seg), \wel,inf),
			cu4: Pseg(Pwhite(0.0, 1.0), Pkey(\seg), \wel,inf),
			lpf: (20000 - Pseg(Pexprand(200, 20000), Pkey(\seg), \exp, inf)).trace,
			amp: Pseg(Pexprand(0.25, 0.5), Pkey(\seg), \exp,inf),
			pan: Pseg(Pseq([Plprand(0.0, 0.5, 1), Phprand(0.5, 1.0, 1)], inf), Pkey(\seg), \wel,inf),
			cai: Pseg(Phprand(0.0, 1.0), Pkey(\seg), \lin, inf),
			cav: Pseg(Pwhite(0.0, 1/2), Pkey(\seg), \lin, inf),
			dry: Pseg(Pwhite(0.0, 1.0), Pkey(\seg), \lin, inf),
			freq: Pseg(Pdup(2, Pexprand(50, 400)), Pkey(\seg), \exp, inf),
			fsh: Pseg(Pmeanrand(-1.1, 1.1), Pkey(\seg), \exp, inf),
			fsm: Pseg(Pmeanrand(-1.1, 1.1), Pkey(\seg), \exp, inf), //||||
			sustain: Pseg(Pexprand(1.0, 2.0), Pkey(\seg), \exp, inf), //vvvv
			stretch: Pseg(Pexprand(1/16, 1/4), Pkey(\seg), \exp, inf) / 1.25, // lower is  slower
		]) // 1.25 somtimes takes me to about 75% CPU on this M1 MBA
	)
).play
)
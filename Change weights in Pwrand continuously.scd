( // smol example
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \fmx,
		octave: 4,
		dur: 1 / Pwrand([4, 8], Pdup(Plprand(1, 99), Pwhite(0.0, 1.0)).collect{|w| [w, 1 - w]}.trace, inf),
	])
).play;
)

( // more envolved
~a={|seed, octave, degree|
	var b =
	Pbind(*[
		type: \cln,
		snd: \ixa,
		snd: \fmx,
		scale: Scale.minor(\just),
		octave: octave,
		degree: degree,
		pan: Pdup(inf, Pmeanrand(0.0, 1.0)),
		dur: 1 / Pwrand([4, 8], Pdup(Pexprand(1, 9), Pwhite(0.0, 1.0)).collect{|w| [w, 1 - w]}, inf),
		atk: Pkey(\dur) * Pwhite(0.95, 1.05),
		hld: Pkey(\dur) / Pwhite(0.95, 1.05),
		rel: Pkey(\dur) * Pwhite(0.95, 1.05),
		sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
		crv: Pdup(inf, Pmeanrand(-8.0, 8.0)),
		crt: Pdup(inf, Pmeanrand(-8.0, 8.0)),
		hr1: Pdup(inf, Pwhite(1, 5)) * 2 - 2,
		hr2: Pdup(inf, Pwhite(1, 5)) * 2 - 2,
		hr3: Pdup(inf, Pwhite(1, 5)) * 2 - 2,
		hr4: Pdup(inf, Pwhite(1, 5)) * 2 - 2,
		mi1: Pdup(inf, Pwhite(0.0, 2.0)),
		mi2: Pdup(inf, Pwhite(0.0, 2.0)),
		mi3: Pdup(inf, Pwhite(0.0, 2.0)),
		mi4: Pdup(inf, Pwhite(0.0, 2.0)),
		en1: Pdup(inf, Pmeanrand(0.1, 0.9)),
		en2: Pdup(inf, Pmeanrand(0.1, 0.9)),
		en3: Pdup(inf, Pmeanrand(0.1, 0.9)),
		en4: Pdup(inf, Pmeanrand(0.1, 0.9)),
		cu1: Pdup(inf, Pmeanrand(-8.0, 8.0)),
		cu2: Pdup(inf, Pmeanrand(-8.0, 8.0)),
		cu3: Pdup(inf, Pmeanrand(-8.0, 8.0)),
		cu4: Pdup(inf, Pmeanrand(-8.0, 8.0)),
		amp: Pseg([0.9, 0, 0.9], Pexprand(9.0, 90.0), \wel, inf) / Pkey(\octave).linlin(2, 6, 1, 2),
		stretch: 0.975,
		jpr: 1/4,
	]);
	Pseed(seed, Pseq([b], inf));
};
Pdef(0, ~a.(0, 2, 2)).play;
Pdef(1, ~a.(1, 2, 5)).play;
Pdef(2, ~a.(2, 3, 0)).play;
Pdef(3, ~a.(3, 3, 3)).play;
Pdef(4, ~a.(4, 3, 5)).play;
Pdef(5, ~a.(5, 3, 7)).play;
Pdef(6, ~a.(6, 4, 2)).play;
Pdef(7, ~a.(7, 4, 4)).play;
Pdef(8, ~a.(8, 4, 6)).play;
Pdef(9, ~a.(9, 4, 7)).play;
Pdef(10, ~a.(10, 5, 4)).play;
Pdef(11, ~a.(11, 5, 6)).play;
Pdef(12, ~a.(12, 6, 1)).play;
Pdef(13, ~a.(13, 6, 4)).play;
)
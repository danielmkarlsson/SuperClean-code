

// hal (pronounced hall) can go long (approaching infinity in fact)
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 8,
		amp: 1,
		rel: 0.001,
		crv: -8,
		dur: Pseq([0.1, 0.1, 0.1, 999], 1),
		pan: Pseq([0.0, 1.0, 0.5], 1),
		hal: 1,
		rts: 999,
	])
).play
)

// press cmd+. before running the next example

// hal stays in it's lane (gives you mono output when you give it mono input)
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 8,
		amp: 1,
		rel: 0.001,
		crv: -8,
		dur: Pseq([0.1, 0.1, 0.1, 999], 1),
		pan: Pdup(4, Pwhite(0, 1)),
		hal: 1,
		rts: 999,
	])
).play
)

// hal won't try to kill you (doesn't explode when you change the parameters really fast)
(
Pdef(0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 8,
		amp: 1,
		rel: Pwhite(0.001, 1.0),
		crv: Pwhite(-8.0, 8.0),
		dur: Pexprand(0.001, 1.5),
		pan: Pdup(4, Pwhite(0.0, 1.0)),
		hal: 1,
		rts: Pexprand(0.1, 4000.0),
		bld: Pwhite(0.0, 1.0),
		edf: Pwhite(0.0, 1.0),
		ldf: Pwhite(0.0, 1.0),
		hlp: Phprand(5000, 20000),
		hhp: Plprand(20, 80),
	])
).play
)
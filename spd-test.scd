(
Pdef(\0,
	Pbind(*[
		type: \cln,
		snd: \mmd,
		num: 1,
		spd: Pdup(Pexprand(8,18),Pexprand(1/3,512.0)),
		pan: Pdup(Pexprand(7,17),Pwhite(0.0,1.0)),
		amp: Pdup(Pexprand(6,16),Pwhite(1/8,2.0)),
		dur: 1/Pdup(Pexprand(5,15),Pexprand(11,123)),
		cut: Pwrand([0,1],[1,8].normalizeSum,inf),
	])
).play
)

// elaborated example requires some extra bits to work

(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [512, 1], inf),
        snd: \mmd,
        num: Pdup(Pexprand(8, 99), Pxshuf((0 .. 12), inf)),
        spd: Pdup(Pexprand(7, 98), Pexprand(1, 64)),
        pan: Pdup(Pexprand(6, 97), Pmeanrand(0.0, 1.0)),
        amp: Pdup(Plprand(5, 96), Plprand(1/4, 2.0)),
        dur: 1 / Pdup(Pexprand(4, 95), Pexprand(11, 333)),
        bgn: (Pexprand(1.0, 1.05) - 1),
        legato: 999,
        cut: Pwrand2([0, 1], [1, 11], inf),
    ])
).play
)

// https://github.com/davidgranstrom/Pxshuf
// https://github.com/ffforces/Pwrand2

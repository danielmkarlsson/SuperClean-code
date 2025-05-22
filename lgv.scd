(
thisThread.randSeed = 19;
~not = (Pdup(Pexprand(19, 199), Pwhite(28, 40)) - Pseg(Pmeanrand(-0.25, 0.25), Pwhite(7.5, 15.0), \wel, inf)).asStream;
Pdef(0,
	Pseed(9,
		Pbind(*[
			type: \cln,
			snd: \ixa,
			psd: Pexprand(1.0, 2.0) - 1,
			psa: Pwhite(0.0, 1.0),
			psi: Pwhite(0.5, 1.0),
			psb: Pwhite(0.0, 1.0),
			midinote: Pfunc{~not.next},
			dur: 1 / Pexprand(1, 4),
			atk: 1,
			rel: 2,
			crv: 6,
			sustain: 99,
			tnh: 1,
			tng: 999,
			aux: Pwhite(0, 5),
			lhf: Pwhite(0.0, 1.0),
			hlf: Pwhite(0.0, 1.0),
			pan: Pwhite(0.0, 1.0),
			bes: 3 - Pexprand(1.0, 2.0),
			abs: 3 - Pexprand(1.0, 2.0),
			ths: 3 - Pexprand(1.0, 2.0),
		])
	)
).play;

Pdef(1,
	Pseed(9,
		Pbind(*[
			type: \cln,
			snd: \ixa,
			psd: Pexprand(1.0, 2.0) - 1,
			psa: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
			psi: Pwhite(0.5, 1.0).linlin(0.5, 1.0, 1.0, 0.5),
			psb: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
			midinote: Pfunc{~not.next} + 7,
			dur: 1 / Pexprand(1, 4),
			atk: 1,
			rel: 2,
			crv: 6,
			sustain: 99,
			tnh: 1,
			tng: 999,
			aux: Pwhite(6, 11),
			lhf: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
			hlf: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
			pan: Pwhite(0.0, 1.0).linlin(0.0, 1.0, 1.0, 0.0),
			bes: 3 - Pexprand(1.0, 2.0),
			abs: 3 - Pexprand(1.0, 2.0),
			ths: 3 - Pexprand(1.0, 2.0),
		])
	)
).play;
)

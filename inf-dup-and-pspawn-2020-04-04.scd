(
(// Manually evaluating a couple of times yields overlapping patterns that play in sync. These eventually stop unless reevaluated.
Pbind(*[
	type: \cln,
	snd: \fmx,
	midinote: 60 + Pdup(inf, (Prand((-24, Prand([-20, -17, -14, -10], inf) .. 24), inf)), inf)
	    - Pdup(inf, Pwrand([0, 12, 24], [1, 2, 4].normalizeSum, inf), inf),
	dur: 1 / 11 * Pexprand(1, 23).round,
	amp: Pseg([0, 2, 0], Pkey(\dur) * Pexprand(19, 43), \welch, 1).trace,
	lpf: Pexprand(20, 20000),
	en1: Pdup(Pwhite(0, 7), Pexprand(0.0001, 10.1)),
	en2: Pdup(Pwhite(0, 7), Pkey(\en1) * Pexprand(0.0001, 20.1)),
	en3: Pdup(Pwhite(0, 7), Pkey(\en1) * Pkey(\en2) / Pexprand(0.0001, 30.1)),
	en4: Pdup(Pwhite(0, 7), Pkey(\en1) * Pkey(\en2) / Pkey(\en3) * Pexprand(0.0001, 40.1)),
	mi1: Pwhite(0.0, 4),
	mi2: Pwhite(0.0, 4),
	mi3: Pwhite(0.0, 4),
	mi4: Pwhite(0.0, 4),
	fdb: Pwhite(0.0, 4),
	crv: -8,
]).play
);

(// AutoMagically fades in and out but kills running instances at reevaluation.
Pdef(\0,
	Pspawn(
		Pbind(*[
			pattern: Pfunc {
				Pbind(*[
					type: \cln,
					snd: \mmd,
					dur: 1 / 11 * Pexprand(1, 19).round,
					rel: Pkey(\dur) / Pexprand(1, 19)
					+ Pdup(Pseq([100, 1], inf), Pseq([0, Pdup(Pexprand(1, 32), Pexprand(0.0001, 2.0))], inf)),
					crv: Pexprand(-8, -3),
					num: Pdup(inf, (Pwhite(0, 39)), inf),
					amp: Pseg([0.001, 8, 0.001], Pkey(\dur) * Pexprand(6, 33), \exp, 1).trace,
					lpf: Phprand(20, 20000),
					stretch: Pdup(inf, Pwrand([1, 1.5, 2], [2, 1.5, 1], inf), inf),
					spd: 0.75,
					pan: Pwhite(0.3, 0.7),
			])},
			dur: Pdup(Pexprand(1, 5),Pexprand(3, 11)).round,
			method: \par
	]))
).play;
);
)

Pdef(\0).stop;

/*

I like how the above requires you to reevaluate, or it fizzles out. Kind of like a hand cranked mode of operation.
If you don't edit the code, density is the single parameter under your control.

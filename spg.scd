// this uses the spg impulse response file which can be downloaded here: https://danielmkarlsson.com/utilities/#spg

(
Pdef(0,
	Pseed(9993,
		Pbind(*[
			type: Pwrand2([\cln, \], [1, 1.1], inf),
			snd: Pseed(0, Pwrand2([\drm, \fmx], [1, 11], inf)),
			freq: Pexprand(160, 320).round(10),
			hr1: Pexprand(1, 7).asInteger,
			hr2: Pexprand(1, 7).asInteger,
			hr3: Pexprand(1, 7).asInteger,
			hr4: Pexprand(1, 7).asInteger,
			mi1: Pexprand(1, 5) - 1,
			mi2: Pexprand(1, 5) - 1,
			mi3: Pexprand(1, 5) - 1,
			mi4: Pexprand(1, 5) - 1,
			en1: Pmeanrand(0.1, 0.9),
			en2: Pmeanrand(0.1, 0.9),
			en3: Pmeanrand(0.1, 0.9),
			en4: Pmeanrand(0.1, 0.9),
			cu1: Pmeanrand(-8.0, 8.0),
			cu2: Pmeanrand(-8.0, 8.0),
			cu3: Pmeanrand(-8.0, 8.0),
			cu4: Pmeanrand(-8.0, 8.0),
			pew: Pwhite(0.5, 1.0),
			fed: Pexprand(1.0, 2.0) - 1,
			tun: Pexprand(3, 4),
			dur: 1 / Pexprand(0.5, 599),
			amp: Plprand(0.6, 0.8) / Pkey(\freq).linlin(160, 320, 1, 1.25),
			pan: Pmeanrand(0.0, 1.0),
			mir: 1,
			mii: Pseg(Pdup(2, Pseq([(Pexprand(1.0, 2.0, 1) - 1), 0], inf)), Pwhite(1.0, 10.0), \wel, inf).trace,
			atk: Pseed(0, Pwrand2([0, 0.2], [1, 2], inf)),
			rel: Pkey(\dur) * Pexprand(3, 9),
			sustain: Pkey(\atk) + Pkey(\rel),
			tnh: 1,
			tng: 4,
			hpf: Pwrand2([20, Pexprand(20, 200, 1)], [4, 1], inf),
		])
	)
).play;
)
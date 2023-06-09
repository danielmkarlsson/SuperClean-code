(
var seed = 1; // incrementing this and watch the postwindow
thisThread.randSeed = seed;
Routine {
	inf.do {arg i;
		Pdef(0,
			Pseed(seed + i,
				Pbind(*[
					type: \cln,
					snd: \mmd,
					dur: 1 / Prand([8, 4], inf),
					num: Prand((0 .. 12), inf).trace,
					legato: 99,
				])
			)
		).play;
		1/8.wait;
		Pdef(0).stop;
	}
}.play;
)
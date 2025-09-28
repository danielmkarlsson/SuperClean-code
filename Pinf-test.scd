(
Pdef(0,
	Pbind(
		type: \cln,
		snd: Pseed(0, Prand([\fm0, \fm1, \fmf, \fmi, \fmm], 107)),
        degree: Pinf(2, 1).linlin(-7, 8, -7, 7),
        dur: 1 / Pwrand2([8, 4], [16, 1], inf),
        amp: Pseq(((0!7) ++ Pinf(2, 1).linlin(-7, 8, 0.4, 1.0))),
        sustain: 1,
        jpr: 1/8,
        jps: 0.1,
        jpg: Pseed(0, Prand([1, 1, 1, 0, 0], 107)),
        pan: Pseed(0, Prand([0.25, 0.35, 0.5, 0.65, 0.75], 107)).trace,
    )
).play;
)

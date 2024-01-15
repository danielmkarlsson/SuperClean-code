(
Routine{
    Pdef(0,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\ixa, \kps, \sin, \saw, \fmx, \dfd], [1, 200, 1, 1, 1, 1], inf),
            dup: 128,
            freq: (200 * Pdup(Pkey(\dup), Pxshuf((1 .. 6), inf))),
            dur: 1 / Pdup(Pkey(\dup), Pkey(\dup)),
            bnd: Phprand(-0.5, 0.0, 128).round(0.1),
            bnt: Pexprand(1.0, 1.3) -1,
            bno: (1 / Pkey(\dup) * Pseq((128 .. 1), 1)),
            sustain: 8,
            pan: Pkey(\bno),
            atk: Pkey(\bno),
            crv: 8,
            rel: 6,
            jpr: 2,
            jps: Pexprand(1.1, 1.14) - 1,
            jpg: Pexprand(1.0, 8.0) - 1,
            amp: Pexprand(0.25, 1.0).trace,
            jts: 1,
            ocu: Pexprand(1.0, 2.0) - 1,
        ])
    ).play;
    exprand(6.0, 12.0).wait;
}.loop.play
)

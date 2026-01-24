(
Pdef(0,
    Pseed(9299,
        Pbind(*[
            type: \cln,
            snd: Pxshuf([
                \fm0, \fm1, \fm3, \fm5, \fma, \fmd, \fmf, \fmg, \fmi, \fmm,
                \fmn, \fmo, \fmp, \fmq, \fmr, \fms, \fmt, \fmu, \fmv,
            ], inf),
            scale: Scale.harmonicMinor(\sept2),
            octave: Prand([3, 5, 7], inf),
            amp: Plprand(0.7, 0.9) / Pkey(\octave).linlin(6, 7, 1, 2.5),
            degree: Pxshuf([
                Pxshuf((-14, -12 .. 14), 1), 
                Pxshuf((-7, -5 .. 7), 1), 
                Pxshuf((-14 .. 14), 1),
                Pxshuf((-7 .. 7), 1),
                Pxshuf((-13, -11 .. 13), 1),
                Pxshuf((-6, -4 .. 6), 1),
            ], inf),
            jpr: 1/2,
            jpg: Pseg(Phprand(0.1, 2.0), Pwhite(10.0, 20.0), \lin, inf),
            dur: (1 / Phprand(0.125, 4.0)).trace,
            sustain: Pexprand(2, 4) * Pkey(\dur).linlin(0.125, 4.0, 3, 1),
            hr1: Pexprand(1, 2).round,
            hr2: Pexprand(2, 3).round,
            hr3: Pexprand(3, 4).round,
            hr4: Pexprand(2, 4).round,
            hr5: Pexprand(2, 3).round,
            hr6: Pexprand(1, 2).round,
            mi1: Pexprand(1, 2) - 1,
            mi2: Pexprand(1, 1.5) - 1 * Pkey(\octave).linlin(3, 4, 1.5, 1),
            mi3: Pexprand(1, 1.25) - 1 * Pkey(\octave).linlin(3, 4, 1.25, 1),
            mi4: Pexprand(1, 1.125) - 1 * Pkey(\octave).linlin(3, 4, 1.125, 1),
            mi5: Pexprand(1, 1.25) - 1 * Pkey(\octave).linlin(3, 4, 1.25, 1),
            mi6: Pexprand(1, 2) - 1,
            en1: Pexprand(1.0, 1.1) - 1,
            en2: Pexprand(1.0, 1.1) - 1,
            en3: Pexprand(1.0, 1.1) - 1,
            en4: Pexprand(1.0, 1.1) - 1,
            en5: Pexprand(1.0, 1.1) - 1,
            en6: Pexprand(1.0, 1.1) - 1,
            aux: Pxshuf((0 .. 11), inf),
        ])
    )
);
Routine{
    Pdef(0).play;
    300.wait;
    Pdef(0).stop;
}.play
)

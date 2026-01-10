(
Pdef(0,
    Pseed(9299,
        Pbind(*[
            type: \cln,
            snd: Prand([
                \fm0, \fm1, \fm4, \fm7, \fma, \fmb, \fmf, \fmg, \fmi, \fmj,
                \fmk, \fml, \fmm, \fmn, \fmq, \fms, \fmu
            ], inf),
            dur: 1/11,
            sustain: Pseg(Pexprand(0.5, 5.0), Pwhite(1.0, 4.0), \wel, inf),
            stretch: Pseg(Pexprand(0.5, 10.0), Pwhite(1.0, 4.0), \wel, inf),
            scale: Pdup(Pexprand(29, 129), Pxshuf([
                Scale.major(\wcSJ),
                Scale.bartok(\wcSJ),
                Scale.dorian(\wcSJ),
                Scale.hexDorian(\wcSJ),
                Scale.mixolydian(\wcSJ),
                Scale.minor(\wcSJ),
                Scale.harmonicMinor(\wcSJ),
            ], inf)),
            degree: Pdup(Pexprand(9, 29), Plprand(-7.0, 7.0).round(0.5)),
            octave: Pwrand2([4, 5, 7, 8], [1, 2, 2, 1], inf),
            amp: (Pseg(Plprand(0.7, 0.9), Pwhite(2.0, 8.0), \wel, inf) 
                / Pkey(\octave).linlin(4, 8, 1, 1.125)).trace,
            jpr: 1/4,
            jps: Pseg(Pbrown(0.0, 1.0, Pwhite(0.0, 0.1)), Pwhite(8.0, 32.0), \wel, inf),
            jpg: Pseg(Phprand(0.5, 2.0), Pwhite(4.0, 16.0), \wel, inf),
            en1: Plprand(0.0, 1.0),
            en2: Plprand(0.0, 1.0),
            en3: Plprand(0.0, 1.0),
            en4: Plprand(0.0, 1.0),
            en5: Plprand(0.0, 1.0),
            en6: Plprand(0.0, 1.0),
        ])
    )
);
Routine{
    s.record;
    1.wait;
    Pdef(0).play;
    360.wait;
    Pdef(0).stop;
    120.wait;
}.play;
)

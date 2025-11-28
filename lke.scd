(
~seed = 9899;
thisThread.randSeed = ~seed;
~hrm = Pwrand2([
    Pxshuf((1.0, 1.2 .. 11.0), 1),
    Pxshuf((1.0, 1.3 .. 11.0), 1),
    Pxshuf((1.0, 1.4 .. 11.0), 1),
    Pxshuf((1.0, 1.5 .. 11.0), 1),
    Pxshuf((1.0, 1.6 .. 11.0), 1),
    Pxshuf((1.0, 1.7 .. 11.0), 1),
    Pxshuf((1.0, 1.8 .. 11.0), 1),
    Pxshuf((1.0, 1.9 .. 11.0), 1),
    Pxshuf((1.0, 2.0 .. 11.0), 1),
], (1 .. 9), inf).asStream; 
Pdef(0,
    Pseed(~seed,
        Pbind(*[
            type: Pwrand2([\cln, \], [1, 2], inf),
            snd: Prand([
                \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9,
                \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj,
                \fmk, \fml, \fmm, \fmn, \fmo, \fmp, \fmq, \fmr, \fms, \fmt,
                \fmu, \fmv,
            ], inf),
            hr1: Pfunc{~hrm.next},
            hr2: Pfunc{~hrm.next},
            hr3: Pfunc{~hrm.next},
            hr4: Pfunc{~hrm.next},
            hr5: Pfunc{~hrm.next},
            hr6: Pfunc{~hrm.next},
            hsm: Pkey(\hr1) + Pkey(\hr2) + Pkey(\hr3) + Pkey(\hr4) + Pkey(\hr5) + Pkey(\hr6),
            mi1: Pexprand(1/64, 1.25),
            mi2: Pexprand(1/64, 1.25),
            mi3: Pexprand(1/64, 1.25),
            mi4: Pexprand(1/64, 1.25),
            mi5: Pexprand(1/64, 1.25),
            mi6: Pexprand(1/64, 1.25),
            tp1: Phprand(0.5, 1.0),
            tp2: Phprand(0.5, 1.0),
            tp3: Phprand(0.5, 1.0),
            tp4: Phprand(0.5, 1.0),
            tp5: Phprand(0.5, 1.0),
            tp6: Phprand(0.5, 1.0),
            octave: Pexprand(3, 6).asInteger,
            lpf: Pkey(\octave).linexp(3, 6, 20000, 200),
            lpq: Pkey(\lpf).explin(400, 800, 0.8, 0.0),
            amp: Pexprand(0.25, 1.5) / Pkey(\hsm).linexp(9.0, 63.0, 0.9, 2.1),
            pan: Pmeanrand(0.0, 1.0),
            dur: Pdup(Pexprand(1, 5), Plprand(0.01, 1.0)).trace,
            sustain: Pkey(\dur).linexp(0.01, 1.0, 4, 0.9),
            jpr: 1/4,
            jpg: Pseg(Pdup(2, Pwhite(0.05, 1.0)), Pwhite(1.0, 10.0), \wel, inf),
            jps: Pseg(Pdup(2, Pmeanrand(0.48, 0.52)), Pwhite(1.0, 10.0), \wel, inf),
            stretch: Pseg(Pdup(2, Pmeanrand(0.5, 1.75)), Pwhite(2.0, 20.0), \wel, inf),
            aux: Pxshuf((0 .. 7), inf),
        ])
    )
);
Routine{
    //s.record(numChannels: 16);
    //1.wait;
    Pdef(0).play;
    360.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
}.play
)

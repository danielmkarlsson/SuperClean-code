(
Pdef(1,
    Pseed(9099,
        Pbind(*[
            type: \cln,
            snd: \,
            amp: 0,
            dur: 1/11,
            jpr: 1,
            jpg: Pseg(Plprand(0.0, 3.0), Pwhite(10.0, 30.0), \lin, inf),
            jps: Pbrown(0.0, 1.0, Pexprand(0.01, 0.11)),
        ])
    )
);

Pdef(2,
    Pseed(9099,
        Pbind(*[
            type: \cln,
            snd: \,
            amp: 0,
            dur: 1/11,
            jpr: 1,
            jpg: Pseg(Plprand(0.0, 3.0), Pwhite(10.0, 30.0), \lin, inf),
            jps: Pbrown(0.0, 1.0, Pexprand(0.01, 0.11)).linlin(0.0, 1.0, 1.0, 0.0),
            aux: 1,
        ])
    )
);

Pdef(3,
    Pseed(9199,
        Pbind(*[
            type: \cln,
            snd: \,
            amp: 0,
            dur: 1/11,
            jpr: 1,
            jpg: Pseg(Plprand(0.0, 3.0), Pwhite(10.0, 30.0), \lin, inf),
            jps: Pbrown(0.0, 1.0, Pexprand(0.01, 0.11)).trace,
            aux: 2,
        ])
    )
);

Pdef(4,
    Pseed(9199,
        Pbind(*[
            type: \cln,
            snd: \,
            amp: 0,
            dur: 1/11,
            jpr: 1,
            jpg: Pseg(Plprand(0.0, 3.0), Pwhite(10.0, 30.0), \lin, inf),
            jps: Pbrown(0.0, 1.0, Pexprand(0.01, 0.11)).linlin(0.0, 1.0, 1.0, 0.0).trace,
            aux: 3,
        ])
    )
);

thisThread.randSeed = 9;
~dup = Pexprand(1, 49).asStream;

Pdef(0,
    Pseed(9799,
        Pbind(*[
            type: \cln,
            snd: \fmw,
            freq: 32 * Pdup(Pfunc{~dup.next}, Pexprand(1, 4).round(1/31).unique),
            hr1: 1 + Pdup(Pfunc{~dup.next}, Pexprand(1/31, 4).round(1/31)),
            hr2: Pkey(\hr1) * Pdup(Pfunc{~dup.next}, Pexprand(1, 4).asInteger.unique),
            hr3: Pkey(\hr2) * Pdup(Pfunc{~dup.next}, Pexprand(1, 4).asInteger.unique),
            hr4: Pkey(\hr3) * Pdup(Pfunc{~dup.next}, Pexprand(1, 4).asInteger.unique),
            hr5: Pkey(\hr4) * Pdup(Pfunc{~dup.next}, Pexprand(1, 4).asInteger.unique),
            hr6: Pkey(\hr5) * Pdup(Pfunc{~dup.next}, Pexprand(1, 4).asInteger.unique),
            en1: Pexprand(1.0, 2.0) - 1,
            en2: (Pkey(\en1) * Pexprand(1.1, 1.5) % 1.0),
            en3: (Pkey(\en2) * Pexprand(1.1, 1.5) % 1.0),
            en4: (Pkey(\en3) * Pexprand(1.1, 1.5) % 1.0),
            en5: (Pkey(\en4) * Pexprand(1.1, 1.5) % 1.0),
            en6: (Pkey(\en5) * Pexprand(1.1, 1.5) % 1.0),
            mi1: Pexprand(1.0, 4.0) - 1,
            mi2: Pexprand(1.0, 4.0) - 1,
            mi3: Pexprand(1.0, 4.0) - 1,
            mi4: Pexprand(1.0, 4.0) - 1,
            mi5: Pexprand(1.0, 4.0) - 1,
            mi6: Pexprand(1.0, 4.0) - 1,
            amp: Pseg(Plprand(0.5, 0.7), Pwhite(1.0, 10.0), \wel, inf) 
                / Pkey(\freq).linlin(32, 128, 1, 1.75),
            dur: 1 / Phprand(0.2, 8.0),
            sustain: Phprand(1.0, 3.0),
            jpr: 1,
            biz: Pwhite(0, 3),
            aux: Pseed(0, Pxshuf((0 .. 3), inf)),
        ])
    )
).play;
Routine{
    s.record(numChannels: 8);
    Pdef(1).play;
    Pdef(2).play;
    Pdef(3).play;
    Pdef(4).play;
    1.wait;
    Pdef(0).play;
    360.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
    Pdef(1).stop;
    Pdef(2).stop;
    Pdef(3).stop;
    Pdef(4).stop;
}.play
)

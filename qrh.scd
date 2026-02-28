(
~jpg = Pdup(2, Pdup(Pexprand(9, 99), Plprand(0.1, 1.0))).asStream;
Pdef(0,
    Pseed(9099,
        Pbind(*[
            type: \cln,
            snd: Pdup(Pexprand(9, 19), Pxshuf([
                \fm0, \fm1, \fm2, \fm3, \fm7, 
                \fmf, \fmj, \fmk, \fmm, \fms
            ], inf)),
            dur: 1 / Phprand(1, 111),
            stretch: Pseg(Pdup(2, Pwhite(0.5, 2.0)), Pwhite(2.0, 20.0), \wel, inf),
            sustain: Pkey(\dur).linlin(1/111, 1, 0.7, 7) * Pkey(\stretch).linlin(0.5, 2.0, 2.0, 0.5),
            scale: Pdup(Pexprand(9, 999), Prand([
                Scale.minor(\just),
                Scale.major(\just),
                Scale.harmonicMinor(\wcSJ),
                Scale.mixolydian(\wcSJ),
                Scale.aeolian(\sept1),
                Scale.dorian(\sept1),
                Scale.ionian(\sept2),
                Scale.locrian(\sept2),
            ], inf)),
            octave: Pdup(Pexprand(9, 99), Pwhite(2, 5)),
            harmonic: Pdup(Pexprand(9, 99), Pexprand(1, 3)).round,
            degree: Pdup(Pexprand(9, 499), Pwhite(-14, 14).round(2).unique),
            pan: Pmeanrand(0.1, 0.9).trace,
            jpr: 1,
            jpg: Pfunc{~jpg.next},
            jps: 0.5,
            amp: Plprand(0.2, 0.4) + Pseg(Pwhite(0.0, 0.5), Pwhite(2.0, 20.0), \lin, inf),
            lpf: (2020 - Pexprand(20, 2000)) * Pseg(Pwhite(0.0, 10.0), Pwhite(2.0, 20.0), \lin, inf),
            hpf: Pexprand(20, 2000) * Pseg(Pwhite(0.0, 10.0), Pwhite(2.0, 20.0), \lin, inf),
            hr1: Pseg(Pwhite(1, 4), Pwhite(2.0, 20.0), \lin, inf).round,
            hr2: Pseg(Pwhite(1, 4), Pwhite(2.0, 20.0), \lin, inf).round,
            hr3: Pseg(Pwhite(1, 4), Pwhite(2.0, 20.0), \lin, inf).round,
            hr4: Pseg(Pwhite(1, 4), Pwhite(2.0, 20.0), \lin, inf).round,
            hr5: Pseg(Pwhite(1, 4), Pwhite(2.0, 20.0), \lin, inf).round,
            hr6: Pseg(Pwhite(1, 4), Pwhite(2.0, 20.0), \lin, inf).round,
            mi1: Pseg(Pexprand(1.0, 4.0) - 1, Pwhite(2.0, 20.0), \lin, inf),
            mi2: Pseg(Pexprand(1.0, 4.0) - 1, Pwhite(2.0, 20.0), \lin, inf),
            mi3: Pseg(Pexprand(1.0, 4.0) - 1, Pwhite(2.0, 20.0), \lin, inf),
            mi4: Pseg(Pexprand(1.0, 4.0) - 1, Pwhite(2.0, 20.0), \lin, inf),
            mi5: Pseg(Pexprand(1.0, 4.0) - 1, Pwhite(2.0, 20.0), \lin, inf),
            mi6: Pseg(Pexprand(1.0, 4.0) - 1, Pwhite(2.0, 20.0), \lin, inf),
            en1: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            en2: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            en3: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            en4: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            en5: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            en6: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            cu1: Pseg(Pwhite(-8.0, 8.0), Pwhite(2.0, 20.0), \lin, inf),
            cu2: Pseg(Pwhite(-8.0, 8.0), Pwhite(2.0, 20.0), \lin, inf),
            cu3: Pseg(Pwhite(-8.0, 8.0), Pwhite(2.0, 20.0), \lin, inf),
            cu4: Pseg(Pwhite(-8.0, 8.0), Pwhite(2.0, 20.0), \lin, inf),
            cu5: Pseg(Pwhite(-8.0, 8.0), Pwhite(2.0, 20.0), \lin, inf),
            cu6: Pseg(Pwhite(-8.0, 8.0), Pwhite(2.0, 20.0), \lin, inf),
            tp1: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            tp2: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            tp3: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            tp4: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            tp5: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
            tp6: Pseg(Pwhite(0.0, 1.0), Pwhite(2.0, 20.0), \lin, inf),
        ])
    )
);
Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \mmd,
        amp: 0,
        dur: 1/8,
        jpr: 1,
        jps: 0.5,
        jpg: Pfunc{~jpg.next},
    ])
);
Routine{
    Pdef(1).play;
    //1.wait;
    //s.record;
    Pdef(0).play;
    360.wait;
    Pdef(0).stop;
    120.wait;
    //s.stopRecording;
    Pdef(1).stop;
}.play
)

(
Pdef(0,
    Pseed(9990, 
        Pbind(*[
            type: Pwrand2([\cln, \], [2, 1], inf),
            snd: Pxshuf([
                \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9,
                \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj,
                \fmm, \fmn, \fmo, \fmp, \fmq, \fmr, \fms, \fmt, \fmu, \fmv
            ], inf),
            sustain: Pexprand(1/12, 6.0),
            dur: 1 / Pdup(Pexprand(1, 19), Pexprand(33, 111)),
            pan: Pseg([0.5, 0.8, 0.2, 0.5], Pexprand(2.5, 10.0), \lin, inf).trace,
            scale: Scale.prometheus(\wcSJ),
            degree: Pdup(Pexprand(9, 99), Pexprand(1, 8).unique) - 1,
            octave: Pdup(Pexprand(9, 99), Pwhite(3, 6).unique),
            amp: (Pseg(Pexprand(0.3, 0.4), Pwhite(1.0, 4.0), \wel, inf) 
                / Pkey(\octave).linexp(3, 6, 1, 2)),
            hr1: Pdup(Pexprand(9, 299), Pxshuf((1 .. 4), inf)),
            hr2: Pdup(Pexprand(9, 299), Pxshuf((1 .. 4), inf)),
            hr3: Pdup(Pexprand(9, 299), Pxshuf((1 .. 4), inf)),
            hr4: Pdup(Pexprand(9, 299), Pxshuf((1 .. 4), inf)),
            hr5: Pdup(Pexprand(9, 299), Pxshuf((1 .. 4), inf)),
            hr6: Pdup(Pexprand(9, 299), Pxshuf((1 .. 4), inf)),
            en1: Pseg(Plprand(0.2, 0.8), Pwhite(1, 9), \lin, inf),
            en2: Pseg(Plprand(0.2, 0.8), Pwhite(1, 9), \lin, inf),
            en3: Pseg(Plprand(0.2, 0.8), Pwhite(1, 9), \lin, inf),
            en4: Pseg(Plprand(0.2, 0.8), Pwhite(1, 9), \lin, inf),
            en5: Pseg(Plprand(0.2, 0.8), Pwhite(1, 9), \lin, inf),
            en6: Pseg(Plprand(0.2, 0.8), Pwhite(1, 9), \lin, inf),
            cu1: Pseg(Pwhite(-6.0, 6.1), Pwhite(1, 9), \lin, inf),
            cu2: Pseg(Pwhite(-6.0, 6.0), Pwhite(1, 9), \lin, inf),
            cu3: Pseg(Pwhite(-6.0, 6.0), Pwhite(1, 9), \lin, inf),
            cu4: Pseg(Pwhite(-6.0, 6.0), Pwhite(1, 9), \lin, inf),
            cu5: Pseg(Pwhite(-6.0, 6.0), Pwhite(1, 9), \lin, inf),
            mi6: Pseg(Pwhite(-6.0, 6.0), Pwhite(1, 9), \lin, inf),
            mi1: Pseg(Pexprand(0.01, 11.0), Pwhite(1, 9), \lin, inf),
            mi2: Pseg(Pexprand(0.01, 11.0), Pwhite(1, 9), \lin, inf),
            mi3: Pseg(Pexprand(0.01, 11.0), Pwhite(1, 9), \lin, inf),
            mi4: Pseg(Pexprand(0.01, 11.0), Pwhite(1, 9), \lin, inf),
            mi5: Pseg(Pexprand(0.01, 11.0), Pwhite(1, 9), \lin, inf),
            mi6: Pseg(Pexprand(0.01, 11.0), Pwhite(1, 9), \lin, inf),
            tp1: Pseg(Phprand(0.5, 1.0), Pwhite(1, 9), \lin, inf),
            tp2: Pseg(Phprand(0.5, 1.0), Pwhite(1, 9), \lin, inf),
            tp3: Pseg(Phprand(0.5, 1.0), Pwhite(1, 9), \lin, inf),
            tp4: Pseg(Phprand(0.5, 1.0), Pwhite(1, 9), \lin, inf),
            tp5: Pseg(Phprand(0.5, 1.0), Pwhite(1, 9), \lin, inf),
            tp6: Pseg(Phprand(0.5, 1.0), Pwhite(1, 9), \lin, inf),
            lpf: 20200 - Pexprand(200, 20000),
            lpq: Pexprand(1.0, 1.4) - 1,
            hpf: Pexprand(20, 2000),
            hpq: Pexprand(1.0, 1.4) - 1,
            lhf: Pmeanrand(0.0, 1.0),
            hlf: Pmeanrand(0.0, 1.0),
            jpr: 1/2,
            jps: Pdup(Plprand(999, 9999), Pexprand(1.0, 2.0)) - 1,
            jpg: Pseg(Phprand(0.1, 1.0), Pwhite(1.0, 4.0), \wel, inf),
        ])
    )
);
Routine{
    //s.record;
    //1.wait;
    Pdef(0).play;
    300.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
}.play
)

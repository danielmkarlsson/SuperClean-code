(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: Prand([
            \fm0, \fm1, \fmc, \fme, 
            \fmf, \fmh, \fmi, \fmk,
            \fmn, \fmp, \fmr, \fmv,
        ], inf),
        hr1: Pwrand2([1/4, 1/3, 1/2, 1], [1, 2, 4, 8], inf),
        hr2: Pwrand2([1/3, 1/2, 1, 2], [1, 2, 4, 8], inf),
        hr3: Pwrand2([1/2, 1, 2, 3], [1, 2, 4, 8], inf),
        hr4: Pwrand2([1, 2, 3, 4], [1, 2, 4, 8], inf),
        hr5: Pwrand2([2, 3, 4, 6], [1, 2, 4, 8], inf),
        hr6: Pwrand2([3, 4, 6, 8], [1, 2, 4, 8], inf),
        freq: 128,
        dur: 1/8,
        sustain: Pkey(\dur) * Pwrand2([1, 1.125, 1.25, 1.5], [64, 16, 4, 1], inf),
        amp: Plprand(0.5, 2.0),
        mi1: Pexprand(1.0, 9.0) - 1,
        mi2: Pexprand(1.0, 9.0) - 1,
        mi3: Pexprand(1.0, 9.0) - 1,
        mi4: Pexprand(1.0, 9.0) - 1,
        mi5: Pexprand(1.0, 9.0) - 1,
        mi6: Pexprand(1.0, 9.0) - 1,
        hal: 1/8,
        hlp: Pexprand(20, 20000),
        pan: Pwhite(0.0, 1.0),
        rts: Pdup(Pexprand(1, 5), Pexprand(1.0, 11.0)) - 1,
        lpf: Pexprand(
            Pseg([1000, 20000, 1500], Pwhite(3.0, 19.0), \exp, inf), 
            Pseg([1000, 20000, 1500], Pwhite(3.0, 19.0), \exp, inf)
        ).trace,
        lhf: Plprand(
            Pseg([0.2, 0.75, 0.2], Pwhite(3.0, 19.0), \wel, inf), 
            Pseg([0.2, 0.75, 0.2], Pwhite(3.0, 19.0), \wel, inf)
        ), 
        hlf: Plprand(
            Pseg([0.2, 0.75, 0.2], Pwhite(3.0, 19.0), \wel, inf), 
            Pseg([0.2, 0.75, 0.2], Pwhite(3.0, 19.0), \wel, inf)
        ), 
        tnh: 1,
        tng: 4,
    ])
);
Routine{
    s.record;
    1.wait;
    Pdef(0).play;
    3600.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
}.play
)

(
Pdef(0,
    Pseed(9499,
        Pbind(*[
            type: Pwrand2([\cln, \], [2, 1], inf),
            snd: Pxshuf([\fm1, \fm7, \fm8, \fmg, \fml, \fms, \fmu], inf),
            freq: Pdup(Pexprand(1, 99), Pseg(Pexprand(80, 1000), Pwhite(3.0, 30.0), \wel, inf).round(80).unique),
            rma: Pwhite(0.0, 1.0),
            rmf: Pwhite(0.1, 5.0),
            rdf: 0.025,
            dur: Pdup(Pexprand(1, 9), Pexprand(0.025, 0.25)),
            sustain: Pexprand(0.1, 1.0) * Pwrand2([1, 25], [25, 1], inf),
            amp: Pexprand(1.1, 1.5) / Pkey(\freq).linexp(20, 1000, 0.8, 2.2) / Pkey(\dur).linlin(0.025, 6.25, 2, 1),
            pan: Pmeanrand(0.25, 0.75),
            wid: Phprand(0.5, 1.0),
            hr1: Pdup(Pexprand(1, 49), Pseg(Pexprand(1, 8), Pwhite(3.0, 30.0), \wel, inf).round(1/2).unique),
            hr2: Pdup(Pexprand(1, 49), Pseg(Pexprand(1, 8), Pwhite(3.0, 30.0), \wel, inf).round(1/2).unique),
            hr3: Pdup(Pexprand(1, 49), Pseg(Pexprand(1, 8), Pwhite(3.0, 30.0), \wel, inf).round(1/2).unique),
            hr4: Pdup(Pexprand(1, 49), Pseg(Pexprand(1, 8), Pwhite(3.0, 30.0), \wel, inf).round(1/2).unique),
            hr5: Pdup(Pexprand(1, 49), Pseg(Pexprand(1, 8), Pwhite(3.0, 30.0), \wel, inf).round(1/2).unique),
            hr6: Pdup(Pexprand(1, 49), Pseg(Pexprand(1, 8), Pwhite(3.0, 30.0), \wel, inf).round(1/2).unique),
            en1: Pexprand(1.0, 1.5) - 1,
            en2: Pexprand(1.0, 1.5) - 1,
            en3: Pexprand(1.0, 1.5) - 1,
            en4: Pexprand(1.0, 1.5) - 1,
            en5: Pexprand(1.0, 1.5) - 1,
            en6: Pexprand(1.0, 1.5) - 1,
            cu1: Phprand(-8.0, 8.0),
            cu2: Phprand(-8.0, 8.0),
            cu3: Phprand(-8.0, 8.0),
            cu4: Phprand(-8.0, 8.0),
            cu5: Phprand(-8.0, 8.0),
            cu6: Phprand(-8.0, 8.0),
            jpr: 1/12,
            jpg: Pbrown(0.2, 2.0, Pwhite(0.001, 0.01)),
            jps: Pbrown(0.4, 0.6, Pwhite(0.0001, 0.01)),
            jts: Pbrown(0.0, 1.0, Pwhite(0.001, 1.0)),
            jpd: Pbrown(0.0, 1.0, Pwhite(0.001, 1.0)),
            jed: Pbrown(0.0, 1.0, Pwhite(0.001, 1.0)),
            jpl: Pbrown(0.5, 1.0, Pwhite(0.001, 1.0)),
            jph: Pbrown(0.0, 0.5, Pwhite(0.001, 1.0)),
            lpf: Pseg(Pdup(2, Pexprand(4000, 20000)), Pwhite(10.0, 20.0), \wel, inf),
            bnd: Pmeanrand(-0.015625, 0.015625),
            bnt: Pkey(\sustain),
            bno: Pwhite(0, Pkey(\sustain)),
            brf: Pexprand(20, 4000),
            brn: 1,
            bro: Pwhite(0.0, 1.0),
            brq: Pwhite(0.0, 1.0),
            aux: Pseed(0, Pxshuf((0 .. 26), inf)),
            pyr: Pfunc{|ev|ev.use{ev.amp.asStringPrec(48).postln}},
        ])
    )
);
Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \mmd,
        dur: 1/8,
        amp: 0,
        dfm: 1,
        dfg: 99,
        tnh: 1,
        tng: 8,
        jpr: 1,
        jpg: 2.5,
        jps: 0.75,
        aux: Pxshuf((0 .. 26), inf),
    ])
);
Routine{
    s.record(numChannels: 52);
    1.wait;
    Pdef(0).play;
    299.wait;
    Pdef(0).stop;
    60.wait;
    s.stopRecording;
}.play
)

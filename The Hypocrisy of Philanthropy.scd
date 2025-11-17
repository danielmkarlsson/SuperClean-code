(
Pdef(0,
    Pseed(9999, 
        Pbind(*[
            type: Pwrand2([\cln, \], [2, 1], inf),
            snd: \fmw,
            aux: Pxshuf((0 .. 7), inf),
            pan: Pwhite(0.0, 1.0).trace,
            dur: 1 / Pexprand(0.2, 7),
            bnd: Pmeanrand(-0.05, 0.05),
            bnt: Pkey(\dur),
            bno: Pwhite(0, Pkey(\dur)),
            mi1: Pexprand(0.1, 10.0),
            mi5: Pexprand(0.1, 10.0),
            octave: Pdup(Pexprand(1, 11), Pexprand(2, 6)).asInteger,
            amp: Plprand(0.5, 2.0) / Pkey(\octave).linlin(2, 6, 1, 2),
            scale: Scale.chromatic(\et31),
            degree: Pdup(Pexprand(1, 11), Plprand(-10, 21)),
            harmonic: Pdup(Pexprand(1, 11), Pexprand(1, 3)).asInteger,
            atk: Pkey(\dur) * Pexprand(1, 2),
            rel: Pkey(\dur) * Pexprand(1, 2),
            sustain: Pkey(\atk) + Pkey(\rel) + 1,
            crv: 8,
            dst: Pwhite(0.0, 1.0),
            tri: Pwhite(0.0, 1.0),
            ocu: Pwhite(0.0, 1.0),
            ocd: Pwhite(0.0, 1.0),
            ocq: Pwhite(0.0, 1.0),
            shp: Pseg(Pdup(2, Pexprand(0.01, 1.0)), Pexprand(0.1, 10.0), \exp, inf),
            shi: Pwhite(0.0, 1.0),
            slo: Pwhite(0.0, 1.0),
            hit: Pwhite(0.0, 1.0),
            lot: Pwhite(0.0, 1.0),
            en1: Pwhite(0.0, 1.0),
            en2: Pwhite(0.0, 1.0),
            en3: Pwhite(0.0, 1.0),
            en4: Pwhite(0.0, 1.0),
            en5: Pwhite(0.0, 1.0),
            en6: Pwhite(0.0, 1.0),
            lpf: Pseg(Pdup(2, Pexprand(20, 20000)), Pexprand(0.1, 10.0), \exp, inf),
            lhf: Pseg(Pdup(2, Pmeanrand(0.0, 1.0)), Pexprand(0.1, 10.0), \wel, inf),
            hlf: Pseg(Pdup(2, Pmeanrand(0.0, 1.0)), Pexprand(0.1, 10.0), \wel, inf),
            rma: 1,
            rmf: Pseg(Pdup(2, Pexprand(0.0001, 100.0)), Pexprand(0.1, 10.0), \wel, inf),
            rdf: Pkey(\rmf) / Pexprand(1.0, 1.1),
            dfm: 1,
            dfg: 99,
            tnh: 1,
            tng: 9,
            jpr: 8,
            jpg: Pseg(Pdup(2, Pexprand(0.1, 10.0)), Pexprand(0.1, 10.0), \wel, inf),
            jps: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pexprand(0.1, 10.0), \wel, inf),
            eat: Pseg(Pdup(2, Pexprand(0.94, 1.0)), Pexprand(0.1, 10.0), \exp, inf),
            the: Pseed(0, Pexprand(0.94, 1.0)) *  Pseed(1, Pexprand(0.1, 10.0)),
            rch: Pseg(Pdup(2, Pexprand(1/512, 1/16)), Pexprand(0.1, 10.0), \exp, inf).round(1/512),
        ])
    );
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
        aux: Pxshuf((0 .. 7), inf),
    ])
);
Routine{
    //s.record(numChannels: 16);
    Pdef(0).play;
    1200.wait;
    Pdef(0).stop;
    Pdef(1).play;
}.play;
)

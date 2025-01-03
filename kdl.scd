(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: Pdup(Plprand(1, 9), Prand([\kps, \ixa, \fmx], inf)),
        dur: 1/128,
        freq: Pseg(Pexprand(20, 200), Pexprand(0.1, 2.0), \wel, inf),
        fsh: Pseg(Pmeanrand(-1.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        fsm: Pseg(Pmeanrand(-5.0, 5.0), Pexprand(0.1, 2.0), \wel, inf),
        lpf: Pseg(20200 - Pexprand(200, 20000), Pexprand(0.1, 2.0), \wel, inf),
        hpf: Pseg(Pexprand(20, 20000), Pexprand(0.1, 2.0), \wel, inf),
        shp: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        sho: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        sha: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        shi: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        sLo: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        hit: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        lot: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        amp: Pseg(Pexprand(0.5, 4.0), Pwhite(0.1, 2.0), \wel, inf),
        ocu: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        ocd: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        tnh: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        tng: Pseg(Pwhite(1.0, 10.0), Pexprand(0.1, 2.0), \wel, inf),
        rel: 1,
        sustain: 1,
        pan: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        jpr: Pseg(Pexprand(0.5, 4.0), Pexprand(0.1, 2.0), \wel, inf),
        jpg: Pseg(Pexprand(0.01, 8.0), Pexprand(0.1, 2.0), \wel, inf),
        jpd: Pseg(Pwhite(0.0, 8.0), Pexprand(0.1, 2.0), \wel, inf),
        jps: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        jts: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf),
        jed: Pseg(Pwhite(0.0, 1.0), Pexprand(0.1, 2.0), \wel, inf).trace,
        hr1: Pseg(Pexprand(1, 10), Pexprand(0.1, 2.0), \wel, inf) - 1,
        hr2: Pseg(Pexprand(1, 10), Pexprand(0.1, 2.0), \wel, inf) - 1,
        hr3: Pseg(Pexprand(1, 10), Pexprand(0.1, 2.0), \wel, inf) - 1,
        hr4: Pseg(Pexprand(1, 10), Pexprand(0.1, 2.0), \wel, inf) - 1,
        mi1: Pseg(Plprand(0.0, 4.0), Pexprand(0.1, 2.0), \wel, inf),
        mi2: Pseg(Plprand(0.0, 4.0), Pexprand(0.1, 2.0), \wel, inf),
        mi3: Pseg(Plprand(0.0, 4.0), Pexprand(0.1, 2.0), \wel, inf),
        mi4: Pseg(Plprand(0.0, 4.0), Pexprand(0.1, 2.0), \wel, inf),
        en1: Pseg(Pwhite(0.0, 0.9), Pexprand(0.1, 2.0), \wel, inf),
        en2: Pseg(Pwhite(0.0, 0.9), Pexprand(0.1, 2.0), \wel, inf),
        en3: Pseg(Pwhite(0.0, 0.9), Pexprand(0.1, 2.0), \wel, inf),
        en4: Pseg(Pwhite(0.0, 0.9), Pexprand(0.1, 2.0), \wel, inf),
    ])
).play
)
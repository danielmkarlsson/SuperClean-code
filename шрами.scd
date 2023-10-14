~clean.lsf("~/snd/sar")
(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \sar,
        bgn: Pdup(Pexprand(9, 99), Pwhite(0.0, 0.9)).trace(prefix: ", "),
        pan: Pseg([0.0, 1.0, 0.0], Pwhite(30.0, 60.0), \wel, inf),
        ddv: Pwhite(0.33, 11.0),
        ddp: Pkey(\ddv).linlin(0.33, 11.0, 1, 8),
        dur: 1 / Pdup(Pkey(\ddp), Pkey(\ddv)),
        jpr: 1/16,
        jpg: 32,
        num: Pdup(Pwhite(39, 119), Pxshuf((0 .. 7),inf)),
        spd: Pdup(Pwhite(39, 119), Pexprand(1/4, 3.75)).round(1/7),
        atk: Pexprand(4.0, 12.0),
        hld: 2,
        rel: Pexprand(4.0, 12.0),
        crv: 0,
        legato: 25,
        amp: Pseg(Pdup(2, Plprand(0.5, 2.0)), Pwhite(15.0, 30.0), \wel, inf),
        lpf: Pseg(Pdup(2, Phprand(32, 20000)), Pwhite(15.0, 30.0), \wel, inf),
        lhf: Pseg(Pdup(2, Phprand(0.025, 0.5)), Pwhite(15.0, 30.0), \wel, inf),
        cav: 1/2,
        cai: Pseg(Pdup(2, Pwhite(0.25, 1.0)), Pwhite(15.0, 30.0), \wel, inf),
        dfm: 1,
        dfg: Pseg(Pdup(2, Pwhite(1.0, 2.0)), Pwhite(100.0, 200.0), \wel, inf),
    ])
).play
)

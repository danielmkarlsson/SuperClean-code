(
Pdef(0,
    Pseed(9998,
        Pbind(*[
            type: \cln,
            dup: (Pdup(Plprand(1, 19), Pseries(1, 2, inf) % 50 + 1)),
            snd: Pdup(Pkey(\dup), Prand([\drm, \hat], inf)),
            rel: Pdup(Pkey(\dup), Phprand(0.0001, 0.003)).trace,
            pan: Pdup(Pkey(\dup), Pmeanrand(0.0, 1.0)),
            dur: Pdup(Pkey(\dup), Pexprand(0.1, 0.15)),
            amp: Pdup(Pkey(\dup), Phprand(0.25, 2.5)),
            jpr: 1,
            jpg: Pseg(Pexprand(1.0, 3.0), Plprand(1.0, 10.0), \lin, inf),
            jts: Pseg(Pexprand(1.0, 1.05), Plprand(1.0, 10.0), \lin, inf) - 1,
            jpd: Pseg(Pexprand(1.0, 1.5), Plprand(1.0, 10.0), \lin, inf) - 1,
            jps: Pseg(Plprand(1.0, 1.05), Plprand(1.0, 10.0), \lin, inf) - 1,
            lpf: Pseg(Pexprand(80, 20000), Plprand(1.0, 10.0), \exp, inf),
            fsh: Pseg(Phprand(-1.0, 0.0), Plprand(1.0, 10.0), \wel, inf),
            fsm: Pseg(Phprand(-1.0, 0.0), Plprand(10.0, 100.0), \wel, inf),
            dfm: 1,
            dfg: 2,
        ])
    )
).play
)

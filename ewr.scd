(
Pdef(0,
    Pseed(1,
        Pbind(*[
            type: \cln,
            snd: \mmd,
            num: Pdup(Pexprand(99, 1999), Pxshuf((0 .. 11), inf)),
            bgn: Pseg([1.0, 0.0, Phprand(0.5, 1.0, 1)], Pexprand(0.001, 111.0), \lin, inf).trace,
            dur: 1 / Pdup(Pexprand(99, 1999), Prand([256, 512, 1024], inf)),
            spd: Pseg(Pdup(2, Pwhite(0.4, 4.0)), Plprand(0.01, 11.0), \wel, inf),
            amp: Pseg(Pdup(2, Plprand(0.5, 2.0)), Plprand(0.01, 11.0), \wel, inf),
            lpf: Pseg(Pdup(2, Pexprand(20, 20000)), Plprand(0.01, 11.0), \wel, inf),
            pan: Pseg(Pdup(2, Pmeanrand(0.0, 1.0)), Phprand(0.01, 11.0), \wel, inf),
            ocd: Pseg(Pdup(2, Phprand(0.0, 1.0)), Phprand(0.01, 11.0), \wel, inf),
            ocq: Pseg(Pdup(2, Phprand(0.0, 1.0)), Phprand(0.01, 11.0), \wel, inf),
            tnh: 1,
            tng: 99,
            dfm: 1,
            dfg: 99,
            cav: 1/128,
            cai: 1/8,
        ])
    )
).play
)

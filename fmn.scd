(
Pdef(0,
    Pseed(1008,
        Pbind(*[
            type: \cln,
            snd: \fmx,
            sgd: Pexprand(2, 7),
            sgt: Pexprand(2.5, 5.0),
            dur: Pbrown(0.075, 0.25, Pdup(Pkey(\sgd), Pwhite(0.005, 0.05)), inf).trace,
            hr1: Pseg(Pdup(Pkey(\sgd), Plprand(0.0, 4.0).round(1/5)), Pkey(\sgt), \lin, inf),
            hr2: Pseg(Pdup(Pkey(\sgd), Plprand(0.0, 4.0).round(1/5)), Pkey(\sgt), \lin, inf),
            hr3: Pseg(Pdup(Pkey(\sgd), Plprand(0.0, 4.0).round(1/5)), Pkey(\sgt), \lin, inf),
            hr4: Pseg(Pdup(Pkey(\sgd), Plprand(0.0, 4.0).round(1/5)), Pkey(\sgt), \lin, inf),
            mi1: Pseg(Pdup(Pkey(\sgd), Pexprand(1.0, 4.0)), Pkey(\sgt), \lin, inf) - 1,
            mi2: Pseg(Pdup(Pkey(\sgd), Pexprand(1.0, 4.0)), Pkey(\sgt), \lin, inf) - 1,
            mi3: Pseg(Pdup(Pkey(\sgd), Pexprand(1.0, 4.0)), Pkey(\sgt), \lin, inf) - 1,
            mi4: Pseg(Pdup(Pkey(\sgd), Pexprand(1.0, 4.0)), Pkey(\sgt), \lin, inf) - 1,
            en1: Pseg(Pdup(Pkey(\sgd), Pexprand(1.0, 1.125)), Pkey(\sgt), \lin, inf) - 1,
            en2: Pseg(Pdup(Pkey(\sgd), Pexprand(1.0, 1.125)), Pkey(\sgt), \lin, inf) - 1,
            en3: Pseg(Pdup(Pkey(\sgd), Pexprand(1.0, 1.125)), Pkey(\sgt), \lin, inf) - 1,
            en4: Pseg(Pdup(Pkey(\sgd), Pexprand(1.0, 1.125)), Pkey(\sgt), \lin, inf) - 1,
            rel: Pseg(Pdup(Pkey(\sgd), Plprand(1.0, 19.0)), Pkey(\sgt), \lin, inf),
            crt: Plprand(-4.0, 4.0),
            amp: Pseg(Pdup(Pkey(\sgd), Plprand(0.75, 1.5)), Pkey(\sgt), \lin, inf) - Pwhite(-0.25, 0.25),
            cav: 1/11,
            cai: Plprand(0.1, 1.0),
            brf: Pexprand(20, 4000),
            brq: Pwhite(0.0, 1.0),
            brn: Pwhite(0.0, 1.0),
            bro: Pwhite(0.0, 1.0),
            hpf: Pexprand(40, 600),
            lhf: Pmeanrand(0.2, 0.8),
        ])
    )
).play
)
~clean.lsf("~/snd/vnl")
(
Pdef(0,
    Pseed(9195,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\vnl, \], [1, 2], inf),
            num: Pxshuf((0 .. 7), inf),
            dur: Plprand(0.25, 1.5),
            bgn: Prand([Plprand(0.0, 1.0), Phprand(1.0, 2.0)], inf),
            amp: Pwhite(0.0, 1.0),
            hld: 9,
            atk: Plprand(0.01, 0.1),
            rel: 9,
            amp: Plprand(2.0, 8.0).trace,
            spd: Plprand(1/8, 2.0),
            lpf: Pkey(\spd).linlin(0.25, 0.251, 1250, 20000),
            lhf: Pmeanrand(0.0, 1.0),
            cav: 2,
            cvl: 0.9,
            cai: Pseg(Plprand(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            tnh: 1,
            tng: 3,
            legato: 99,
        ])
    )
).play
)

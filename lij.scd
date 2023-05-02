(
Pdef(0,
    Pseed(9599,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\drm, \hat, \ixa, \clp], [64, 8, 64, 1], inf),
            num: Pdup(Plprand(1, 19), Pxshuf((0 .. 12), inf)),
            dur: 1/8,
            pan: Pwhite(0.0, 1.0),
            amp: Pseg(Phprand(0.5, 2.0), Plprand(2.0, 20.0), \lin, inf).trace,
            stretch: Pseg(Plprand(1/32, 1.0), Plprand(2.0, 20.0), \lin, inf),
            hpf: Pseg(Plprand(20, 2000), Plprand(2.0, 20.0), \exp, inf),
            lpf: Pseg(Phprand(20, 20000), Plprand(2.0, 20.0), \exp, inf),
            rel: Pseg(Phprand(0.001, 0.75), Plprand(2.0, 20.0), \exp, inf),
            crv: -8,
            crt: 8,
            freq: (3800 / Pdup(Plprand(29, 119), Phprand(20, 100).round(20))),
            legato: 29,
            shp: 1/2,
            shi: 0.9,
            slo: 0.3,
            tnh: 1/4,
            tng: 5,
            tri: 1,
            dst: 1,
            cav: 1/4,
            cai: Pseg(Plprand(0.5, 1.0), Plprand(2.0, 20.0), \exp, inf),
        ])
    )
).play
)

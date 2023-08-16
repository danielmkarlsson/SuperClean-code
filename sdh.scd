(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \drm,
        dur: Plprand(0.01, 2.9).trace,
        amp: Plprand(0.5, 1.5),
        fed: Pexprand(1.0, 15.0) - 1,
        pan: Pseq([Plprand(0.0, 0.5, 1), Pmeanrand(0.0, 1.0, 1), Phprand(0.5, 1.0, 1)], inf),
        lhf: Pmeanrand(0.0, 1.0),
        hal: Plprand(0.0, 1.0),
        rts: Pexprand(1.0, 21.0) - 1,
        tun: Pdup(Pexprand(1, 19), Plprand(0.01, 5.0).round(0.3)),
        rel: Plprand(1.0, 8.0),
        pew: Plprand(0.5, 0.75),
        dst: Phprand(0.0, 1.0),
        shp: Phprand(0.0, 1.0),
        sho: Pmeanrand(0.0, 1.0),
        shi: Plprand(0.0, 1.0),
        slo: Phprand(0.0, 1.0),
        hit: Plprand(0.0, 1.0),
        lot: Phprand(0.0, 1.0),
        dfm: 1,
        dfg: 8,
        tnh: 1,
        tng: 8,
    ])
).play
)

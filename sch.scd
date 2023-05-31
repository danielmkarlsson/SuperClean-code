(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 4], inf),
        snd: Pwrand2([\drm, \hat, \ixa, \dfd], [2, 1, 4, 8], inf),
        dur: 1 / Plprand(1.0, 16.0),
        amp: Plprand(0.5, 4.0),
        rel: Plprand(0.5, 2.0),
        pan: Pwhite(0.0, 1.0),
        fed: Plprand(0.0, 2.0).trace,
        tun: Plprand(2.0, 8.0).round(0.075),
        cut: Pwrand2([0, 1], [2, 1], inf),
        shp: Plprand(0.0, 0.5),
        shi: Phprand(0.0, 1.0),
        slo: Plprand(0.0, 1.0),
        hit: Plprand(0.0, 1.0),
        lot: Plprand(0.0, 1.0),
        tnh: Plprand(0.0, 1.0),
        tng: Plprand(0.0, 49.0),
        lpf: Plprand(20, 20000),
        lhf: Pmeanrand(0.0, 0.75),
        hal: Plprand(0.0, 1.0),
        rts: Plprand(0.0, 8.0),
        freq: Plprand(20, 400).round(20),
    ])
).play
)

Pdef(0).stop

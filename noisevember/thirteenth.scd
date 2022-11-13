(
Pdef(0,
    Pseed(2101,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\drm, \hat, \], 
                [10, 5, 1], inf),
            dur: Plprand(1/32, 1/2),
            tun: Plprand(0.25, 8.0).round(0.25),
            atk: Pwrand2([Plprand(0.0, 10.0, 1), 0], 
                [1, 32], inf),
            rel: Phprand(1/32, 32.0).trace,
            amp: Plprand(2.0, 4.0),
            tnh: Plprand(0.0, 1.0),
            tnb: Plprand(20, 20000),
            tna: Phprand(20, 20000),
            tng: Phprand(1.0, 99.0),
            smr: Plprand(0.0, 1.0),
            scm: Plprand(0.0, 1.0),
            enh: Plprand(0.0, 1.0),
            ocu: Pwhite(0.0, 1.0),
            sam: Pwrand2([Plprand(0.0, 10.0, 1), 0], 
                [1, 4], inf),
            fed: Pwrand2([Plprand(0.0, 2.0, 1), 0], 
                [1, 4], inf),
            pew: Plprand(0.5, 2.0),
        ])
    )
).play
)


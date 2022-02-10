(
Pdef(0,
    Pseed(0,
        Pbind(*[
            type: \cln,
            snd: \dfd,
            dur: 1 / Phprand(5.0, 111.0),
            res: 0,
            nsl: 0,
            den: Plprand(50.0, 200.0),
            atk: 0,
            hld: Plprand(0.001, 0.01),
            rel: 0,
            amp: Pwhite(0.5, 1.0).trace,
            pan: Pwhite(0.0, 1.0),
            hpf: Phprand(20, 20000),
            dla: 1,
            dlf: 1,
            dlt: 16,
        ])
    )
).play
)
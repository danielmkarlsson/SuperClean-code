(
Pdef(0,
    Pseed(9,
        Pbind(*[
            type: Pwrand2([\cln, \r], [1, 4], inf),
            snd: \drm,
            dur: (1 / Pdup(Plprand(5, 21), Pbrown(5, 13, Pdup(Plprand(1, 3), Plprand(1, 3))))),
            amp: Pdup(Plprand(1, 3), Plprand(1/19, 19)),
            tun: Plprand(-27.0, 7.0),
            pew: Phprand(0.5, 2.0),
            pan: Pdup(Plprand(0, 3), Pwhite(0.0, 1.0)),
            fsh: Pdup(Plprand(1.0, 300.0), Plprand(1.0, 128.0)),
            fsm: Pdup(Plprand(3.0, 30.0), Plprand(0.0, 1/16)),
            rma: 1,
            rmf: Pbrown(32, 512, Pwhite(1.0, 11.0)),
            rdf: Pkey(\rmf) - (Pkey(\rmf) / Pwhite(1, 4)),
            rdt: Pkey(\dur) - (Pkey(\dur) / Pwhite(1.0, 2.0)),
            fuz: 1,
            tnh: 1,
            fzv: (Pseries(0, 0.05, inf) % 100).trace(prefix: "fzv: "),
            tng: (Pseries(0, 0.051, inf) % 101).trace(prefix: "tng: "),
            dark: Pwrand2([0, 0.025], [4, 1], inf),
            sustain: Plprand(0.5, 4.0),
        ])
    )
).play
)

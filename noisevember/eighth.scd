(
Pdef(0,
    Pseed(4731,
        Pbind(*[
            type: \cln,
            snd: \clp,
            rel: Plprand(0.0, 10.0),
            bnd: Pwhite(-1.0, 1.0),
            dur: Plprand(0.0001, 0.1),
            amp: Plprand(0.0, 1.0),
            legato: Plprand(0.0, 100.0),
            pan: Prand([Plprand(0.0, 0.5, 1), 
                Phprand(0.5, 1.0, 1)], inf),
            bpf: Pdup(Plprand(29, 299), Plprand(20, 8000)),
            bpq: Plprand(0.0, 0.004),
            lpf: Plprand(20, 4000),
            cav: 1/16,
            tnh: 1,
            tng: 10,
            lhf: Plprand(0.0, 0.03).trace,
            amp: 2 / Pkey(\lpf).linlin(40, 2000, 1/2, 1.8),
            fsh: Pdup(Plprand(39, 399), 
                Pwrand2([0, Plprand(0, 800, 1)], [2, 1], inf)),
        ])
    )
).play
)

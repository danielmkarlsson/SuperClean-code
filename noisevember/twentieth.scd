(
Pdef(0,
    Pseed(9944,
        Pbind(*[
            type: \cln,
            snd: Prand([\ixa, \dfd], inf),
            atk: Plprand(0.0, 10.0),
            rel: 299,
            crv: -256,
            dur: Plprand(1/13, 1/3),
            pan: Pwhite(0.0, 1.0),
            dup: Plprand(1, 9),
            fnd: Pdup(Pkey(\dup), Plprand(20, 160)),
            freq: Pkey(\fnd) * Pwrand2([
                Ptuple([Plprand(1, 99, 1), Plprand(1, 99, 1), Plprand(1, 99, 1), Plprand(1, 99, 1)], inf),
                Ptuple([Plprand(1, 99, 1), Plprand(1, 99, 1), Plprand(1, 99, 1)], inf),
                Ptuple([Plprand(1, 99, 1), Plprand(1, 99, 1)], inf),
                Plprand(1, 99, 1),        
            ], [1, 2, 3, 4], inf),
            cav: 1/2,
            lhf: Pseg([0.125, 0.5, 0.5, 0.125], Plprand(30.0, 120.0), \lin, inf).trace,
            amp: Pseg([0.0, 0.25, 0.0, 0.0], Plprand(3.0, 19.0), \wel, inf),
            bnd: Pdup(99, Phprand(-0.075, 0.0)),
            bno: Pdup(99, Plprand(1.0, 10.0)),
            bnt: Pdup(99, Plprand(1.0, 10.0)),
            tri: 1,
            tnh: 1,
            tng: 99,
            fuz: Pwrand2([0, 1], [99, 1], inf),
        ])
    )
).play
)

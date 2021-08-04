//https://www.youtube.com/watch?v=4m1EFMoRFvY
~clean.lsf("yli")
(
Pdef(0,
    Pseed(24,
        Pbind(*[
            type: \cln,
            snd: \yli,
            rps: Plprand(1, 111),
            legato: Pdup(Pkey(\rps), Phprand(1.0, 32.0)),
            dur: 1 / Pdup(Pkey(\rps), Pwhite(5, 22)),
            bgn: Pdup(Pkey(\rps), Pwhite(0.0, 1.0)),
            amp: Pseg(Plprand(1/5, 1.5), Pwhite(5.0, 10.0), \wel, inf),
            pan: Pwhite(0.0, 1.0),
            lpf: Phprand(20, 20000),
            spd: Pseg(Plprand(1/2, 1.0), Phprand(60.0, 240.0), \exp, inf),
            rel: Pkey(\dur) * Pdup(Pkey(\rps), Phprand(1.0, 32.0)),
            crv: -8,
            ocd: Pwhite(0.0, 1.0),
            ocq: Pwhite(0.0, 1.0),
            tnh: 1,
            tng: Pseg(Phprand(2.0, 8.0), Pwhite(5.0, 10.0), \exp, inf),
            stretch: Pseg(Pwhite(1/64, 1/2), Pwhite(15.0, 30.0), \exp, inf).trace,
        ])
    )
).play
)

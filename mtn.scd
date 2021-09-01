~clean.lsf("mtn")
(
Pdef(0,
    Pseed(2,
        Pbind(*[
            type: \cln,
            snd: \mtn,
            dur: 1 / Pseg(Plprand(0.0001, 1.5), Pwhite(5.0, 20.0), \wel, inf),
            spd: -1 + Pdup(Plprand(9, 19), Phprand(0.0, 0.83)),
            num: Pxrand((0 .. 84), inf),
            amp: Plprand(0.5, 2.0),
            pan: Pmeanrand(0.0, 1.0),
            lhf: Pmeanrand(0.125, 0.5),
            cav: 1,
            cvv: Plprand(0.0, 0.1),
            cvr: Pkey(\cvv).linlin(0.0, 0.1, 10, 1),
            cai: Pdup(Pkey(\cvr), Pkey(\cvv)).trace,
            dla: Plprand(0.0, 0.01),
            dlf: 0.94,
            dlt: 1 / Pwhite(256.0, 2048.0),
            rma: 1,
            rmf: Plprand(20, 400),
            lpf: Plprand(20, 20000),
            sha: 0,
            shp: Plprand(0.0, 1.0),
            shi: Plprand(0.0, 1.0),
            sho: Plprand(0.0, 1.0),
            slo: Phprand(0.0, 1.0),
            hit: Plprand(0.0, 1.0),
            lot: Phprand(0.0, 1.0),
            tri: Phprand(0.0, 1.0),
            ocd: Phprand(0.0, 1.0),
            ocq: Phprand(0.0, 1.0),
        ])
    )
).play
)

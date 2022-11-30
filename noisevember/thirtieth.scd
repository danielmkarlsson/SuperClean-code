(
Pdef(0,
    Pseed(9092,
        Pbind(*[
            type: Pwrand([\cln, \], [1, 2], inf),
            snd: \drm,
            dur: 1 / Pdup(Plprand(5, 11), Phprand(5, 33)),
            pan: Pmeanrand(0.0, 1.0),
            amp: Pmeanrand(0.0, 1.0),
            shp: 1,
            sha: Plprand(0.0, 1.0),
            sho: Pmeanrand(0.0, 1.0),
            shi: Pmeanrand(0.0, 1.0),
            slo: Pmeanrand(0.0, 1.0),
            hit: Pmeanrand(0.0, 1.0),
            lot: Pmeanrand(0.0, 1.0),
            dla: Plprand(0.0, 1.0),
            dlf: Phprand(0.0, 0.94),
            dlt: Plprand(0.00000000000001, 0.1),
            tnh: 1,
            tng: Pseg(Plprand(5.0, 100.0), Plprand(3.0, 9.0), \lin, inf),
            legato: Plprand(1.0, 99.0).trace,
            tdp: Plprand(1.5, 8.0),
            tun: Pdup(Pkey(\tdp).linlin(1.5, 8.0, 175, 15), Pkey(\tdp)).round(0.075),
            fuz: 1,
            fzv: Pseg(Plprand(0.0, 100.0), Plprand(3.0, 9.0), \lin, inf),
        ])
    )
).play;
)


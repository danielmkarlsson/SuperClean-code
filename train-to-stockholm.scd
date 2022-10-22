(
Routine{
    Pdef(0,
        Pbind(*[
            type: \cln,
            snd: Prand([\fmx, \], inf),
            dur: Plprand(1/16, 1),
            hr1: Pdup(inf, Plprand(0.0, 99.0).round(0.333)),
            hr2: Pdup(inf, Plprand(0.0, 99.0).round(0.333)),
            hr3: Pdup(inf, Plprand(0.0, 99.0).round(0.333)),
            hr4: Pdup(inf, Plprand(0.0, 99.0).round(0.333)),
            en1: Pdup(inf, Phprand(0.0, 1.0)),
            en2: Pdup(inf, Plprand(0.0, 1.0)),
            en3: Pdup(inf, Phprand(0.0, 1.0)),
            en4: Pdup(inf, Plprand(0.0, 1.0)),
            amp: Pseg([0.75, 0, 0.75], Pmeanrand(3.0, 9.0), \sin, inf) / Pkey(\hr4).linlin(0.0, 99.0, 1, 2),
            mi1: Pdup(inf, Prand([Phprand(0.1, 15.0), Plprand(0.1, 15.0)])),
            mi2: Pdup(inf, Prand([Phprand(0.1, 15.0), Plprand(0.1, 15.0)])),
            mi3: Pdup(inf, Prand([Phprand(0.1, 15.0), Plprand(0.1, 15.0)])),
            mi4: Pdup(inf, Prand([Phprand(0.1, 15.0), Plprand(0.1, 15.0)])),
            lpf: Plprand(20, 20000).trace,
            pan: Pdup(inf, Pmeanrand(0.0, 1.0)),
            shp: Pdup(inf, Pmeanrand(0.0, 1.0)),
            sho: Pdup(inf, Pmeanrand(0.0, 1.0)),
            shi: Pdup(inf, Pmeanrand(0.0, 1.0)),
            slo: Pdup(inf, Pmeanrand(0.0, 1.0)),
            hit: Pdup(inf, Pmeanrand(0.0, 1.0)),
            lot: Pdup(inf, Pmeanrand(0.0, 1.0)),
            legato: 30,
            freq: 20,
            cav: 1,
        ])
    ).play;
    rrand(3.0, 9.0).wait;
    Pdef(0).reset;
}.loop.play;
)

~clean.lsf("~/snd/fmg")
(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmg,
        dur: 1 / Pdup(Phprand(1, 19), Pbrown(1, 11, 1)),
        atk: 0.01,
        rel: Pkey(\dur),
        bgn: Pdup(Phprand(1, 19), Pwhite(0.0, 0.8)).trace,
        spd: Plprand(0.5, 2.0).round(1/16),
        lpf: Pdup(Phprand(1, 19), Plprand(20, 20000)),
        lhf: Pmeanrand(0.2, 0.8),
        amp: Plprand(0.5, 4.0),
        pan: Pmeanrand(0.0, 1.0),
        cav: 1/11,
        cai: Plprand(0.0, 1.0),
        legato: 4,
    ])
).play
)

Pdef(0).stop

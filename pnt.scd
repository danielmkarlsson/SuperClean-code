~clean.lsf("~/snd/pnt");
(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \pnt,
        num: Pseed(0, Pwrand2((0 .. 19), (1 .. 20), inf)),
        atk: 0.005,
        dur: 1 / Pseed(1, Phprand(1/16, 2)),
        hld: Pkey(\dur) - 0.025,
        rel: 0.025,
        sustain: 17,
        rma: 1,
        rmf: Pseed(2, Pxrand([Pexprand(80, 800, 1), 880 - Pexprand(80, 800, 1)], inf)).trace,
        rdf: Pkey(\rmf),
        amp: Phprand(0.4, 0.6),
        pan: 0,
        jpr: 1/4,
        jps: 0,
    ])
).play;

Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \pnt,
        num: Pseed(0, Pwrand2((0 .. 19), (1 .. 20), inf)),
        atk: 0.005,
        dur: 1 / Pseed(1, Phprand(1/16, 2)),
        hld: Pkey(\dur) - 0.025,
        rel: 0.025,
        sustain: 17,
        rma: 1,
        rmf: Pseed(2, Pxrand([880 - Pexprand(80, 800, 1), Pexprand(80, 800, 1)], inf)).trace,
        rdf: Pkey(\rmf),
        amp: Phprand(0.4, 0.6),
        pan: 1,
        jpr: 1/4,
        jps: 0,
    ])
).play;
)

~clean.lsf("~/snd/snt");

( // reverse
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \snt,
        num: Pn(Pdup(2, Pseries(0, 1, 3)), 1),
        dur: Pdup(2, Pseq([5, 5, 2.75], inf)),
        bgn: Pseq([0, 2], inf),
    ])
).play;
)

( // Karplus Strong
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \snt,
        num: Pn(Pdup(2, Pseries(0, 1, 3)), 1),
        dur: Pdup(2, Pseq([5, 5, 2.75], inf)),
        dla: Pseq([0, 1.0], inf),
        dlf: 0.94,
        dlt: 1 / Pdup(2, Phprand(32, 128)),
    ])
).play
)

( // amplitude modulation
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \snt,
        num: Pn(Pdup(2, Pseries(0, 1, 3)), 1),
        dur: Pdup(2, Pseq([5, 5, 2.75], inf)),
        rma: Pseq([0, 1.0], inf),
        rmf: Pseq([0, Plprand(0.5, 2.0, 1)], inf),
        rmd: Pseq([0, Plprand(0.5, 2.0, 1)], inf),
    ])
).play
)

( // frequency shifting
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \snt,
        num: Pn(Pdup(2, Pseries(0, 1, 3)), 1),
        dur: Pdup(2, Pseq([5, 5, 2.75], inf)),
        fsh: Pseq([0, -1.0], inf),
        fsm: Pseq([0, Pwhite(-6.5, -0.5, 1)], inf),
    ])
).play
)

( // ring modulation
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \snt,
        num: Pn(Pdup(2, Pseries(0, 1, 3)), 1),
        dur: Pdup(2, Pseq([5, 5, 2.75], inf)),
        rma: Pseq([0, -1.0], inf),
        rmf: Pseq([0, Plprand(100, 1000, 1)], inf),
    ])
).play
)

( // cav reverb
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \snt,
        num: Pn(Pdup(2, Pseries(0, 1, 3)), 1),
        dur: Pdup(2, Pseq([5, 5, 2.75], inf)),
        cav: 1,
        cai: Pseq([0, 1.0], inf),
    ])
).play
)

( // jpr reverb
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \snt,
        num: Pn(Pdup(2, Pseries(0, 1, 3)), 2),
        dur: Pdup(2, Pseq([5, 5, 3], inf)),
        jpr: 1,
        jps: Pwhite(0.0, 1.0),
        jpg: Pseq([0, 1.0], inf),
    ])
).play
)

( // waveshaping / distortion
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \snt,
        num: Pn(Pdup(2, Pseries(0, 1, 3)), 2),
        dur: Pdup(2, Pseq([5, 5, 2.75], inf)),
        shp: Pseq([0, 1], inf),
        dst: Pseq([0, 1], inf),
        sho: Pseq([0.0, Pwhite(0.0, 1.0, 1)], inf),
        shi: Pseq([0.0, Pwhite(0.0, 1.0, 1)], inf),
        slo: Pseq([1.0, Pwhite(0.0, 1.0, 1)], inf),
        hit: Pseq([0.0, Pwhite(0.0, 1.0, 1)], inf),
        lot: Pseq([0.0, Pwhite(0.0, 1.0, 1)], inf),
    ])
).play
)

s.record

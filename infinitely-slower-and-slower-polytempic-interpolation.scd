(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \drm,
        rel: 0.05,
        pan: 0,
    ])
).play;
Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \drm,
        rel: 0.05,
        pan: 1,
        biz: Pseries(1, 0.1),
        stretch: Pseg([1, 0.9, 1], Pkey(\biz), \exp, inf).trace,
    ])
).play;
)

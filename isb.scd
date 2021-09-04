(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \drm,
        dvl: Pwhite(5, 19),
        drp: Pkey(\dvl).linlin(5, 19, 1, 10),
        dur: 1 / Pdup(Pkey(\drp), Pkey(\dvl)).trace,
    ])
).play
)

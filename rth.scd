( // "plus minus" rhythm as popularized by Kindohm 
Pdef(0,
    Pbind(*[
        type: Pseed(9, Prand([\cln, \rest], inf)),
        snd: \drm,
        dur: 1/9,
    ])
).play;
Pdef(1,
    Pbind(*[
        type: Pseed(9, Prand([\, \cln], inf)),
        snd: \hat,
        dur: 1/9,
    ])
).play;
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \clp,
        dur: 1/9, // manually increase Plprand repeat num (3rd arg)
        amp: Pseq([0.5, Plprand(0.1, 0.4, 1)], inf) + 0.1,
        rel: 2,
        crv: -8,
    ])
).play
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \clp,
        dur: 1/9,
        amp: Pseq([ // sequentially increase Plprand repeat num 
        //amp: Prand([ // stochasticly choose Plprand repeat num 
            Pseq([0.5, Plprand(0.1, 0.4, 1)], 1),
            Pseq([0.5, Plprand(0.1, 0.4, 2)], 1),
            Pseq([0.5, Plprand(0.1, 0.4, 3)], 1),
            Pseq([0.5, Plprand(0.1, 0.4, 4)], 1),
            Pseq([0.5, Plprand(0.1, 0.4, 5)], 1),
            Pseq([0.5, Plprand(0.1, 0.4, 6)], 1),
            Pseq([0.5, Plprand(0.1, 0.4, 7)], 1),
            Pseq([0.5, Plprand(0.1, 0.4, 8)], 1),
            Pseq([0.5, Plprand(0.1, 0.4, 9)], 1),
        ], inf) + 0.2,
        rel: 2,
        crv: -8,
    ])
).play
)

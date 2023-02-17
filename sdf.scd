( 
Pdef(0, 
    Pbind(*[ 
        type: \cln, 
        snd: Pseed(0, Pwrand2([\drm, \fmx, \hat, \clp], [12, 16, 2, 1], inf)),
        amp: Pseed(0, Pwrand2([0.9, 0.7, 0.1, 0.5], [12, 16, 2, 1], inf)) * 1.5,
        freq: 20 * Pxshuf((1 .. 7), inf),
        tun: 2.752,
        dur: (1 / Pdup(Plprand(5, 11), Phprand(5.0, 15.0))).trace, 
        hr1: Plprand(0, 5),
        hr2: Plprand(0, 5),
        hr3: Plprand(0, 5),
        hr4: Plprand(0, 5),
        mi1: Plprand(0.0, 8.0),
        mi2: Plprand(0.0, 8.0),
        mi3: Plprand(0.0, 8.0),
        mi4: Plprand(0.0, 8.0),
        en1: Plprand(0.0, 0.2),
        en2: Plprand(0.0, 0.2),
        en3: Plprand(0.0, 0.2),
        en4: Plprand(0.0, 0.2),
        legato: Pwrand2([2, 20], [50, 1], inf),
        hal: Pseed(0, Pwrand2([0.0, 1.0, 0.0, 0.0], [8, 16, 2, 1], inf)),
        hai: Pseed(0, Pwrand2([0.0, 1.0, 0.0, 0.0], [8, 16, 2, 1], inf)),
        tnh: 1/24,
        tng: 10000,
    ])
).play
)

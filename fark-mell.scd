// You need SuperClean to run this code: https://github.com/danielmkarlsson/SuperClean

(
Pdef(0,
    Pbind(*[
        type: Pseed(0, Prand([\cln, \], inf)),
        snd: Prand([\mmd, \clp, \drm], inf),
        num: Prand([0, 3], inf),
        rel: 1/9,
        dur: 1 / Pseed(0, Pdup(Phprand(7, 15), Phprand(7, 15))),
        amp: 0.6,
    ])
).play;
Pdef(1,
    Pbind(*[
        type: Pseed(0, Prand([\cln, \], inf)),
        snd: \fmx,
        rps: Pexprand(9, 19),
        hr1: Pdup(Pkey(\rps) - Pwhite(0, 7), Pshuf((1 .. 4), inf)),
        hr2: Pdup(Pkey(\rps) + Pwhite(0, 7), Pshuf((1 .. 4), inf)),
        hr3: Pdup(Pkey(\rps) - Pwhite(0, 7), Pshuf((1 .. 4), inf)),
        hr4: Pdup(Pkey(\rps) + Pwhite(0, 7), Pshuf((1 .. 4), inf)),
        fdb: Pexprand(0.0001, 100.0),
        mi2: Pdup(Pkey(\rps) + Pwhite(0, 7), Pshuf((0.0001 .. 4.0), inf)),
        mi3: Pdup(Pkey(\rps) + Pwhite(0, 7), Pshuf((0.0001 .. 4.0), inf)),
        mi4: Pdup(Pkey(\rps) + Pwhite(0, 7), Pshuf((0.0001 .. 4.0), inf)),
        amp: Pexprand(0.5, 0.75),
        en1: Pdup(Pkey(\rps) + Pwhite(0, 7), Pexprand(0.0001, 0.555)),
        en2: Pdup(Pkey(\rps) + Pwhite(0, 7), Pkey(\en1) * Pexprand(0.2, 0.666)),
        en3: Pdup(Pkey(\rps) + Pwhite(0, 7), Pkey(\en1) * Pkey(\en2) / Pexprand(0.3, 0.777)),
        en4: Pdup(Pkey(\rps) + Pwhite(0, 7), Pkey(\en1) * Pkey(\en2) / Pkey(\en3) * Pexprand(0.4, 0.888)),
        cu1: Pdup(Pkey(\rps) + Pwhite(0, 7), Pwhite(0.25, 1.0)),
        cu2: Pdup(Pkey(\rps) + Pwhite(0, 7), Pwhite(0.25, 1.0)),
        cu3: Pdup(Pkey(\rps) + Pwhite(0, 7), Pwhite(0.25, 1.0)),
        cu4: Pdup(Pkey(\rps) + Pwhite(0, 7), Pwhite(0.25, 1.0)),
        rel: Plprand(1/9, 0.9),
        dur: 1/9,
        dur: 1 / Pseed(0, Pdup(Phprand(7, 15), Phprand(7, 15))),
        legato: 9,
    ])
).play
)

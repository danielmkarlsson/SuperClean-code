(
Pdef(0,
    Pseed(3,
        Pbind(*[
            type: \cln,
            dup: Pwrand2([1, 2, 3, 4, 5], [25, 19, 13, 7, 1], inf),
            snd: Pdup(Pkey(\dup), Pseed(4, Pwrand2([\saw, \sin, \sqr, \dfd, \kps, \bow, \fmx], [1, 50, 1, 1, 1, 1, 1], inf))),
            freq: (Pdup(Pkey(\dup), Pdup(Pseed(0, Pxshuf([100, 50, 25, 12], inf)), Plprand(20.0, 100.0)) * Pseed(0, Pxshuf([
                Pn(Pseries(1, 2, 100), 1),
                Pn(Pseries(1, 4, 50), 1),
                Pn(Pseries(1, 8, 25), 1),
                Pn(Pseries(1, 16, 12), 1),
            ], inf)))),
            calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
            amp: Pkey(\freq).expexp(400, 20000, 0.475, 0.475/2),
            atk: Pwhite(1.0, 2.0),
            hld: Pdup(Pkey(\dup), Pseed(0, Pxshuf([100, 50, 25, 12], inf))),
            rel: 1,
            sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel) + 1,
            crv: -8,
            crt: 8,
            dur: 2.5 / Pdup(Pseed(0, Pxshuf([100, 50, 25, 12],  inf)), Pxshuf([2, 4, 8, 16], inf)) / Pwrand2([2, 4, 8, 16, 32], [1, 2, 4, 8, 1/8], inf),
            pan: Pdup(Pkey(\dup), Pxshuf((0.0, 0.005 .. 1.0), inf)),
            bnd: Pdup(Pseed(0, Pxshuf([100, 50, 25, 12], inf) / Pseed(0, Pxshuf([1, 2, 4, 8, 16, 32, 64], inf))), Pkey(\freq).explin(100, 20000, -0.001, -0.1)),
            bnt: Pdup(Pseed(0, Pxshuf([100, 50, 25, 12], inf)), Pseed(0, Pxshuf([1.6, 0.8, 0.4, 0.2], inf) * Pdup(Pkey(\dup), Pxshuf([1/2, 1, 2, 4, 8], inf)))),
            bnc: Pdup(Pkey(\dup), Pwhite(-8.0, 8.0)),
            wid: Pdup(Pkey(\dup), Plprand(0.0, 0.5)),
            cav: 1/2,
            cai: Pdup(Pkey(\dup), Phprand(0.0, 1.0)),
            hal: 1/4,
            hai: Pdup(Pkey(\dup), Plprand(0.0, 1.0)),
            hhp: 10000,
            rts: 19,
        ])
    )
).play
)

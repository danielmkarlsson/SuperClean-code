(
Pdef(0,
    Pseed(6,
        Pbind(*[
            type: Pwrand2([\cln, \], [1, 2], inf),
            snd: Pxshuf([\dfd, \ixa, \saw, \sqr], inf),
            dup: Plprand(4, 16),
            wid: Phprand(0.0, 0.5),
            pan: Pdup(Pkey(\dup), Pmeanrand(0.0, 1.0)),
            dtn: Pseg([-0.01, 0.0, 0.0], 300, \sin, 1),
            dtp: Pseg([0.01, 0.0, 0.0], 300, \sin, 1),
            octave: Pmeanrand(3, 7) + Pmeanrand(Pkey(\dtn), Pkey(\dtp)),
            scale: Scale.mixolydian(\just),
            degree: Pdup(Pkey(\dup), Pxshuf([0, 2, 4, 6], inf)),
            mtranspose: Pdup(Pkey(\dup) * 16, Pxshuf((-3 .. 4), inf)),
            frq: Pfunc{|ev|ev.use{ev.freq}},
            amp: Pseg(Plprand(0.2, 0.4), Plprand(30.0, 90.0), \wel, inf) 
            / Pkey(\octave).linlin(3, 7, 1, 2),
            atk: Phprand(3.3, 33.0),
            hld: Phprand(3.3, 33.0),
            rel: Phprand(3.3, 33.0),
            brf: Plprand(20.0, 4000.0),
            bro: Plprand(0.0, 1.0),
            brn: Phprand(0.0, 1.0),
            lpf: Plprand(Pkey(\frq) * 2, Pkey(\frq) * 4).trace,
            legato: 100,
            cav: 2,
            cai: Pseg(Plprand(0.0, 1.0), Plprand(30.0, 90.0), \wel, inf),
            tri: Pseg(Plprand(0.0, 0.25), Plprand(30.0, 90.0), \wel, inf),
            lhf: Pseg(Pmeanrand(0.4, 0.6), Plprand(15.0, 45.0), \wel, inf),
            stretch: Pseg([1, 1/4, 1/4], 480, \wel, 1),
        ])
    )
).play;
)

(
Routine{
    Pdef(0,
        Pbind(*[
            type: \cln,
            snd: \hat,
            rel: 0.01,
            crv: -8,
            seg: Plprand(10.0, 20.0),
            stretch: 1 / Pseg([Plprand(1.0, 7.0, 1), Phprand(8, 8, inf)], Pkey(\seg), \lin, inf), 
            amp: Pseg([0.25, Phprand(0, 0, inf)], Pkey(\seg), \sin, inf), 
            pan: 0,
            aux: 1,
        ])
    );
    Pdef(1,
        Pbind(*[
            type: \cln,
            snd: \hat,
            rel: 0.01,
            crv: -8,
            seg: Plprand(10.0, 20.0),
            stretch: 1 / Pseg([Plprand(1.0, 7.0, 1), Phprand(8, 8, inf)], Pkey(\seg), \lin, inf), 
            amp: Pseg([0.25, Phprand(0, 0, inf)], Pkey(\seg), \sin, 1), 
            pan: 1,
            aux: 1,
        ])
    );
    Routine{
        Pdef(0).stop;
        Pdef(1).stop;
        Pdef(0).play;
        Pdef(1).play;
        exprand(10.0, 20.0).wait
    }.loop.play;
    7.wait;
    Pdef(2,
        Pbind(*[
            type: \cln,
            snd: \ixa,
            amp: Plprand(0.25, 1.0).trace,
            pan: Pmeanrand(0.0, 1.0),
            atk: Plprand(1.0, 9.0),
            hld: Plprand(1.0, 9.0),
            rel: Plprand(1.0, 9.0),
            octave: Pdup(Plprand(1, 15), Pmeanrand(3, 6)),
            scale: Scale.pelog(\just),
            degree: Pdup(Plprand(1, 15), Prand([0, 2, -2], inf)),
            lpf: Plprand(2000, 20000),
            lhf: Phprand(0.0, 0.5),
            ocu: Plprand(0.0, 0.75),
            ocd: Plprand(0.0, 0.5),
            ocq: Plprand(0.0, 0.25),
            stretch: (1 / Pn(Pseries(1.0, Plprand(0.1, 2.0), 512), inf)),
            hpf: (Plprand(20, 200) * (Pkey(\stretch).explin(1, 1/64, 6, 1))),
            legato: Pkey(\atk) + Pkey(\hld) + Pkey(\rel) + Pkey(\stretch) * 2, 
            cav: 1,
        ])
    ).play;
    20.wait;
    Pdef(3,
        Pbind(*[
            type: \cln,
            snd: \drm,
            rel: 1.1,
            crv: -8,
            seg: Plprand(7.5, 30.0),
            stretch: 2.5 / Pseg([Plprand(1.0, 7.0, 1), Phprand(8, 8, inf)], Pkey(\seg), \lin, inf), 
            amp: Pseg([1.0, Phprand(0, 0, inf)], Pkey(\seg), \sin, inf), 
            aux: 2,
        ])
    );
    Routine{
        Pdef(3).stop;
        Pdef(3).play;
        exprand(15.0, 30.0).wait
    }.loop.play;
}.play;
)

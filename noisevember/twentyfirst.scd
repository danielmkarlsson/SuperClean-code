(
Pdef(0,
    Pseed(9297,
        Pbind(*[
            type: \cln,
            snd: \bow,
            rel: 9,
            dur: 1/9,
            bnd: Pmeanrand(-0.1, 0.1),
            legato: Plprand(1.0, 19.0),
            freq: (Pdup(Plprand(9, 99), Pmeanrand(100, 200)) + Pseq((1 .. 1000), inf)).trace,
            fsh: Pdup(Plprand(9, 99), Pmeanrand(-1.0, 1.0)),
            fsm: Pdup(Plprand(9, 99), Pmeanrand(-2.0, 2.0)),
            rma: Pdup(Plprand(9, 99), Pmeanrand(0.0, 1.0)),
            rmf: Pdup(Plprand(9, 99), Pmeanrand(20, 200)),
            tri: Pdup(Plprand(9, 99), Pmeanrand(0.0, 1.0)),
            shp: Pdup(Plprand(9, 99), Pmeanrand(0.0, 1.0)),
            sho: Pdup(Plprand(9, 99), Pmeanrand(0.0, 1.0)),
            shi: Pdup(Plprand(9, 99), Plprand(0.0, 1.0)),
            slo: Pdup(Plprand(9, 99), Phprand(0.0, 1.0)),
            hit: Pdup(Plprand(9, 99), Pmeanrand(0.0, 1.0)),
            lot: Pdup(Plprand(9, 99), Pmeanrand(0.0, 1.0)),
            tnh: Pdup(Plprand(9, 99), Pmeanrand(0.0, 1.0)),
            dst: Pdup(Plprand(9, 99), Plprand(0.0, 0.1)),
            pan: Pdup(Plprand(9, 99), Pmeanrand(0.0, 1.0)),
            amp: Pdup(Plprand(9, 99), Plprand(0.5, 1.0)),
            tng: Pseg(Plprand(1.0, 100.0), Plprand(30.0, 90.0), \lin, inf),
            ocd: Pseg(Plprand(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
        ])
    )
).play
)

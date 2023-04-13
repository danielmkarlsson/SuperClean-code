(
Pdef(0,
    Pseed(1485,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\drm, \hat, \clp], [20, 2, 1], inf),
            dur: Pseg(Plprand(1/512, 1/3), Plprand(0.0, 0.25), \lin, inf).trace,
            pan: Pseg(Pwhite(0.0, 1.0), Plprand(0.0, 1.0), \lin, inf),
            amp: Pseg(Phprand(0.5, 2.0), Plprand(0.0, 0.25), \wel, inf),
            fed: Pseg(Pwhite(0.0, 2.0), Plprand(0.0, 0.5), \lin, inf),
            tri: Pseg(Plprand(0.0, 1.0), Plprand(0.0, 0.5), \lin, inf),
            shp: Pseg(Plprand(0.0, 1.0), Plprand(0.0, 0.5), \lin, inf),
            shi: Pseg(Pwhite(0.0, 1.0), Plprand(0.0, 1.5), \lin, inf),
            slo: Pseg(Pwhite(0.0, 1.0), Plprand(0.0, 2.5), \lin, inf),
            hit: Pseg(Pwhite(0.0, 1.0), Plprand(0.0, 3.5), \lin, inf),
            lot: Pseg(Pwhite(0.0, 1.0), Plprand(0.0, 4.5), \lin, inf),
            dst: Pseg(Plprand(0.0, 1.0), Plprand(0.0, 5.5), \lin, inf),
            tun: Pdup(Plprand(9, 199), Plprand(1.8, 4.2).round(0.2)),
            legato: Pseg(Plprand(1.0, 3.0), Plprand(0.0, 5.5), \lin, inf),
        ])
    )
).play
)

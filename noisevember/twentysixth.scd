(
Pdef(0,
    Pseed(9194,
        Pbind(*[
            type: \cln,
            snd: Prand([\drm, \sin, \fmx, \sqr, \saw, \ixa, \kps, \bow, \dfd], inf),
            dur: (1.01 / Pn(Pseries(1.01, 1.01001, 49), inf)),
            octave: Pmeanrand(3, 5),
            legato: 99,
            scale: Scale.chromatic(\sept1),
            degree: (Pn(Pmeanrand(-0.1, 0.1) * Pseries(1.0, 0.5, 9999), inf)).trace,
            atk: Plprand(0.0, 1.0),
            rel: Pn(Plprand(1.0, 2.0) + Pseries(0.0, 0.009, 300), inf),
            hld: Plprand(0.0, 1.0),
            bnd: Pmeanrand(-0.0225625, 0.0225625),
            bno: Plprand(0.5, 1.5),
            bnt: Plprand(0.5, 1.0),
            amp: Pn(Plprand(1/16, 1/4) + Pseries(0.0, 0.0005, 9999), inf),
            shp: 1,
            sho: Pwhite(0.0, 1.0),
            shi: Pwhite(0.0, 1.0),
            slo: Pwhite(0.0, 1.0),
            hit: Pwhite(0.0, 1.0),
            lot: Pwhite(0.0, 1.0),
            wid: Pwhite(0.0, 1.0),
            tun: Pn(Pseries(3.0, 0.001, 9999), inf),
            tnh: 1,
            tng: Pn(Pseries(0.0, 0.05, 9999), inf),
            ocd: Pn(Pseries(0.0, 0.001, 9999), inf),
            ocq: Pn(Pseries(0.0, 0.0009, 9999), inf),
            rma: Pn(Pseries(0.0, 0.0008, 999), inf),
            cav: Pn(Pseries(0.0, 0.00007, 999), inf),
            dst: Pn(Pseries(0.0, 0.00006, 999), inf),
            rmf: Plprand(20, 2000),
            lpf: Pseg([20000, 5000, 20000], 120, \exp, inf),
        ]),
    )
).play
)

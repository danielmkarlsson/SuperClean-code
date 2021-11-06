~clean.lsf("vzr")
(
Pdef(0,
    Pseed(17,
        Pbind(*[
            type: \cln,
            snd: \vzr,
            legato: 1,
            dup: Plprand(1, 1111),
            seg: Plprand(10.0, 20.0),
            dur: 1 / Pdup(Pkey(\dup), Plprand(1, 222)),
            bgn: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
            spd: Pdup(Pkey(\dup), Plprand(1/111, 11.0)),
            amp: Pseg(Plprand(0.8, 8.0), Pkey(\seg), \wel, inf),
            lpf: Pseg(Plprand(20, 20000), Pkey(\seg), \wel, inf),
            lhf: Pseg(Plprand(0.25, 0.75), Pkey(\seg), \wel, inf),
            shp: Pseg(Plprand(0.0, 1.0), Pkey(\seg), \wel, inf),
            sha: 0,
            sho: Pseg(Pwhite(0.0, 1.0), Pkey(\seg), \wel, inf),
            shi: Pseg(Pwhite(0.0, 1.0), Pkey(\seg), \wel, inf),
            slo: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.0), \wel, inf),
            hit: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.0), \wel, inf),
            lot: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.0), \wel, inf),
            tri: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.0), \wel, inf),
            tnh: Pseg(Pwhite(0.0, 1.0), Plprand(10.0, 20.0), \wel, inf),
            tng: Pseg(Plprand(0.0, 1.0), Plprand(10.0, 20.0), \wel, inf),
            stretch: Pseg(Plprand(0.5, 2.0), Plprand(10.0, 20.0), \wel, inf),
            hpf: Pseg(Plprand(20, 200), Plprand(10.0, 20.0), \wel, inf).trace,
            pan: Pseed(0, Pseg(Pmeanrand(0.25, 0.75), Plprand(10.0, 20.0), \wel, inf)),
            cai: 0.1,
            cav: 0.1,
        ])
    )
).play
)

(
Pdef(0,
    Pseed(9995,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([
                \mmd, \drm, \hat, \clp, \dfd, \saw, 
                \sqr, \add, \kps, \dfd, \ixa, \fmx, \ 
            ], [1, 20, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24], inf),
            freq: Plprand(20, 1000),
            tun: Plprand(2.0, 5.0),
            hr1: Plprand(0.0, 1.0),
            hr2: Plprand(0.0, 2.0),
            hr3: Plprand(0.0, 3.0),
            hr4: Plprand(0.0, 4.0),
            cu1: Plprand(0.0, 1.0),
            cu2: Pmeanrand(0.0, 1.0),
            cu3: Pmeanrand(0.0, 1.0),
            cu4: Phprand(0.0, 1.0),
            mi1: Plprand(0.0, 100.0),
            mi2: Plprand(0.0, 100.0),
            mi3: Plprand(0.0, 100.0),
            mi4: Plprand(0.0, 100.0),
            shp: 1,
            sha: 0,
            sho: Pmeanrand(0.0, 1.0),
            sho: Pmeanrand(0.0, 1.0),
            shi: Pmeanrand(0.0, 1.0),
            slo: Pmeanrand(0.0, 1.0),
            lot: Pmeanrand(0.0, 1.0),
            hit: Pmeanrand(0.0, 1.0),
            tnh: 1,
            tng: Pseg(Plprand(0.0, 30.0), Plprand(30.0, 90.0), \wel, inf),
            atk: Pmeanrand(0.0, 20.0),
            hld: Pmeanrand(1.0, 20.0),
            rel: Pmeanrand(1.0, 20.0),
            legato: Pmeanrand(10.0, 30.0),
            sustain: Pmeanrand(10.0, 30.0),
            dur: 1/9,
            amp: Pseg(Plprand(1/16, 2.0), Plprand(9, 99), \wel, inf).trace,
            stretch: Pseg(Plprand(2/3, 3.0), Plprand(9, 99), \lin, inf),
        ])
    )
).play
)

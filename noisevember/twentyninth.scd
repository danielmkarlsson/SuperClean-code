(
Pdef(0,
    Pseed(9995,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\clp, \hat, \dfd],[1, 2, 4], inf),
            dur: (1 / Prand([7, 9, 11, 13], inf)).trace,
            pan: Pmeanrand(0.0, 1.0),
            amp: Pseg(Plprand(0.25, 2.25), Plprand(30.0, 90.0), \wel, inf),
            bpf: Pdup(Plprand(20, 100), Plprand(20, 1000)).round(20),
            bpq: Plprand(0.0, 0.005),
            atk: Plprand(1.0, 99.0),
            rel: Plprand(9.0, 99.0),
            legato: Pkey(\rel) + Plprand(9.0, 99.0),
            tri: Pseg(Plprand(0.0, 0.5), Plprand(30.0, 90.0), \lin, inf),
            tnh: 1,
            tng: Pseg(Plprand(0.0, 2.0), Plprand(30.0, 90.0), \lin, inf),
            brf: Pseg(Pwhite(20, 4000), Plprand(30.0, 90.0), \exp, inf),
            brn: Pseg(Pwhite(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            bro: Pseg(Pwhite(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            lpf: Plprand(20, 20000),
            res: 0,
            den: Pseg(Plprand(0.0, 10.0), Plprand(30.0, 90.0), \lin, inf),
            ocd: Pseg(Pwhite(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            ocq: Pseg(Pwhite(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            shp: Pseg(Pwhite(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            sho: Pseg(Pwhite(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            shi: Pseg(Pwhite(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            slo: Pseg(Pwhite(0.0, 1.0), Plprand(30.0, 90.0), \lin, inf),
            cav: 1/16,
        ])
    )
).play
)

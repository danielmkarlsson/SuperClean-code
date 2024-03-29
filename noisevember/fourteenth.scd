(
Pdef(0,
    Pseed(9093,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\fmx, \], [2, 1], inf),
            dur: 1 / Plprand(1, 99),

            crv: -8,
            tmr: Pseg([1.0, 4.0], 180, \lin, 1),
            atk: Plprand(3.0, 9.0),
            rel: Phprand(0.0, 19.0) / Pkey(\tmr).linlin(1.0, 4.0, 1.0, 2.0),
            hr1: (Plprand(1, 4) + Pseg([0, 0, 0, 1, 1, 0], Plprand(1.5, 12.0) * Pkey(\tmr), \sin, inf)).trace,
            hr2: (Plprand(1, 3) / Pseg([0, 0, 0, 0, 2, 2, 0], Plprand(1.5, 9.0) * Pkey(\tmr), \sin, inf)),
            hr3: (Plprand(1, 2) * Pseg([0, 0, 0, 0, 0, 2, 2, 0], Plprand(1.5, 6.0) * Pkey(\tmr), \sin, inf)),
            hr4: 1,
            degree: Pdup(Plprand(9, 99), Plprand(0, 7)),
            octave: Pdup(Plprand(3, 33), Plprand(3, 6)),
            scale: Pdup(Plprand(9, 99), Prand([
                Scale.harmonicMinor(\sept1), 
                Scale.pelog(\sept2),
                Scale.major(\just),
            ], inf)),
            mi1: Plprand(0.0, 32.0) / Pkey(\tmr).linlin(1.0, 4.0, 1.0, 5.0),
            mi2: Plprand(0.0, 16.0) / Pkey(\tmr).linlin(1.0, 4.0, 1.0, 5.0),
            mi3: Plprand(0.0, 8.0) / Pkey(\tmr).linlin(1.0, 4.0, 1.0, 5.0),
            mi4: Plprand(0.0, 4.0) / Pkey(\tmr).linlin(1.0, 4.0, 1.0, 5.0),
            en2: Pmeanrand(0.0, 1.0),
            en3: Pmeanrand(0.0, 1.0),
            en4: Plprand(0.0, 1.0),
            legato: 49 / Pkey(\tmr).linlin(3.0, 4.0, 1.0, 9.0),
            amp: Pseg(Phprand(0.125, 0.75), Plprand(15.0, 90.0), \wel, inf) * Pkey(\tmr).linlin(1, 4, 1, 1.5),
            shp: Pseg(Phprand(0.0, 1.0), Plprand(15.0, 90.0), \wel, inf),
            sho: Pseg(Pwhite(0.0, 1.0), Plprand(15.0, 90.0), \wel, inf),
            shi: Pseg(Pwhite(0.0, 1.0), Plprand(14.0, 90.0), \wel, inf),
            slo: Pseg(Pwhite(0.0, 1.0), Plprand(15.0, 90.0), \wel, inf),
            hit: Pseg(Pwhite(0.0, 1.0), Plprand(15.0, 90.0), \wel, inf),
            lot: Pseg(Pwhite(0.0, 1.0), Plprand(15.0, 90.0), \wel, inf),
            dst: Pseg(Pwhite(0.0, 1.0), Plprand(15.0, 90.0), \wel, inf),
            tri: Pseg(Pwhite(0.0, 1.0), Plprand(15.0, 90.0), \wel, inf),
            tnh: Pseg(Pwhite(0.0, 1.0), Plprand(15.0, 90.0), \wel, inf),
            tng: Pseg(Plprand(0.0, 10.0), Plprand(15.0, 90.0), \wel, inf),
            smr: Pseg(Plprand(0.0, 0.5), Plprand(15.0, 90.0), \wel, inf),
            scm: Pseg(Plprand(0.0, 0.5), Plprand(15.0, 90.0), \wel, inf),
            enh: Pseg(Plprand(0.0, 0.5), Plprand(15.0, 90.0), \wel, inf),
        ])
    )
).play;
)

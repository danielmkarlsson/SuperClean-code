(
Routine{
    s.record;
    1.wait;
    Pdef(0,
        Pseed(3978,
            Pbind(*[
                type: \cln,
                snd: \drm,
                tun: Pseg(Plprand(0.0, 9.0), Plprand(0.0, 15.0), \wel, inf).round(0.1),
                amp: Pseg(Plprand(1/16, 0.5), Plprand(0.0, 15.0), \wel, inf),
                pan: Pmeanrand(0.0, 1.0),
                atk: Plprand(2.0, 4.0),
                hld: Pmeanrand(1.0, 9.0),
                rel: Plprand(1.0, 9.0),
                crv: Pmeanrand(-8.0, 8.0),
                legato: Pkey(\atk) + Pkey(\hld) + Pkey(\rel) + 1, 
                lpf: Plprand(2000, 20000),
                hpf: Plprand(20, 1600),
                fed: Plprand(0.0, 3.0),
                shp: Plprand(0.0, 1.0),
                shi: Pwhite(0.0, 1.0),
                slo: Pwhite(0.0, 1.0),
                hit: Pwhite(0.0, 1.0),
                lot: Pwhite(0.0, 1.0),
                dur: Pseg(Pmeanrand(0.01, 1.0), Phprand(1.0, 90.0), \wel, inf).trace,
                tnh: 1,
                tng: Pseg(Plprand(0.0, 5.0), Plprand(15.0, 30.0), \wel, inf),
                ocu: Pseg(Plprand(0.0, 1.0), Plprand(15.0, 30.0), \wel, inf),
                cav: 4,
            ])
        )
    ).play;
    (40 * 60).wait;
    Pdef(0).stop;
    240.wait;
    s.stopRecording;
}.play
)

(
Pdef(0,
    Pseed(9499, 
        Pbind(*[
            type: \cln,
            snd: \drm,
            tun: Pseg(Pdup(2, Plprand(0.0, 11.0)), Pexprand(0.00001, 1.1), \exp, inf),
            dur: Pseg(Pdup(2, Plprand(0.001, 0.01)), Pwhite(0.1, 2.0), \lin, inf),
            amp: Pseg(Pdup(2, Pwhite(1/12, 1/3)), Pwhite(1.1, 4.0), \wel, inf),
            pan: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(0.1, 2.0), \lin, inf),
            rma: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(1.1, 4.0), \wel, inf),
            rmf: Pseg(Pdup(2, Pexprand(0.0001, 2000.0)), Pwhite(0.1, 2.0), \wel, inf),
            fed: Pseg(Pdup(2, Pexprand(1.0, 4.0) - 1), Pexprand(0.1, 4.0), \lin, inf),
            brf: Pseg(Pdup(2, Pexprand(20.0, 2000.0)), Pwhite(0.1, 4.0), \wel, inf),
            brn: Pseg(Pdup(2, Phprand(0.0, 1.0)), Pwhite(0.1, 2.0), \lin, inf),
            bro: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(0.1, 2.0), \lin, inf),
            tri: Pseg(Pdup(2, Plprand(0.0, 1.0)), Pwhite(1.1, 4.0), \lin, inf),
            shp: Pwrand2([0, Pseg(Pdup(2, Plprand(0.0, 1.0)), Pwhite(1.1, 4.0), \lin, 1)], [4, 1], inf),
            sho: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(0.1, 2.0), \lin, inf),
            shi: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(0.1, 2.0), \lin, inf),
            slo: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(0.1, 2.0), \lin, inf),
            hit: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(0.1, 2.0), \lin, inf),
            lot: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(0.1, 2.0), \lin, inf),
            jpr: 1/8,
            jpg: Pseg(Pdup(2, Pseq([0, 0, Pwhite(0.0, 13.0, 1)], inf)), Pexprand(0.1, 13.0), \wel, inf).trace,
            jps: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(0.1, 1.0), \wel, inf),
            stretch: Pseg(Pdup(2, Pexprand(1.0, 3.0)), Pwhite(0.1, 2.0), \wel, inf),
            dfm: 1,
            dfg: Pseg(Pdup(2, Pwhite(1.0, 5.0)), Pwhite(1.1, 4.0), \wel, inf),
            sustain: Pkey(\dur) * 75,
        ])
    )
).play
)


(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 7], inf),
        snd: Pwrand2([\drm, \mmd, \hat, \clp], [8, 4, 1, 2], inf),
        spd: Pwhite(1/8, 2.0),
        dur: 1 / Pdup(Plprand(1, 11), Plprand(5, 11)),
        stretch: (1 / Pdup(Plprand(1, 29), Plprand(1.0, 9.0))).round(1/8),
        pan: Pseq([Pmeanrand(0.25, 0.75, 1), Plprand(0.0, 0.25, 1), Phprand(0.75, 1.0, 1)], inf),
        amp: Pseg(Pdup(2, Plprand(0.5, 5.0)), Pwhite(0.0, 10.0), \wel, inf),
        fed: Plprand(0.0, 4.0).trace,
        tri: Plprand(0.0, 1.0),
        shp: Plprand(1/4, 1.0),
        sho: Pwhite(0.0, 1.0),
        shi: Pwhite(0.0, 1.0),
        slo: Pwhite(0.0, 1.0),
        hit: Pwhite(0.0, 1.0),
        lot: Pwhite(0.0, 1.0),
        jpr: Pwhite(0.5, 2.0),
        jpg: Phprand(1.5, 5.0),
        jts: Plprand(0.0, 0.5),
        jed: Pdup(Plprand(1, 9), Plprand(0.0, 1.0)),
        jps: Pdup(Plprand(1, 2), Plprand(0.0, 0.5)),
        jpl: Pdup(Plprand(1, 9), Pwhite(0.0, 1.0)),
        jpm: Pdup(Plprand(1, 9), Pwhite(0.0, 1.0)),
        jph: Pdup(Plprand(1, 9), Pwhite(0.0, 1.0)),
        jpd: Pdup(Plprand(1, 9), Pwhite(0.0, 1.0)),
        jlc: Pdup(Plprand(1, 9), Pwhite(0.0, 1.0)),
        jhc: Pdup(Plprand(1, 9), Pwhite(0.0, 1.0)),
        tuv: Pexprand(1.0, 7.0).round(1/16) - 1,
        tud: Pkey(\tuv).linlin(0.0, 6.0, 59, 1),
        tun: Pdup(Pkey(\tud), Pkey(\tuv)),
        pew: Plprand(0.5, 1.0),
        dfm: 1,
        dfg: 6,
        legato: Plprand(1.0, 16.0),
        lpf: Pdup(Plprand(1, 9), Pwhite(20, 20000)),
        hpv: Pexprand(20, 200),
        hpd: Pkey(\hpv).linlin(20, 200, 19, 1),
        hpf: Pdup(Pkey(\hpd), Pkey(\hpv)),
        lhf: Pmeanrand(0.2, 0.8),
        rel: Phprand(1.0, 16.0),
        crv: Pwhite(-4.0, 4.0),
        rma: 1,
        rmf: Pexprand(1.0, 7.0) - 1,
        rdf: Pexprand(1.0, 7.0) - 1,
    ])
).play
)
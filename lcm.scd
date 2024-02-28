(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \drm,
        dur: Pexprand(0.00001, 0.1),
        amp: Pdup(Pexprand(9, 99), Pexprand(0.125, 1.0)).trace,
        pan: Pdup(Pexprand(9, 99), Pmeanrand(0.0, 1.0)),
        tun: Pdup(Pexprand(99, 999), Pexprand(2.5, 9.0).round(0.4)),
        fed: Pexprand(1.0, 5.0) - 1,
        pew: Plprand(0.5, 1.0),
        lpf: Pkey(\tun).linlin(2.5, 9.0, 200000.0, 20.0),
        lhf: Pkey(\tun).linlin(2.5, 9.0, 0.5, 0.15),
        atk: Pkey(\fed).linlin(0.0, 4.0, 0.0, 0.2),
        rel: Pkey(\atk),
        cav: 1/8,
        cai: Pdup(Pexprand(9, 99), Pexprand(1.0, 2.0) - 1),
        tnh: 1,
        tng: 16,
        shp: Pdup(Pexprand(9, 99), Pwhite(0.0, 1.0)),
        sho: Pdup(Pexprand(9, 99), Pwhite(0.0, 1.0)),
        shi: Pdup(Pexprand(9, 99), Pwhite(0.0, 1.0)),
        slo: Pdup(Pexprand(9, 99), Pwhite(0.0, 1.0)),
        hit: Pdup(Pexprand(9, 99), Pwhite(0.0, 1.0)),
        lot: Pdup(Pexprand(9, 99), Pwhite(0.0, 1.0)),
        sustain: Pkey(\dur) + 5.0,
    ])
).play
)


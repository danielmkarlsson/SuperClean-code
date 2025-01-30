(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \kps,
        freq: Pdup(Pexprand(1, 8), Pn(Pgeom(50, Pdup(6, Pwhite(1.1, 1.9)), 6), inf) 
            + Pdup(6, Pwhite(0, 100))).round(30),
        dur: 1 / Pn(Pgeom(1, 1.1, 29), inf),
        atk: Pexprand(1.0, 2.0),
        rel: Pexprand(1.0, 5.0),
        sustain: 7,
        pan: Pkey(\freq).linlin(100, 1138, 0.2, 0.8),
        jpr: 10,
        amp: Plprand(0.25, 0.5) / Pkey(\freq).linlin(50, 1140, 0.6, 1.4),
        lpf: Pkey(\freq).linlin(50, 1140, 400, 2280),
        tri: Pwhite(0.0, 1.0),
        dfm: 1/6,
        dfg: 3,
        ocd: 1,
        dla: 1/2,
        dlf: 1/4,
        dlt: 1/2,
    ])
).play
)

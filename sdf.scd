(
Pdef(\0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        dur: Pexprand(1/16, 1),
        fdb: Pexprand(1.0, 50.0),
        mi2: Pexprand(1.0, 50.0),
        mi3: Pexprand(1.0, 50.0),
        mi4: Pexprand(1.0, 50.0),
        pan: Pwhite(0.0, 1.0),
        aux: Pwhite(0, 1),
        freq: 25 * Pexprand(1, 25).round,
        amp: Pkey(\freq).expexp(25, 645, 0.5, 0.05),
        lpf: Pexprand(25, 5000).round(50).trace,
        lpq: Pkey(\lpf).explin(25, 5000, 1, 0),
        crv: Pkey(\dur).explin(1/16, 1, -8, 8),
        rel: 8 * Pkey(\dur).explin(1/16, 1, 0.5, 1),
        atk: Pkey(\rel) / Pexprand(1, 8),
        sustain: 8 * Pkey(\dur).explin(1/16, 1, 0.5, 1),
        shp: Pwhite(0.0, 0.5),
        tri: Pwhite(0.0, 0.5),
        lhf: Pwhite(0.0, 0.5),
        dark: 1,
    ])
).play
)

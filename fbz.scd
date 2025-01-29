(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \saw,
        wid: Phprand(1/7, 1/2),
        dur: Pseq([1/1024, 1/1024, 1/1024, 1/1024, 1/1024, 1/8], inf),
        amp: Pseq([
            Plprand(-8.dbamp, -6.dbamp, 1), 
            Plprand(-11.dbamp, -9.dbamp, 1), 
            Plprand(-14.dbamp, -12.dbamp, 1), 
            Plprand(-17.dbamp, -15.dbamp, 1), 
            Plprand(-20.dbamp, -18.dbamp, 1),
            Plprand(-23.dbamp, -21.dbamp, 1),
        ], inf) * 2.5,
        sustain: 99,
        atk: 0.01,
        rel: 2,
        crv: Plprand(-2.0, 2.0),
        freq: Pseq([
            50.midicps, 
            50.midicps * 3/2, 
            50.midicps * 3/2 * 3/2,
            50.midicps * 3/2 * 3/2 * 3/2,
            50.midicps * 3/2 * 3/2 * 3/2 * 3/2,
            50.midicps * 3/2 * 3/2 * 3/2 * 3/2 * 3/2,
        ], inf),
        pan: Pwhite(0.0, 1.0),
        lpf: Pkey(\freq) * Pexprand(1, 3),
        hpf: 500,
        jpr: 1/2,
        jpg: Plprand(0.5, 1.0).trace,
    ])
).play
)

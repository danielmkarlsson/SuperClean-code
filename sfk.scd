(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [2, 1], inf),
        snd: \sin,
        dup: Pdup(4, Pexprand(1, 59)),
        dur: Pexprand(0.0001, 2.0),
        freq: Pdup(Pkey(\dup), Ptuple([
            Plprand(20.0, 200.0),
            Plprand(40.0, 400.0),
            Plprand(80.0, 800.0),
            Pmeanrand(200.0, 2000.0),
            Pmeanrand(400.0, 4000.0),
            Pmeanrand(800.0, 8000.0),
            Phprand(500.0, 5000.0),
            Phprand(1000.0, 10000.0),
            Phprand(2000.0, 20000.0),
        ], inf).round(20)).trace,
        atk: Pexprand(0.1, 4.0),
        rel: Phprand(8.0, 32.0) 
            / Pkey(\dur).linexp(0.0001, 2.0, 8, 1),
        crv: -8,
        crt: 8,
        sustain: Pkey(\atk) + Pkey(\rel),
        bnd: Pwrand2([0, Pmeanrand(-0.25, 0.25, 1)], [32, 1], inf),
        bnt: Pkey(\sustain),
        pan: Pseq([
            Plprand(0.0, 0.75, 1), 
            Pmeanrand(0.1, 0.9, 1), 
            Phprand(0.25, 1.0, 1)
        ], inf),
        amp: Pdup(Pkey(\dup), Pexprand(1/8, 1/3)),
        //amp: Pdup(Pkey(\dup), Pexprand(1/8, 1/3)) / Pkey(\freq).sum.expexp(5040, 50400, 1, 2),
        rma: 1,
        rmf: Pexprand(0.004, 4.0),
        rdf: Pexprand(0.0005, 2.0),
        rdt: Pkey(\sustain) / Pwhite(1.0, 2.0),
        jpr: 1,
        jpg: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
        jts: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
    ])
).play
)

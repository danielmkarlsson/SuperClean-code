(
Pdef(0,
    Pseed(373,
        Pbind(*[
            type: \cln,
            snd: \dfd,
            dur: Pwhite(0.5,1.5),
            freq: Pstutter(Pwrand2([1, Pexprand(1, 5)], [100, 1], inf), Pexprand(20, 2000).round(20)).trace,
            den: 0,
            res: 1,
            typ: Pexprand(1.0, 2.0) - 1,
            nsl: Pwrand2([0, Pexprand(1.0, 1.005)], [250, 1], inf) - 1,
            amp: Pseg(Pexprand(0.9, 1.5), Pexprand(9, 15), \exp, inf) / Pkey(\freq).expexp(20, 2000, 0.85, 1.85),
            atk: 33 - Pexprand(16.5, 33.0),
            rel: 33,
            crv: 8,
            sustain: 66,
            pan: Pstutter(Pexprand(1, 4),Pwhite(0.0, 1.0)),
        ])
    )
).play
) 

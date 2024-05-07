(
Pdef(0,
    Pbind(*[
        type: Prand([\cln, \], inf),
        snd: \ixa,
        dur: 1 / Phprand(0.9, 9.0),
        atk: Plprand(0.9, 1.9),
        rel: Plprand(9.0, 19.0),
        freq: Plprand(40, 4000).round(40),
        bnd: Pseg(Pdup(2, Pwhite(-1.0, 1.0)), Plprand(3.0, 90.0), \lin, inf).trace,
        sustain: Pkey(\atk) + Pkey(\rel) + 1,
        amp: Phprand(0.3, 0.6) / Pkey(\freq).linlin(20, 4000, 1, 1.25),
        pan: Pmeanrand(0.0, 1.0),
        cav: 1,
        cai: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Plprand(3.0, 90.0), \lin, inf),
    ])
).play
)

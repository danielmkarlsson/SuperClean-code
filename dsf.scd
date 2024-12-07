~clean.lsf("~/snd/rnb")
(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \rnb,
        dup: Pdup(2, Pexprand(999, 9999)),
        num: Pdup(Pkey(\dup), Pxshuf([2, 6, 10, 15, 16, 18, 19, 22, 27, 29, 33, 34, 67, 71, 73, 104], 1)),
        dur: Pexprand(0.001, 0.01).trace,
        atk: Plprand(0.0, 0.3),
        hld: Plprand(1.0, 2.0),
        rel: Plprand(0.1, 1.0),
        crv: Pwhite(-16.0, 16.0),
        crt: Pwhite(-16.0, 16.0),
        spd: Pdup(Pkey(\dup), Phprand(1.0, 2.0)).round(0.05),
        bgn: Pseg(Plprand(0.0, 0.1), Plprand(5.0, 10.0), \lin, inf),
        sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
        amp: Pseg(Pexprand(0.4, 0.6), Plprand(5.0, 10.0), \wel, inf) * Pmeanrand(0.8, 1.2),
        pan: Pseg(Pdup(2, Pmeanrand(0.1, 0.9)), Plprand(5.0, 10.0), \lin, inf) + Pmeanrand(-0.1, 0.1),
        dla: 1,
        dlt: 128,
        dlf: 0,
    ])
).play
)

s.record

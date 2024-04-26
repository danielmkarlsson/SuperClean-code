( // used this to make the samples, with different values for things
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \sin,
        freq: (Phprand(10240.0, 20000.0, 999).round(10.2468101214161820222426) / 400).trace,
        pan: Pwhite(0.0, 1.0),
        //amp: Plprand(0.25, 0.5),
        amp: 0.35,
        atk: 1/2,
        hld: 1,
        rel: 64.0,
        crv: 4,
        crt: -10,
        sustain: Pkey(\atk) +  Pkey(\hld) + Pkey(\rel) + 1,
        dur: 1/999,
    ])
).play
)

~clean.lsf("~/snd/scl")
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 2], inf),
        snd: \scl,
        num: Pdup(Plprand(1, 19), Pxshuf((0 .. 27), inf)),
        sustain: 59,
        spd: Pexprand(1.0, 2.0),
        amp: Plprand(0.25, 0.75),
        dur: 1 / Phprand(1/8, 8.0),
        fsh: Plprand(1.0, 1.5),
        fsm: Pdup(Plprand(1, 19), Pexprand(1.0, 4.0)),
        bnt: Phprand(1.1, 9.0),
        hpf: Plprand(20.0, 20000.0).trace,
    ])
).play
)

Pdef(0).stop

s.record

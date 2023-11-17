~clean.lsf("~/snd/oki")
(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [40, 1], inf),
        snd: \oki,
        bgn: Pdup(Pwrand2([2, 4, 8, 16], [8, 8, 2, 1], inf), Pxshuf((0.17, 0.175 .. 0.3), inf)),
        dur: 1 / Prand([2, 4, 8], inf),
        hpf: Plprand(20, 400),
        lpf: Phprand(2000, 20000),
        brf: Pexprand(20, 300),
        brq: Pwhite(0.0, 1.0),
        brn: Pwhite(0.0, 1.0),
        bro: Pwhite(0.0, 1.0),
        spd: Pdup(Prand([1, 2, 4], inf), Prand([1, 1/2], inf)),
        rel: Pkey(\dur) * 0.95,
        crv: 8,
        flp: Prand([0, 1], inf),
        pan: Pmeanrand(0.3, 0.7),
        amp: Pseg(Pdup(2, Plprand(1.75, 3.5)), Pwhite(0.0, 10.0), \lin, inf).trace,
        stretch: Pseg(Pdup(2, Plprand(0.25, 1.25).round(1/16)), Pwhite(0.0, 10.0), \lin, inf),
        jpr: 1/2,
        jpg: 0.05,
        jps: 0.0,
    ])
).play
)

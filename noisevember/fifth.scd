~clean.lsf("~/snd/bwt")
(
Pdef(0,
    Pseed(12,
        Pbind(*[
            type: \cln,
            snd: \bwt,
            dur: 1 / Phprand(11.0, 22.0),
            num: Pdup(Pwhite(299, 599), Pxshuf((0 .. 22), inf)),
            bgn: Prand([Plprand(0.0, 0.5, 1), Phprand(1.5, 2.0, 1)], inf),
            amp: Pseg([0.0, Pwhite(1/8, 1/4, 1), 0.0], Pwhite(6.0, 24.0), \sin, inf),
            lpf: Pkey(\amp).linexp(0.0, 0.25, 20000, 160),
            legato: 49,
            pan: Pwhite(0.0, 1.0),
            rel: Plprand(0.1, 2.0),
            crv: 8,
            spd: Pdup(Phprand(1, 3), Prand([1/2, 1, 2], inf)) / Pdup(Phprand(3, 7), Pwhite(1, 5)),
            tnh: 1,
            tng: 20,
            dst: 1,
            hal: 1/4,
            hhp: Pseg(Pwhite(500, 5000), Pwhite(30.0, 90.0), \sin, inf).trace,
            rts: 33,
            dla: Pseg([0, 1/2, 0], Pwhite(30.0, 90.0), \sin, inf), 
            dlf: Pseg([0, 0.94, 0], Pwhite(30.0, 90.0), \sin, inf), 
            dlt: 8,
        ])
    )
).play
)

s.record
Pdef(0).stop


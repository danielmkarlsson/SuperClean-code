(
Pdef(0,
    Pseed(9478,
        Pbind(*[
            type: \cln,
            dup: Plprand(1, 4999),
            snd: Pdup(Pkey(\dup), Prand([
                \mmd, \drm, \hat, \dfd, \ixa, \fmx
            ], inf)),
            tun: Pdup(Pkey(\dup), Plprand(0.0, 10.0)),
            spd: Pdup(Pkey(\dup), Plprand(0.125, 2.0)),
            num: Pdup(Pkey(\dup), Pxshuf((0 .. 12), inf)),
            amp: Pdup(Pkey(\dup), Plprand(1.0, 10.0)),
            dur: 1 / Pdup(Pkey(\dup), Plprand(49, 499)),
            bgn: Pdup(Pkey(\dup), Plprand(0.0, 0.001)),
            tri: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
            dst: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
            tnh: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
            tng: Pdup(Pkey(\dup), Pwhite(0.0, 1000.0)),
            ocu: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
            ocd: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
            ocq: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
            fsh: Pdup(Pkey(\dup), Pwhite(-1.0, 1.0)),
            fsm: Pdup(Pkey(\dup), Pwhite(-20.0, 2.0)),
            rma: Pdup(Pkey(\dup), Pwhite(0.0, 1.0)),
            rmf: Pdup(Pkey(\dup), Plprand(20, 200)),
            freq: Pdup(Pkey(\dup), Plprand(20, 200)),
            dla: Pdup(Pkey(\dup), Plprand(0.0, 1.0)),
            dlf: Pdup(Pkey(\dup), Phprand(0.0, 0.94)),
            dlt: 1/1024 / Pdup(Pkey(\dup), Plprand(1.0, 4.0)),
            pan: Pwhite(0.0, 1.0).trace,
            cut: 1,
        ])
    )
).play
)

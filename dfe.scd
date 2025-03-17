~clean.lsf("~/snd/dfe");
(
Routine{
    Pdef(0,
        Pseed(9,
            Pbind(*[
                type: \cln,
                snd: \dfe,
                dup: Pdup(3, Pexprand(1, 19)),
                bgn: Pseg(Pdup(2, Pseq([Plprand(0.0, 0.49, 1), Phprand(0.51, 1.0, 1)], inf)), Plprand(3.0, 9.0), \sin, inf),
                num: Pdup(Phprand(99, 9999), Pxshuf((0 .. 28), inf)),
                dur: Pseg(Pdup(2, Pexprand(0.0005, 0.005)), Pwhite(3.0, 9.0), \sin, inf),
                spd: Pseg(Pdup(2, Pwhite(0.5, 1.0)), Pwhite(3.0, 9.0), \sin, inf),
                atk: Pexprand(0.0016666666666667, 0.083333333333333).trace,
                hld: Pexprand(0.0016666666666667, 0.083333333333333),
                rel: Pexprand(0.0016666666666667, 0.083333333333333),
                crv: 0,
                sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
                jpr: 1/16,
                jpg: Pseg(Pdup(2, Pseq([0, Pexprand(0.1, 2.0, 1)], inf)), Pexprand(3.0, 9.0), \sin, inf),
                jps: Pseg(Pdup(2, Pwhite(0.0, 1.0)), Pwhite(3.0, 9.0), \sin, inf),
                amp: Pseg(Pdup(2, Pwhite(0.15, 0.3)), Pwhite(3.0, 9.0), \sin, inf),
                pan: Pseg(Pdup(2, Pmeanrand(0.2, 0.8)), Pwhite(3.0, 9.0), \sin, inf),
                tnh: 1,
                tng: Pseg(Pdup(2, Pexprand(1.0, 8.0)), Pexprand(3.0, 9.0), \sin, inf),
                hpf: Pseg(Pdup(2, Pexprand(20, 100)), Pexprand(3.0, 9.0), \sin, inf),
            ])
        )
    ).play;
    118.wait;
    Pdef(0).stop;
}.play
)

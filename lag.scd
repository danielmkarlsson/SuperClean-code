(
Pdef(0,
    Pseed(638,
        Pbind(*[
            type: \cln,
            snd: \dfd,
            lag: Pexprand(1, 9).round,
            legato: Pkey(\lag) * 8,
            rel: Pkey(\lag) * 4,
            crv: Pwhite(-4.0, 4.0),
            scale: Scale.superLocrian.tuning_(Tuning.mean5),
            octave: Pdup(Pexprand(3, 5), Pxshuf((3 .. 8), inf)),
            amp: Pexprand(1.0, 2.5) / Pkey(\octave).linexp(3, 8, 1.0, 4.0).trace,
            mtranspose: Pdup(Pexprand(5, 7), Pwhite(-5, 3)),
            gtranspose: Pdup(Pexprand(9, 11), Pwhite(-6, 4)),
            degree: Pdup(Pexprand(11, 13), Pwhite(-7, 5)),
            res: Pexprand(0.997, 1.005),
            nsl: Pexprand(1.0, 1.005) - 1,
            dur: 1/2,
            tri: 1 - Pexprand(0.1, 1.0),
        ])
    )
).play(quant:1);
)

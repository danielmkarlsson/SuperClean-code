(
Pdef(0,
    Pseed(9999,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([\fm1, \fmf, \fmi, \fmm, \fmp], [5, 4, 3, 2, 1], inf),
            dvl: Plprand(7.0, 13.0),
            dvd: Pkey(\dvl).linlin(7.0, 13.0, 1, 7),
            dur: 1 / Pdup(Pkey(\dvd), Pkey(\dvl)),
            scale: Scale.harmonicMinor(\sept1),
            degree: Pdup(Pkey(\dvd), Plprand(0, 7)),
            octave: Pdup(Plprand(1, 3), Pexprand(2, 6).asInteger.unique),
            amp: Pdup(Plprand(1, 3), Plprand(0.45, 1.125)),
            pan: Pwhite(0.0, 1.0),
            sustain: Pexprand(0.5, 16.0),
            stretch: Pseg([1, 2, 1], Pexprand(1.0, 10.0), \lin, inf),
            jpr: 1/8,
        ])
    )
).play
)

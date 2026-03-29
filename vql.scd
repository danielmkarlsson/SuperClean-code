// SuperClean.irPath = Main.packages.asDict.at('SuperClean') +/+ "IRs" +/+ "kml.wav";

(
Pdef(0,
    Pseed(9499,
        Pbind(*[
            type: \cln,
            snd: Pxshuf([
                \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9,
                \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj,
                \fmk, \fml, \fmm, \fmn, \fmo, \fmp, \fmq, \fmr, \fms, \fmt,
                \fmu, \fmv,
            ], inf),
            sustain: 3,
            dur: 10,
            mir: 1/2,
            mii: Phprand(0.1, 1.0),
            scale: Scale.harmonicMinor(\sept1),
            degree: Pxshuf((-14 .. 14), inf),
            amp: Pexprand(0.4, 0.8).trace,
            lhf: Pwhite(0.1, 0.9),
            hlf: Pwhite(0.1, 0.9),
            stretch: Pseg([1, 0.01, 1], Pwhite(10.0, 20.0), \sin, inf),
            pan: Pseq(
                [0.5, Pexprand(1.0, 1.4, 1) - 1, 1.6 - Pexprand(0.6, 1.0, 1)],
                inf),
            ])
        )
    ).play
)

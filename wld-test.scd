(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: Pxshuf([
            \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9,
            \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj,
            \fmk, \fml, \fmm, \fmn, \fmo, \fmp, \fmq, \fmr, \fms, \fmt,
            \fmu, \fmv
        ], inf),
        hr1: Pbrown(1, 9, 1),
        hr2: Pbrown(1, 9, 1),
        hr3: Pbrown(1, 9, 1),
        hr4: Pbrown(1, 9, 1),
        hr5: Pbrown(1, 9, 1),
        hr6: Pbrown(1, 9, 1),
        mi1: Pbrown(0, 2, 0.05),
        mi2: Pbrown(0, 2, 0.05),
        mi3: Pbrown(0, 2, 0.05),
        mi4: Pbrown(0, 2, 0.05),
        mi5: Pbrown(0, 2, 0.05),
        mi6: Pbrown(0, 2, 0.05).trace,
        en1: -8,
        en2: -8,
        en3: -8,
        en4: -8,
        en5: -8,
        en6: -8,
        dur: 1 / Pexprand(2, 22),
        pan: Pwhite(0.0, 1.0),
        amp: Plprand(0.2, 1.0),
        sustain: Pexprand(0.2, 4.0),
        rel: Pkey(\sustain) / 2,
        mii: Pkey(\amp),
        mir: 1,
        freq: (Pdup(Pexprand(1, 7), Pexprand(32, 640).round(32)) % 320),
    ])
).play
)

// SuperClean.irPath = Main.packages.asDict.at('SuperClean') +/+ "IRs" +/+ "wld.wav";

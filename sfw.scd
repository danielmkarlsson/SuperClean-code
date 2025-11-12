(
Pdef(0,
    Pseed(9699,
        Pbind(*[
            type: \cln,
            snd: Pxshuf([
                \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9,
                \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj,
                \fmk, \fml, \fmm, \fmn, \fmo, \fmp, \fmq, \fmr, \fms, \fmt,
                \fmu, \fmv, \fmw
            ], inf),
            freq: Pexprand(200, 2000).round(50),
            dur: 1.2 / (Pexprand(1, 9) * Pkey(\freq).explin(200, 2000, 1, 4)),
            amp: Plprand(0.5, 0.75) / Pkey(\freq).linlin(200, 2000, 1, 2),
            lpf: Pexprand(20, 20000) * Pkey(\freq).linlin(200, 2000, 2, 1/3),
            jpr: 1/8,
            sustain: Pkey(\dur) * Pexprand(1, 16),
            pan: (Pseries(0, 1) % 33 / 32),
            hrm: Pexprand(1.0, 3.0).round(1/16),
            hr1: Pexprand(1/2, 1.0).round(1/32),
            hr2: Pkey(\hr1) * Pkey(\hrm),
            hr3: Pkey(\hr2) * Pkey(\hrm),
            hr4: Pkey(\hr3) * Pkey(\hrm),
            hr5: Pkey(\hr4) * Pkey(\hrm),
            hr6: Pkey(\hr5) * Pkey(\hrm),
            mi1: Pexprand(0.01, 5.0),
            mi2: Pexprand(0.01, 5.0),
            mi3: Pexprand(0.01, 5.0),
            mi4: Pexprand(0.01, 5.0),
            mi5: Pexprand(0.01, 5.0),
            mi6: Pexprand(0.01, 5.0).trace,
            stretch: Pseg(Pwrand2([1, 4], [1, 1], inf), Pexprand(3, 9), 0, inf),
            jpg: (Pseg(Pexprand(1/16, 4.0), 4, \exp, inf)
				* Pkey(\stretch).linlin(1, 4, 1, 4)).clip(1/16, 4),
        ])
    )
).play
)


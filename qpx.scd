(
Pdef(0,
    Pseed(9299,
        Pbind(*[
            type: \cln,
            snd: Pxshuf([
                \fm0, \fm1, \fm2, \fm3, \fm4,
                \fma, \fmb, \fmc, \fmd, \fme,
                \fmr, \fms, \fmt, \fmu, \fmv,
            ], inf),
            freq: Pwrand2([
                Pexprand(40, 4000, 1).round(40),
                Pexprand(40, 4000, 1).round(60),
                Pexprand(40, 4000, 1).round(80),
                Pexprand(40, 4000, 1).round(100),
                Pexprand(40, 4000, 1).round(120),
                Pexprand(40, 4000, 1).round(140),
                Pexprand(40, 4000, 1).round(160),
                Pexprand(40, 4000, 1).round(180),
                Pexprand(40, 4000, 1).round(200),
                Pexprand(40, 4000, 1).round(220),
            ], (10 .. 1), inf),
            mi1: Pexprand(1.0, 2.5) - 1,
            mi2: Pexprand(1.0, 2.5) - 1,
            mi3: Pexprand(1.0, 2.5) - 1,
            mi4: Pexprand(1.0, 2.5) - 1,
            mi5: Pexprand(1.0, 2.5) - 1,
            mi6: Pexprand(1.0, 2.5) - 1,
            amp: Pdup(Pexprand(1, 11), Pexprand(0.4, 1.1)) 
                / Pkey(\freq).expexp(40, 4000, 1, 2),
            sustain: Pexprand(0.4, 40.0) 
                / Pkey(\freq).explin(20, 4000, 1, 8),
            dur: Pkey(\sustain) / Pdup(Pexprand(1, 19), Pexprand(9, 99)),
            pan: Pwhite(0.0, 1.0).trace,
            bnd: Pwrand2([0, Pmeanrand(-0.025, 0.025, 1)], [5, 1], inf),
            bnt: Pkey(\sustain),
            hpf: Pexprand(20, 2000),
            stretch: Pseg([1, 0.5], Pwhite(30.0, 90.0), \lin, inf), 
            jpr: 1,
            jps: Pseg(Pwhite(0.0, 1.0), Pwhite(30.0, 90.0), \lin, inf),
        ])
    )
).play
)


s.record

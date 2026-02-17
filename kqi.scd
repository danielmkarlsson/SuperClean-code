(
~jpg = Pdup(2, Pseg(Pwhite(0.2, 4.0), 10, \wel, inf)).asStream;
Pdef(0,
    Pseed(9499,
        Pbind(*[
            type: \cln,
            snd: Pxrand([
                \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9,
                \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj,
                \fmk, \fml, \fmm, \fmn, \fmp, \fmq, \fmr, \fms, \fmt, \fmu,
            ], inf),
            dup: 99,
            scale: Scale.harmonicMinor(\wcSJ),
            octave: Pdup(Pexprand(1, Pkey(\dup)), Pwhite(3, 5)),
            harmonic: Pdup(Pexprand(1, Pkey(\dup)), Pexprand(1, 3)),
            degree: Pdup(Pexprand(1, Pkey(\dup)), Plprand(0, 7)),
            calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
            frq: Pfunc{|ev|ev.use{ev.freq}},
            lpf: Pwrand2([20000, Pkey(\frq) * Pexprand(2, 16, 1)], [2, 1], inf),
            sustain: Pexprand(1.0, 8.0),
            dur: 1 / Pkey(\sustain).linlin(1.0, 8.0, 8.0, 1.0),
            amp: Pdup(Pexprand(1, 9), Plprand(0.4, 0.8))
                * Pkey(\frq).linexp(67, 1072, 1.1, 0.9),
            en1: Pdup(Pexprand(1, Pkey(\dup)), Plprand(0.0, 1.0)),
            en2: Pdup(Pexprand(1, Pkey(\dup)), Plprand(0.0, 1.0)),
            en3: Pdup(Pexprand(1, Pkey(\dup)), Plprand(0.0, 1.0)),
            en4: Pdup(Pexprand(1, Pkey(\dup)), Plprand(0.0, 1.0)),
            en5: Pdup(Pexprand(1, Pkey(\dup)), Plprand(0.0, 1.0)),
            en6: Pdup(Pexprand(1, Pkey(\dup)), Plprand(0.0, 1.0)),
            jpr: 1/2,
            jps: Pdup(Pwhite(32, 256), Phprand(0.4, 1.0)),
            jpg: Pdup(Pexprand(1, Pkey(\dup)), Pexprand(0.5, 2.0)),
            hpf: Pexprand(20, Pkey(\frq) * Pexprand(1, 12)),
            aux: Pxshuf((0 .. 7), inf),
        ])
    )
);
Routine{
    Pdef(0).play;
    360.wait;
    Pdef(0).stop;
}.play
)

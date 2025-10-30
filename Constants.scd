(
~seed = 9991;
thisThread.randSeed = ~seed;
~min = 100;
~max = 3000;
~ply = Pdup(4, Pseq([Pwhite(9, 19, 1), 1], inf)).asStream;
~hro = Pexprand(1.0, 8.0).asStream;
~hro = Pexprand(1.0, 8.0).asStream;
~mio = Pexprand(0.01, 20.0).asStream;
Pdef(0,
    Pseed(~seed,
        Pbind(*[
            type: Pdup(Pfunc{~ply.next}, Pseq([\cln, \rest], inf)),
            snd: Pxshuf([
                \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9,
                \fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj,
                \fmk, \fml, \fmm, \fmn, \fmo, \fmp, \fmq, \fmr, \fms, \fmt,
                \fmu, \fmv,
            ], inf),
            hr1: Pfunc{~hro.next},
            hr2: Pfunc{~hro.next},
            hr3: Pfunc{~hro.next},
            hr4: Pfunc{~hro.next},
            hr5: Pfunc{~hro.next},
            hr6: Pfunc{~hro.next},
            mi1: Pfunc{~mio.next},
            mi2: Pfunc{~mio.next},
            mi3: Pfunc{~mio.next},
            mi4: Pfunc{~mio.next},
            mi5: Pfunc{~mio.next},
            mi6: Pfunc{~mio.next},
            freq: Pexprand(Pfunc{~min.next}, Pfunc{~max.next}),
            calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}}, // bling
            dur: Pdup(Pfunc{~ply.next}, Pseq([1/1024, Pexprand(0.125, 10.25, 1)], inf)),
            lpf: Pexprand(Pfunc{~min.next}, Pfunc{~max.next}),
            lpq: Phprand(0.0, 0.8),
            amp: Pkey(\lpf).expexp(Pfunc{~min.next}, Pfunc{~max.next}, 0.65, 0.25)
			    - Pdup(Pfunc{~ply.next}, Pexprand(0.001, 0.2)),
            atk: Pexprand(0.01, 2.0),
            rel: Pexprand(0.1, 8.0),
            crv: 8,
            sustain: (Pkey(\atk) + Pkey(\rel)) * Pwhite(1.0, 2.0),
            pan: Pwhite(0.1, 0.9),
            hpf: Pexprand(Pfunc{~min.next}, Pfunc{~max.next}),
            jpr: 1/11,
            jpg: Pdup(Pfunc{~ply.next}, Pwhite(0.25, 1.0)),
            jps: Pdup(20 * Pexprand(5, 9), Pwhite(0.0, 1.0)), // ply sum
        ])
    )
);
Routine{
    //s.record;
    //1.wait;
    Pdef(0).play;
    1200.wait;
    Pdef(0).stop;
}.play
)
)

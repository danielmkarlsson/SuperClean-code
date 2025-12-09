(
~seed = 9999;
thisThread.randSeed = ~seed;
~jpg = Pdup(2, Pseg(Pwhite(0.2, 4.0), 10, \wel, inf)).asStream;
Pdef(0,
    Pseed(~seed,
        Pbind(*[
            type: Pseq([\cln, Prand([\, \cln], 3)], inf),
            snd: Pxrand([
                Pxshuf([
                    \fm0, \fm2, \fm4, \fm6, \fm8, 
                    \fma, \fmc, \fme, \fmg, \fmi,  
                    \fmk, \fmm, \fmo, \fmq, \fms,  
                    \fmu, 
                ], 16), 
                Pxshuf([
                    \fm1, \fm3, \fm5, \fm7, \fm9,
                    \fmb, \fmd, \fmf, \fmh, \fmj, 
                    \fml, \fmn, \fmp, \fmr, \fmt, 
                    \fmv,
                ], 16),
            ], inf),
            dur: Pseq([Plprand(1/32, 2.0, 1), 1/1024, 1/1024, 1/1024], inf),
            sustain: Pexprand(1.1, 4.0),
            scale: Pdup(256, Pseq([Scale.major(\wcSJ), Scale.minor(\wcSJ)], inf)),
            degree: Pxshuf((-14 .. 35), inf).round(2),
            lpf: Pexprand(200, 4000).trace,
            lpq: Pseg([0, 0.9, 0], Pwhite(30.0, 90.0), \sin, inf),
            amp: Pdup(4, Pexprand(0.3, 0.6)) 
                / Pkey(\degree).linlin(-14, 35, 1, 2)
                * Pkey(\lpf).linexp(200, 4000, 2, 1)
                / Pkey(\lpq).linlin(0, 0.9, 1, 2),
            pan: Pseq([Pwhite(0.0, 0.5, 256), Pwhite(0.5, 1.0, 256)], inf),
            jpr: 1/5,
            biz: Pseg(Pwhite(0.2, 4.0), 10, \wel, inf),
            jpg: Pfunc{~jpg.next},
            jps: Pseg(Pdup(2, Pmeanrand(0.3, 0.7)), Pwhite(30.0, 90.0), \sin, inf),
            baz: Pxshuf((0 .. 7), inf),
            aux: Pseed(0, Pxshuf((0 .. 15), inf)),
            hpf: Pseg(Phprand(20.0, 100.0), Pwhite(30.0, 90.0), \wel, inf), 
            stretch: Pwrand2([1, 4], [2, 1], inf),
        ])
    )
);
Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \mmd,
        amp: 0,
        dur: 1/1024,
        aux: Pxshuf((0 .. 15), inf),
        jpr: 1/5,
        jpg: Pfunc{~jpg.next},
        ])
    );
Routine{
    //s.record(numChannels: 32);
    //1.wait;
    Pdef(0).play;
    Pdef(1).play;
    1200.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
    120.wait;
    Pdef(1).stop;
}.play
)

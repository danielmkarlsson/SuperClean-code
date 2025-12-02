(
~seed = 9799;
thisThread.randSeed = ~seed;
~jps = Pdup(2, Pseg([1, 0, 1], Phprand(270.0, 450.0), \sin, inf)).asStream;
~jpg = Pdup(2, Pseg([1/2, 1, 1/2], Phprand(30.0, 180.0), \sin, inf)).asStream;
Pdef(0,
    Pseed(~seed,
    Pbind(*[
        type: Pseq([\cln, Prand([\cln, \], 2)], inf),
        snd: Pxshuf([
			\fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fm6, \fm7, \fm8, \fm9,
			\fma, \fmb, \fmc, \fmd, \fme, \fmf, \fmg, \fmh, \fmi, \fmj,
			\fmk, \fml, \fmm, \fmn, \fmo, \fmp, \fmq, \fmr, \fms, \fmt,
			\fmu, \fmv,
		], inf),
		sustain: Pdup(3, Pexprand(0.09, 9) * Pwrand2([1, 7], [200, 1], inf)),
		amp: Pdup(3, Pexprand(0.5, 0.7)),
		dur: Pseq([
                Pwrand2([
                    Pexprand(1/8, 1.0, 1), 
                    Pexprand(0.2, 2.0, 1), 
                    Pexprand(0.3, 3.0, 1)], 
                    [4, 2, 1], 1),  
             1/1024, 1/1024], inf),
		pan: Pmeanrand(0.1, 0.9),
        scale: Scale.chromatic(\et31),
		degree: (Pdup(Pwhite(19, 79), Plprand(0, 31).unique) 
            * Pdup(Pwhite(9, 59), Pwrand2((1 .. 7), (1, 3 .. 14), inf))
            - Pxshuf([0, 31, 62, 93], inf)),
        jpr: 1/4,
        jps: Pfunc{~jps.next}.clip(0, 1).trace,
        jpg: Pfunc{~jpg.next}.clip(0, 1),
    ])
    )
);
Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \mmd,
        amp: 0,
        dur: 1/1024,
        jpr: 1,
        jps: Pfunc{~jps.next},
        jpg: Pfunc{~jpg.next},
    ])
);
Routine{
    s.record;
    1.wait;
    Pdef(0).play;
    Pdef(1).play;
    1200.wait;
    Pdef(0).stop;
    120.wait;
    Pdef(1).stop;
    s.stopRecording;
}.play;
)

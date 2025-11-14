~clean.lsf("~/snd/sfm");
(
Pdef(0,
    Pseed(9996,
        Pbind(*[
            type: Pwrand2([\cln, \], [2, 1], inf),
            snd: \sfm,
            flp: Pwhite(0, 1),
            bgn: Pexprand(1.0, 1.5) - 1,
            num: Pxshuf((0 .. 44), inf),
            scale: Scale.chromatic(\sept1),
            atk: Pexprand(0.1, 3.0).trace,
            hld: Pwhite(2.0, 3.0),
            rel: Pwhite(1.0, 2.0),
            crv: Phprand(0.0, 8.0),
            crt: Plprand(-8.0, 0.0),
            sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
            dur: Pkey(\sustain) / Phprand(3.0, 6.0),
            jpr: 1/2,
            jpg: Pbrown(1/8, 1, Pexprand(0.01, 0.1)),
            jps: Pbrown(0.475, 1, 1/48),
            bnd: Pmeanrand(-0.015, 0.015),
            bnt: Pkey(\sustain),
            bno: Pwhite(0, Pkey(\sustain) / 2),
            spd: Pwrand2([-1, -0.5, 0.5, 1], [4, 3, 2, 1], inf),
            amp: Pseg(Pdup(2, Pexprand(0.5, 0.75)), Pwhite(2.0, 20.0), \wel, inf),
            stretch: Pseg(Pdup(2, Pwhite(1/2, 2)), Pwhite(20.0, 40.0), \wel, inf),
            hpf: Pseg(Pdup(2, Pexprand(20, 200)), Pwhite(20.0, 40.0), \wel, inf),
        ])
    )
);
Routine{
    //s.record;
    //1.wait;
    Pdef(0).play;
    1200.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
}.play
)




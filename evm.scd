~clean.lsf("~/snd/evm");
(
Pdef(0,
    Pseed(9099,
        Pbind(*[
            type: Pwrand2([\cln, \], [8, 1], inf),
            snd: \evm,
            num: Pxshuf((0 .. 3), inf),
            bgn: Pwhite(0.0, 0.5),
            scale: Scale.chromatic(\sept1),
            degree: Pxshuf((-24 .. 0), inf),
            flp: Pwhite(0, 1),
            pan: Pwhite(0.1, 0.9),
            amp: Pwrand2([0, Plprand(0.45, 0.9, 1)], [2, 1], inf),
            atk: Pexprand(9.0, 45.0),
            hld: 39 - Pexprand(9.0, 30.0),
            rel: Pexprand(15.0, 60.0),
            crv: Phprand(2.0, 8.0),
            crt: Plprand(-8.0, -2.0),
            sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
            fsh: Pwhite(-32.0, 32.0),
            fsm: Pmeanrand(-4.0, 4.0),
            brf: Pexprand(200.0, 2000.0),
            brq: Phprand(0.0, 1.0),
            brn: 1,
            bro: Phprand(0.0, 1.0),
            dur: (Pkey(\sustain) 
                / Pseg(Pexprand(19.0, 119.0), Pexprand(13, 30), \lin, inf)).trace,
            jpr: 1/4,
            jps: 0.5,
            rma: Pseg(Pexprand(0.001, 0.25), Pwhite(90.0, 180.0), \sin, inf),
            rmf: Pmeanrand(10000, 20000),
            rdf: Pkey(\rmf).expexp(10000, 20000, 20000, 10000),
            rdt: Pkey(\sustain) * 2,
        ])
    )
);
Pdef(1,
    Pseed(9099,
        Pbind(*[
            type: Pwrand2([\, \cln], [8, 1], inf),
            snd: \evm,
            num: Pxshuf((0 .. 4), inf),
            bgn: Pwhite(0.0, 0.5),
            scale: Scale.chromatic(\sept1),
            degree: Pxshuf((-24 .. 0), inf),
            flp: Pwhite(0, 1),
            pan: Pwhite(0.1, 0.9),
            amp: Pwrand2([0, Plprand(0.45, 0.9, 1)], [2, 1], inf),
            atk: Pexprand(9.0, 45.0),
            hld: 39 - Pexprand(9.0, 30.0),
            rel: Pexprand(15.0, 60.0),
            crv: Phprand(2.0, 8.0),
            crt: Plprand(-8.0, -2.0),
            sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
            fsh: Pwhite(-32.0, 32.0),
            fsm: Pmeanrand(-4.0, 4.0),
            brf: Pexprand(200.0, 2000.0),
            brq: Phprand(0.0, 1.0),
            brn: 1,
            bro: Phprand(0.0, 1.0),
            dur: (Pkey(\sustain) 
                / Pseg(Pexprand(19.0, 119.0), Pexprand(13, 30), \lin, inf)),
            jpr: 1/4,
            jps: 0.5,
            rma: Pseg(Pexprand(0.001, 0.25), Pwhite(90.0, 180.0), \sin, inf),
            rmf: Pmeanrand(10000, 20000),
            rdf: Pkey(\rmf).expexp(10000, 20000, 20000, 10000),
            rdt: Pkey(\sustain) * 2,
            smr: Pseed(0, Pwhite(0.0, 0.5)),
            aux: 1,
        ])
    )
);
Routine{
    //s.record(numChannels: 4);
    //1.wait;
    Pdef(0).play;
    Pdef(1).play;
    1185.wait;
    Pdef(0).stop;
    Pdef(1).stop;
    120.wait;
    s.stopRecording;
}.play
)

~clean.lsf("~/snd/rsb");
(
Routine{
    //s.record;
    //1.wait;
    Pdef(0,
        Pseed(9499,
            Pbind(*[
                type: \cln,
                snd: \rsb,
                dup: Pdup(5, Plprand(1, 19)),
                bgn: Pseg(Pdup(2, Pwhite(0.0, 0.9)), Pwhite(1.0, 10.0), \wel, inf), 
                flp: Pwhite(0, 1),
                num: Pdup(Pkey(\dup), Pxshuf((0 .. 16), inf)),
                amp: Pseg(Pdup(2, Plprand(0.25, 0.75)), Pwhite(1.0, 10.0), \wel, inf),
                atk: Pexprand(0.01, 10.0).trace,
                hld: Pexprand(0.01, 10.0),
                rel: Pexprand(0.01, 10.0),
                crv: 3,
                crt: -3,
                sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
                dur: (Pkey(\sustain) 
                    / Pseg(Pdup(2, Pwhite(8, 64)), Pwhite(1.0, 10.0), \wel, inf)),
                spd: Pwhite(0.25, 4.0).round(0.125),
                cav: 1,
                cai: Pseg(Pdup(2, Pexprand(1.0, 2.0) - 1), Pwhite(1.0, 10.0), \wel, inf),
                jpr: 1,
                jpg: Pseg(Pdup(2, Pexprand(1.0, 2.0) - 1), Pwhite(1.0, 10.0), \wel, inf),
                stretch: Pseg(Pdup(2, 2.0 - Pexprand(0.5, 1.5)), Pwhite(1.0, 10.0), \wel, inf),
                hpf: Pseg(Pdup(2, Pexprand(20, 200)), Pwhite(1.0, 10.0), \wel, inf),
                lpf: Pseg(Pdup(2, Phprand(2000, 20000)), Pwhite(1.0, 10.0), \wel, inf),
                fsh: Pseg(Pdup(2, Pmeanrand(-1.0, 1.0)), Pwhite(1.0, 10.0), \wel, inf),
                fsm: Pdup(Pkey(\dup), Pmeanrand(-15.0, 15.0)),
                rma: Pseg(Pdup(2, Plprand(0.0, 1.0)), Pwhite(1.0, 10.0), \wel, inf),
                rmf: Pdup(Pkey(\dup), Phprand(0.1, 10.0)),
                rdf: Pdup(Pkey(\dup), Plprand(0.0001, 1.0)),
                rdt: Pkey(\sustain),
                pan: Pdup(Pkey(\dup), Pmeanrand(0.1, 0.9)),
            ])
        )
    ).play;
    180.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
}.play
)

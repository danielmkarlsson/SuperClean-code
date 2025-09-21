(
Pdef(1,
    Pseed(9999,
        Pbind(*[
            type: \cln,
            snd: \,
            amp: 0,
            dur: 1/11,
            jpr: 1/2,
            jpg: Pseg(Plprand(0.0, 3.0), Pwhite(10.0, 30.0), \lin, inf),
            jps: Pbrown(0.0, 1.0, Pexprand(0.0001, 0.1)).trace,
        ])
    )
);

Pdef(2,
    Pseed(9998,
        Pbind(*[
            type: \cln,
            snd: \,
            amp: 0,
            dur: 1/11,
            jpr: 1/2,
            jpg: Pseg(Plprand(0.0, 3.0), Pwhite(10.0, 30.0), \lin, inf),
            jps: Pbrown(0.0, 1.0, Pexprand(0.0001, 0.1)).trace,
            aux: 1,
        ])
    )
);

thisThread.randSeed = 9994;
~hrn = Pexprand(1.0, 3.0).asStream;
~tpn = Pwhite(0.0, 1.0).asStream;
Pdef(0,
    Pseed(9399,
        Pbind(*[
            type: Pwrand2([\cln, \], [1, 9], inf),
            snd: Pxshuf([
                \fm0, \fm1, \fm4, \fm7, \fmd, 
                \fmf, \fml, \fms, \fmt,
            ], inf),
            freq: Pexprand(20, 2000),
            sustain: Pexprand(1, 2),
            dur: 1/11,
            pan: Pwhite(0.0, 1.0),
            amp: Plprand(0.5, 1.0),
            hr1: Pseg(Pfunc{~hrn.next}, Pwhite(1.0, 10.0), \wel, inf),
            hr2: Pseg(Pfunc{~hrn.next}, Pwhite(1.0, 10.0), \wel, inf),
            hr3: Pseg(Pfunc{~hrn.next}, Pwhite(1.0, 10.0), \wel, inf),
            hr4: Pseg(Pfunc{~hrn.next}, Pwhite(1.0, 10.0), \wel, inf),
            hr5: Pseg(Pfunc{~hrn.next}, Pwhite(1.0, 10.0), \wel, inf),
            hr6: Pseg(Pfunc{~hrn.next}, Pwhite(1.0, 10.0), \wel, inf),
            tp1: Pfunc{~tpn.next},
            tp2: Pfunc{~tpn.next},
            tp3: Pfunc{~tpn.next},
            tp4: Pfunc{~tpn.next},
            tp5: Pfunc{~tpn.next},
            tp6: Pfunc{~tpn.next},
            jpr: 1/4,
            stretch: Pseg(Pdup(2, Pwhite(0.5, 2.0)), Pwhite(10.0, 30.0), \lin, inf),
            hpf: Pexprand(20, 2000),
            aux: Pwhite(0, 1),
        ])
    )
);
Routine{
    //s.record(numChannels:4);
    Pdef(1).play;
    Pdef(2).play;
    //1.wait;
    Pdef(0).play;
    360.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
    Pdef(1).stop;
    Pdef(2).stop;
}.play
)


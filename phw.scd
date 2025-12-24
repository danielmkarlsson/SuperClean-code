(
Pdef(0,
    Pseed(9799,
        Pbind(*[
            type: \cln,
            snd: Pwrand2([
                \fm0, \fm1, \fm2, \fm3, \fm7, \fme, 
                \fmg, \fmh, \fmj, \fmk, \fmm, \fmn,
            ], [3, 7, 7, 7, 7, 1,
                5, 1, 7, 7, 7, 5,
            ], inf),
            dur: Pdup(Pseq([15, 1], inf), Pseq([
                1/1024, 
                Phprand(8.0, 18.0, 1), 
            ], inf)),
            sustain: Pdup(16, Plprand(18.0, 34.0)),
            bnd: Pmeanrand(-0.225, 0.225).trace,
            bnt: Pkey(\sustain),
            bnc: Pmeanrand(-4.0, 4.0),
            bno: Pexprand(1, Pkey(\sustain) - 1),
            amp: Pseg(Plprand(0.8, 1.2), Pexprand(15, 60), \wel, inf),
            pan: Pseq((0, 1/15 .. 1), inf),
            rma: Pexprand(1, 1.75) - 1,
            rmf: 1/8,
            rdf: Pkey(\rmf) / Pexprand(1/8, 2.0),
            octave: Pdup(16, Pmeanrand(2, 6).round),
            degree: Pdup(16, Pxshuf((-4 .. 4), inf)),
            scale: Scale.chromatic(\sept1),
            jpr: 1/8,
            jps: 0.5,
            en1: Pmeanrand(0.1, 0.9),
            en2: Pmeanrand(0.1, 0.9),
            en3: Pmeanrand(0.1, 0.9),
            en4: Pmeanrand(0.1, 0.9),
            en5: Pmeanrand(0.1, 0.9),
            en6: Pmeanrand(0.1, 0.9),
            cu1: Phprand(0.0, 12.0),
            cu2: Phprand(0.0, 12.0),
            cu3: Phprand(0.0, 12.0),
            cu4: Phprand(0.0, 12.0),
            cu5: Phprand(0.0, 12.0),
            cu6: Phprand(0.0, 12.0),
            aux: Pxshuf((0 .. 7), inf),
        ])
    )
);
Routine{
    //s.record(numChannels: 16);
    //1.wait;
    Pdef(0).play;
    300.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
    120.wait;
}.play
)

(
Pdef(0,
    Pseed(9199,
        Pbind(*[
            type: \cln,
            snd: Pxshuf([
                \fm0, \fm1, \fm2, \fm3, \fm4, \fm5, \fma, \fmb,
            ], inf),
            freq: Pseg(Pdup(Pexprand(1, 16), 
            Pexprand(40, 2500).round(40)), 
            Pexprand(1/64, 1/4), 
            \exp, 
            inf),
            sustain: 3, 
            dur: 1/64,
            pan: Pwhite(0.0, 1.0),
            amp: Pseg([1/10, 1/2], Pexprand(1/64, 20), \exp, inf).trace,
            en1: Pseg(Pwhite(0.1, 0.9), Pexprand(1/64, 32), \exp, inf),
            en2: Pseg(Pwhite(0.1, 0.9), Pexprand(1/64, 32), \exp, inf),
            en3: Pseg(Pwhite(0.1, 0.9), Pexprand(1/64, 32), \exp, inf),
            en4: Pseg(Pwhite(0.1, 0.9), Pexprand(1/64, 32), \exp, inf),
            en5: Pseg(Pwhite(0.1, 0.9), Pexprand(1/64, 32), \exp, inf),
            en6: Pseg(Pwhite(0.1, 0.9), Pexprand(1/64, 32), \exp, inf),
            cu1: Pseg(Pwhite(0.1, 0.9), Pexprand(1/64, 32), \exp, inf),
            cu2: Pseg(Pwhite(-8.0, 8.0), Pmeanrand(1/64, 32), \wel, inf),
            cu3: Pseg(Pwhite(-8.0, 8.0), Pmeanrand(1/64, 32), \wel, inf),
            cu4: Pseg(Pwhite(-8.0, 8.0), Pmeanrand(1/64, 32), \wel, inf),
            cu5: Pseg(Pwhite(-8.0, 8.0), Pmeanrand(1/64, 32), \wel, inf),
            cu6: Pseg(Pwhite(-8.0, 8.0), Pmeanrand(1/64, 32), \wel, inf),
            cav: 1,
        ])
    )
);
Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \sin,
        amp: 0,
        cav: 1,
        dur: 1/16,
    ])
);
Routine{
    //s.record;
    //1.wait;
    Pdef(0).play;
    Pdef(1).play;
    3606.wait;
    Pdef(0).stop;
    240.wait;
    s.stopRecording;
    Pdef(1).stop;
}.play
)



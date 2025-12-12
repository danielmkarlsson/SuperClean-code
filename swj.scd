(
Pdef(0,
    Pseed(9499,
        Pbind(*[
            type: Pwrand2([\cln, \], [1, 3], inf),
            snd: Pxshuf([\fm0, \fm1, \fm2, \fmt, \fmu, \fmv], inf),
            dur: 1 / Phprand(0.1, 11.0),
            freq: Pexprand(20, 5000),
            amp: Plprand(0.75, 1.0) 
                / Pkey(\freq).expexp(20, 5000, 0.8, 1.2) 
                / Pkey(\dur).expexp(0.09, 10, 0.9, 2.0).trace,
            pan: Pmeanrand(0.1, 0.9),
            sustain: Pexprand(1.0, 4.0),
            hr1: Pexprand(1, 4),
            hr2: Pexprand(1, 4),
            hr3: Pexprand(1, 4),
            hr4: Pexprand(1, 4),
            hr5: Pexprand(1, 4),
            hr6: Pexprand(1, 4),
            en1: (3 - Pexprand(1, 2) - 1),
            en2: (3 - Pexprand(1, 2) - 1),
            en3: (3 - Pexprand(1, 2) - 1),
            en4: (3 - Pexprand(1, 2) - 1),
            en5: (3 - Pexprand(1, 2) - 1),
            en6: (3 - Pexprand(1, 2) - 1),
            cu1: Pmeanrand(0.0, 16.0),
            cu2: Pmeanrand(0.0, 16.0),
            cu3: Pmeanrand(0.0, 16.0),
            cu4: Pmeanrand(0.0, 16.0),
            cu5: Pmeanrand(0.0, 16.0),
            cu6: Pmeanrand(0.0, 16.0),
            tp1: Phprand(0.5, 1.0),
            tp2: Phprand(0.5, 1.0),
            tp3: Phprand(0.5, 1.0),
            tp4: Phprand(0.5, 1.0),
            tp5: Phprand(0.5, 1.0),
            tp6: Phprand(0.5, 1.0),
            jpr: 1/4,
            jpg: Pseg(Pmeanrand(0.0, 2.0), 9, \lin, inf),
            jps: Pseg(Pmeanrand(0.0, 1.0), 90, \lin, inf),
            lpf: Pwrand2([Pexprand(20.0, 20000.0, 1), Phprand(20.0, 20000.0, 1)], [2, 1], inf),
            dfm: 1/2,
            hpf: Pseg(Pseq([Pexprand(20, 1000, 1), 20, 20], inf), Pwhite(3.0, 9.0), \wel, inf),
            brf: Pexprand(20, 4000),
            brn: 1,
            bro: Plprand(0.0, 1.0),
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

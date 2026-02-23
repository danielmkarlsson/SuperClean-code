(
Pdef(0,
    Pseed(9199,
        Pbind(*[
            type: \cln,
            snd: Pxshuf([
                \fm0, \fm1, \fm2, \fm3, \fm4, \fm6, \fm7, \fm8, \fmc, \fmd,
                \fmf, \fmg, \fmh, \fmi, \fmj, \fmk, \fmm, \fmn, \fmq, \fms,
            ], inf),
            dur: 1 / (Plprand(1, 4) * Plprand(1, 2)),
            sustain: Pexprand(1, 8),
            scale: Scale.minor(\just),
            degree: Pdup(Pexprand(1, 9), Plprand(-14, 14)).round(2).unique,
            harmonic: Pexprand(1, 3).round,
            octave: Pseed(0, Pwrand2([4, 5], [1, 100], inf)),
            amp: Pexprand(0.3, 0.6) / Pkey(\degree).linlin(-14, 14, 1, 2),
            jpr: 4,
            hr1: Plprand(1, 4).unique,
            hr2: Plprand(1, 4).unique,
            hr3: Plprand(1, 4).unique,
            hr4: Plprand(1, 4).unique,
            hr5: Plprand(1, 4).unique,
            hr6: Plprand(1, 4).unique,
            mi1: Plprand(0.0, 4.0) 
                * Pkey(\dur).linlin(1/8, 1, 1, 1/2)
                * Pkey(\sustain).linlin(1, 8, 1, 1/2),
            mi2: Plprand(0.0, 4.0) 
                * Pkey(\dur).linlin(1/8, 1, 1, 1/2)
                * Pkey(\sustain).linlin(1, 8, 1, 1/2),
            mi3: Plprand(0.0, 4.0) 
                * Pkey(\dur).linlin(1/8, 1, 1, 1/2)
                * Pkey(\sustain).linlin(1, 8, 1, 1/2),
            mi4: Plprand(0.0, 4.0) 
                * Pkey(\dur).linlin(1/8, 1, 1, 1/2)
                * Pkey(\sustain).linlin(1, 8, 1, 1/2),
            mi5: Plprand(0.0, 4.0) 
                * Pkey(\dur).linlin(1/8, 1, 1, 1/2)
                * Pkey(\sustain).linlin(1, 8, 1, 1/2),
            mi6: Plprand(0.0, 4.0) 
                * Pkey(\dur).linlin(1/8, 1, 1, 1/2)
                * Pkey(\sustain).linlin(1, 8, 1, 1/2),
            en1: Pmeanrand(0.2, 0.8),
            en2: Pmeanrand(0.2, 0.8),
            en3: Pmeanrand(0.2, 0.8),
            en4: Pmeanrand(0.2, 0.8),
            en5: Pmeanrand(0.2, 0.8),
            en6: Pmeanrand(0.2, 0.8),
            cu1: Pmeanrand(-4.0, 4.0),
            cu2: Pmeanrand(-4.0, 4.0),
            cu3: Pmeanrand(-4.0, 4.0),
            cu4: Pmeanrand(-4.0, 4.0),
            cu5: Pmeanrand(-4.0, 4.0),
            cu6: Pmeanrand(-4.0, 4.0),
            calcFreq: Pfunc{|ev|ev.use{ev.freq.asStringPrec(48).postln}},
            frq: Pfunc{|ev|ev.use{ev.freq}},
            lpf: Plprand(Pkey(\frq) * 2, 20000),
            hpf: Plprand(20, Pkey(\frq) * 2),
        ])
    )
);
Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \mmd,
        amp: 0,
        dur: 1/8,
        jpr: 4,
    ])
).play;
Routine{
    //1.wait;
    //s.record;
    Pdef(0).play;
    360.wait;
    Pdef(0).stop;
    120.wait;
    //s.stopRecording;
    Pdef(1).stop;
}.play;
)

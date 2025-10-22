(
Pdef(0, 
    Pseed(6, 
        Pbind(*[
            type: \cln,
            snd: \fm1,
            dur: 1 / Pexprand(0.3, 333),
            scale: Scale.harmonicMinor(\sept1),
            degree: Phprand(-14, 14),
            amp: Pexprand(0.6, 0.9),
            pan: Pwhite(0.0, 1.0),
            sustain: Pexprand(0.1, 11.0),
            jpr: 1,
            jps: Pdup(Pwhite(19, 199), Pwhite(0.0, 1.0)),
            lpf: Pexprand(200, 20000).round(20),
            lpq: Pexprand(1, 1.75) - 1,
            lhf: Pwhite(0.0, 1.0),
            hlf: Pwhite(0.0, 1.0),
        ])
    )
);
Routine{
    s.record;
    Pdef(0).play;
    180.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording
}.play
)

~clean.lsf("~/snd/tam");
(
thisThread.randSeed = 19;
~dup = (Pexprand(1, 9) * 2).asStream;
Pdef(0,
    Pseed(9599,
        Pbind(*[
            type: \cln,
            snd: \tam,
            bgn: Pwhite(0.0, 0.9).trace,
            spd: Pdup(Pexprand(1, 5).unique, Phprand(0.25, 1.0)),
            fsh: Pdup(2, Pwrand2([Phprand(-1000.0, 0.0, 1), Plprand(0.0, 1000.0, 1)], [1, 2], inf)),
            atk: Pdup(2, Phprand(30.0, 90.0)),
            hld: Pdup(2, Plprand(3.75, 15.0)),
            rel: Pdup(2, Phprand(30.0, 90.0)),
            crv: Pdup(2, Phprand(0.0, 4.0)),
            crt: Pdup(2, Plprand(-4.0, 0.0)),
            sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
            dur: (Pseq([
                1/1024, 
                Pkey(\sustain) / Pwhite(15.0, 30.0, 1)
            ], inf)),
            pan: Pseq([0, 1], inf),
            jpr: 1.5,
            amp: Pdup(Pfunc{~dup.next}, Phprand(0.325, 0.65)),
            aux: Pseed(0, Pxshuf((0 .. 7), inf)),
        ])
    )
);
Routine{
    s.record(numChannels: 16);
    1.wait;
    Pdef(0).play;
    3660.wait;
    Pdef(0).stop;
    240.wait;
    s.stopRecording;
}.play
)

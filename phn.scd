~clean.lsf("~/snd/phn");
(
Routine{
    //s.record;
    //1.wait;
    Pdef(0,
        Pseed(9999999999999,
            Pbind(*[
                type: \cln,
                snd: \phn,
                bgn: Pexprand(1.0, 2.0) - 1,
                num: Pdup(Plprand(29, 39), Pxshuf((0 .. 79), inf)),
                dur: Pexprand(0.1, 1.0).trace,
                atk: Pexprand(5.0, 180.0),
                hld: Pexprand(5.0, 45.0),
                rel: Pexprand(15.0, 45.0),
                crv: 6,
                crt: -6,
                sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
                flp: Pwhite(0, 1),
                pan: Pwhite(0.0, 1.0),
                amp: Pexprand(0.3, 0.7),
                lpf: Pexprand(20.0, 20000.0),
                cav: 1/8,
                tnh: 1,
                tng: 16,
            ])
        )
    ).play;
    2400.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
}.play
)

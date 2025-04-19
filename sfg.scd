(
Routine{
    s.record;
    1.wait;
    Pdef(0,
        Pseed(9996,
            Pbind(*[
                type: \cln,
                snd: \dfd,
                ext: Pdup(2, Pexprand(1, 32)),
                lpf: 2025 - Pexprand(25, 2000),
                freq: Pseq([25, 50, 100, 200, 300, 350, 375, 500, 750, 1000], inf),
                atk: 9 - Pexprand(3.5, 5.5),
                rel: 9 - Pexprand(3.5, 5.5) * Pkey(\ext),
                sustain: Pkey(\atk) + Pkey(\rel), 
                dur: Pdup(Pseq([9, 1], inf), Pseq([1/1024, (Pexprand(1/16, 1.5, 1) * Pkey(\ext) / 1.6)], inf)),
                crv: 8,
                crt: -8,
                hpf: Pexprand(20, 8000).trace,
                amp: Pkey(\freq).expexp(25, 1000, 0.75, 0.25),
                jpr: 3/4,
                jpg: Pdup(10, Pexprand(1.0, 2.0) - 1),
            ])
        )
    ).play;
    1200.wait;
    Pdef(0).stop;
    120.wait;
    s.stopRecording;
    120.wait;
}.play
)


Pdef(0).stop

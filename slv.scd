(
~env = Pdup(2, Pexprand(10, 20)).asStream;
r.stop;
r = {
    loop {
        Pdef(0,
            Pbind(*[
                type: \cln,
                snd: \fmx,
                dur: Pdup(inf, Pxshuf((0.9 .. 2.5), inf).round(0.1)),
                atk: 0.05,
                rel: Pkey(\dur),
                sustain: Pkey(\atk) + Pkey(\rel),
                crv: -8,
                scale: Scale.pelog(\just),
                degree: Pdup(inf, Pxshuf((-10 .. 0), inf)),
                hr1: Pdup(inf, Pexprand(1, 5)).round,
                hr2: Pdup(inf, Pexprand(1, 5)).round,
                hr3: Pdup(inf, Pexprand(1, 5)).round,
                hr4: Pdup(inf, Pexprand(1, 5)).round,
                mi1: Pdup(inf, Plprand(0.3, 1.0)),
                mi2: Pdup(inf, Plprand(0.3, 1.0)),
                mi3: Pdup(inf, Plprand(0.3, 1.0)),
                mi4: Pdup(inf, Plprand(0.3, 1.0)),
                en1: Pdup(inf, Plprand(0.0, 1.0)),
                en2: Pdup(inf, Plprand(0.0, 1.0)),
                en3: Pdup(inf, Plprand(0.0, 1.0)),
                en4: Pdup(inf, Plprand(0.0, 1.0)),
                cu1: Pdup(inf, Pwhite(-8.0, 8.0)),
                cu2: Pdup(inf, Pwhite(-8.0, 8.0)),
                cu3: Pdup(inf, Pwhite(-8.0, 8.0)),
                cu4: Pdup(inf, Pwhite(-8.0, 8.0)),
                pan: Pdup(inf, Pmeanrand(0.0, 1.0)),
                amp: Pseg([0, Plprand(0.45, 0.9, 1), 0, 0], Pfunc{~env.next} * 2/3, \wel, 1).trace,
                cav: 1/8,
                jpr: 1/2,
                dla: 1,
                dlf: 1,
                dlt: 128,
            ])
        ).play;
        ~env.next.wait;
        Pdef(0).stop;
    }
}.fork;
)

r.stop

s.record

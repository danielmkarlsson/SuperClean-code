(
Pdef(0,
    Pseed(9399,
        Pbind(*[
            type: Pwrand2([\cln, \], [1, 2], inf),
            snd: \fmx,
            hr1: Pexprand(1, 7).asInteger - 1,
            hr2: Pexprand(1, 7).asInteger - 1,
            hr3: Pexprand(1, 7).asInteger - 1,
            hr4: Pexprand(1, 7).asInteger - 1,
            mi1: Plprand(0.0, 5.0),
            mi2: Plprand(0.0, 5.0),
            mi3: Plprand(0.0, 5.0),
            mi4: Plprand(0.0, 5.0),
            en1: Pexprand(1.0, 1.5) - 1,
            en2: Plprand(0.0, 1.0),
            en3: Pmeanrand(0.5, 1.0),
            en4: Phprand(0.0, 1.0),
            cu1: Pwhite(-8.0, 8.0),
            cu2: Pwhite(-8.0, 8.0),
            cu3: Pwhite(-8.0, 8.0),
            cu4: Pwhite(-8.0, 8.0),
            freq: Pdup(Plprand(1, 3), Pexprand(20, 640)).round(20),
            dur: (1 / Phprand(1.0, 11.0)),
            pan: Pwhite(0.0, 1.0),
            cav: 1,
            stretch: Pseg([1.0, 1/32], Pwhite(45.0, 90.0), \lin, inf),
            cai: Pkey(\stretch).linlin(1/8, 1.0, 0.0, 1.0),
            amp: Pdup(Plprand(1, 3), Plprand(0.5, 0.8)) 
                / Pkey(\freq).linlin(20, 640, 1, 3)
                / Pkey(\cai).linlin(0, 1, 1, 3),
            cvt: Pkey(\cai),
            atk: Pexprand(1.0, 2.0) - 1 * Pkey(\cvt).linlin(0.0, 1.0, 1, 4),
            hld: Plprand(0.01, 0.02) * Pkey(\cvt).linlin(0.0, 1.0, 1, 4),
            rel: Plprand(0.1, 1.0) * Pkey(\cvt).linlin(0.0, 1.0, 1, 4),
            crv: Pwhite(-8.0, 0.0),
            crt: Pwhite(0.0, 8.0),
            sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
            bnt: 0,
            bnd: Pkey(\stretch).linlin(0.5, 1, 0.0, 1.0),
            trc: Pkey(\stretch).linlin(1/32, 1, 0.0, 1.0).trace,
        ])
    )
).play
)

s.record
Pdef(0).stop

(
Pdef(0,
    Pseed(9992,
        Pbind(*[
            type: Pwrand([\cln, \], [0.2, 0.8], inf),
            snd: Pwrand([\fmx, \ixa, \saw], [3, 1, 1].normalizeSum, inf),
            mir: 2,
            mii: Phprand(0.0, 1.0),
            wid: Pexprand(1.0, 1.5) - 1,
            atk: Pexprand(0.01, 1.0),
            rel: Pexprand(0.01, 2.0),
            crv: -8,
            sustain: Pkey(\atk) + Pkey(\rel),
            amp: Pdup(Pexprand(1, 5), Plprand(0.4, 0.6)),
            scale: Scale.pelog(\just),
            octave: Pdup(Pexprand(1, 4), Pwhite(2.0, 5.0)).round(0.5),
            degree: Pdup(Pexprand(1, 12), Pwhite(0.0, 11.0)).round(0.5),
            lpf: Prand([Phprand(2000.0, 20000.0, 1), Pexprand(2000, 20000, 1)], inf),
            dur: 1 / (12 - Pexprand(1.0, 11.0)),
            hr1: Pexprand(1.0, 15.0).round(0.5) - 1,
            hr2: Pexprand(1.0, 15.0).round(0.5) - 1,
            hr3: Pexprand(1.0, 15.0).round(0.5) - 1,
            hr4: Pexprand(1.0, 15.0).round(0.5) - 1,
            hpf: Pwrand([Pexprand(20, 200, 1), 20], [1, 2], inf),
            pan: Pseq([Pexprand(1.0, 1.5, 1) - 1, 1.5 - Pexprand(0.5, 1.0, 1)], inf),
            stretch: Pseg(Pdup(2, Phprand(1/16, 1)), Pwhite(1.0, 10.0), \wel, inf).trace,
            //aux: Pseed(0, Pxshuf((0 .. 31), inf)), 
        ])
    )
).play
)

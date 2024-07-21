(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \saw,
        wid: Pexprand(1.0, 1.5) - 1,
        scale: Scale.chromatic(\sept1),
        degree: Pdup(Pwhite(1, 119), Pxshuf((-12.0, -11.5 .. 24.0), inf)),
        octave: Pwrand2([2, 5, 7], [1, 199, 1], inf),
        frq: Pfunc{|ev|ev.use{ev.freq}},
        lpf: Pkey(\frq) * Pdup(Pwhite(1, 119), Pexprand(1.0, 1.5) - 1),
        amp: Pseg(Plprand(0.5, 0.75), Pwhite(3.0, 30.0), \wel, inf) 
            * Pkey(\octave).linlin(2, 7, 1.5, 0.5),
        pan: Prand([Plprand(0.0, 0.5, 1), Phprand(0.5, 1.0, 1)], inf),
        atk: Plprand(0.4, 4.0),
        hld: Plprand(0.2, 2.0),
        rel: Plprand(16.0, 32.0),
        sustain: Pkey(\atk) + Pkey(\hld) + Pkey(\rel),
        bnd: Pmeanrand(-0.025, 0.025),
        bnt: Phprand(Pkey(\atk), Pkey(\sustain)).trace,
        dur: 1/19,
    ])
).play
)

(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmw,
        freq: Pexprand(20, 20000).trace,
        mi1: Pexprand(0.01, 3.0),
        mi2: Pexprand(0.01, 3.0),
        mi3: Pexprand(0.01, 3.0),
        mi4: Pexprand(0.01, 3.0),
        mi5: Pexprand(0.01, 3.0),
        mi6: Pexprand(0.01, 3.0),
        sustain: Pexprand(1, 10),
        amp: Pexprand(0.5, 0.7),
        jpr: 1,
        bnd: Pmeanrand(-0.05, 0.05),
        bnt: Pkey(\sustain),
        dur: 1 / Pwhite(0.11, 11.0),
        en1: Pwhite(0.0, 1.0),
        en2: Pwhite(0.0, 1.0),
        en3: Pwhite(0.0, 1.0),
        en4: Pwhite(0.0, 1.0),
        en5: Pwhite(0.0, 1.0),
        en6: Pwhite(0.0, 1.0),
    ])
).play
)

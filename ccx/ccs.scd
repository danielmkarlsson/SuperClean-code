(
Pdef(\0,
    Pbind(*[
        type: \clean,
        s: Pwrand([\mmd,\rest],[8,1].normalizeSum,inf),
        n: Pexprand(1,13),
        speed: Pexprand(1/2,2),
        rel: Pexprand(0.1,1.0),
        crv: Pwhite(-10,10),
        gain: Pexprand(1.0,16.0),
        midiout: m,
        ccn: Pseq((0..7),inf),
        ccv: Pexprand(1,127),
        dur: (1/Pstutter(Pwhite(9,29),Pwhite(11.0,13.0))).trace,
        legato: Pexprand(1,2),
    ])
).play(quant:1);
)

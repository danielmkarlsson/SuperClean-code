(
Pdef(\0,
    Pbind(*[
        type: \clean,
        snd: \mmd,
        num: 2,
        dur: 1/8,
        rel: 1/4,
        crv: 8,
        pan: Pwhite(0.0,1.0),
        amp: Pexprand(0.5,1.0),
        spd: Pxshuf((-12,-10..60),inf).midiratio.trace,
    ])
).play(quant:1);
)

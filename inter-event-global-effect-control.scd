(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \drm,
        dla: 1,
        dlf: 0.94,
        dlt: 1,
        dur: Pseq([1, 1, 2, 1, 1, 1, 2, 1, 3, 1], inf),
        fed: Plprand(0.0, 2.0),
        tun: Plprand(0.0, 10.0),
        pew: Plprand(0.0, 10.0),
        rel: Plprand(1.0, 10.0),
        pan: Pmeanrand(0.0, 1.0),
        sustain: Plprand(1.0, 10.0),
    ])
).play(quant:1);

Pdef(1,
    Pbind(*[
        type: \cln,
        snd: \drm,
        amp: 0,
        dur:  1 / Plprand(3, 11),
        dla: 1,
        dlf: 0.94,
        dlt: 1 / Phprand(128, 512),
    ])
).play(quant:1);
)

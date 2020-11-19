~clean.loadSoundFiles("lct");
(
Pdef(\0,
    Pbind(*[
        type: \clean,
        s: \lct,
        n: Pxshuf((0..47),inf),
        dur: Pwhite(5.0,30.0).trace,
        legato: Pwhite(45.0,90.0),
        begin: Pwhite(0.0,0.25),
        atk: Pwhite(15.0,30.0),
        hld: Pwhite(15.0,30.0),
        rel: Pwhite(15.0,30.0),
        crv: Pwhite(-8.0,8.0),
    ])
).play(quant:1);
)

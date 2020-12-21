(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \drm,
        rps: Pexprand(1,33),
        dur: Pstutter(Pkey(\rps),Pbjorklund2(Pxshuf([7,9,11,13,15],inf),16,inf))/8,
        amp: Pexprand(0.1,3.0),
    ])
).play(quant:1);

Pdef(1,
    Pbind(*[
        type: Prand([\cln,\rest],inf),
        snd: \drm,
        rps: Pexprand(1,33),
        dur: Pstutter(Pkey(\rps),Pbjorklund2(Pxshuf([5,7,9,11,13],inf,1),16,inf))/8,
        amp: Pexprand(0.1,2.0),
        fdb: 10,
        rel: 0.05,
        crv: -8,
    ])
).play(quant:1);

Pdef(2,
    Pbind(*[
        type: Pwrand2([\cln,\rest],[1,4],inf),
        snd: \drm,
        rps: Pexprand(1,33).trace,
        dur: Pstutter(Pkey(\rps),Pbjorklund2(Pxshuf([1,3,5],inf,2),16,inf))/8,
        amp: Pexprand(0.1,3.0),
        tun: -6,
        pew: 0.35,
        rel: 0.25,
        crv: -8,
        tri: 1,
        shp: Pexprand(0.1,0.9),
    ])
).play(quant:1);
)

Quarks.install("https://github.com/ffforces/Pwrand2");
Quarks.install("https://github.com/supercollider-quarks/Bjorklund);
Quarks.install("https://github.com/davidgranstrom/Pxshuf");

(
Pdef(\0,
    Pbind(*[
        type: \clean,
        s: Pwrand([\mmd,\rest],[8,1].normalizeSum,inf),
        n: Pshuf((4..9),inf),
        aux: Pstutter(2,Pshuf((0..4),inf)),
        pan: Pseq([0,1],inf),
        dur: 1/Pstutter(Pwhite(1,2),Prand([5,10],inf)),
        legato: Pshuf([0.5,0.75,1,1.125],inf),
    ])
).play(quant:1);
)

s.meter;

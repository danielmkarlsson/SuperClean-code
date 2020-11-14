(
Pdef(\0,
    Pbind(*[
        type: \clean,
        s: \mmd,
        n: Prand([4,11,12],inf),
        spd: Prand([1,1/2],inf),
        bgn: Pexprand(0.001,0.3),
        end: Pkey(\bgn)+Pexprand(0.005,0.05),
        lop: 9,
        dur: (1/Pwhite(1,7)).trace,
        rel: 1,
        amp: 1.25,
        cut: Pwrand([0,1],[1,10].normalizeSum,inf),
    ])
).play(quant:1);
)

Pdef(\0).stop;

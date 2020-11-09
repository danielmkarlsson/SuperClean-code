(
Pdef(\0,
    Pbind(*[
        type: \clean,
        s: \mmd,
        n: 12,
        dur: 1/11,
        bgn: Pwhite(0.0,0.75).trace,
        amp: Pexprand(0.05,4.0),
        pan: Pstutter(Pwhite(1,7),Pseq(((0.5,0.55..1.0)++(0.95,0.90..0.0)++(0.05,0.95..0.45)),inf)),
        cut: Pstutter(Pseq([49,1],inf),Pseq([1,0],inf)),
        lpf: Pseg(Pexprand(40,4000),Pwhite(1,20),\exp,inf),
        hpf: Pseg(Pexprand(20,200),Pwhite(1,20),\exp,inf),
        bpf: Pseg(Pwhite(40,4000),Pwhite(1,20),\exp,inf),
        spd: Pstutter(Pexprand(1,5),Pseq([1,2,4,8,16,8,4,2,1,0.5],inf)),
        shp: Pbrown(0.25,0.999,Pwhite(0.01,0.1),inf),
    ])
).play(quant:1);
)

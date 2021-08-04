~clean.loadSoundFiles("swg");

( // The work put in
Pdef(0,
    Pbind(*[
        type: \cln,
        rps: Pexprand(1,11),
        snd: \swg,
        num: Pdup(Pkey(\rps),Pxshuf([41,29,12,30,58],inf)),
        dur: Pwhite(5,17)/Pwhite(7,13),
        amp: Pwhite(1.0,8.0),
        bgn: Pdup(Pkey(\rps)/2,Pexprand(0.001,2.0)).trace,
        end: Pkey(\bgn)+0.5,
        rel: Pkey(\dur),
        crv: Pwhite(-8.0,8.0),
        legato: Pexprand(2.0,8.0),
        pan: Pwhite(0.4,0.6),
        spd: 0.75-Pwrand([0,1.5],[16,1].normalizeSum,inf),
        dark: Pseg([0,0.04],Pwhite(5,17)/Pwhite(7,13),\sine,inf),
        hpf: Pseg([100,20],Pwhite(5,17)/Pwhite(7,13),\sine,inf),
    ])
).play(quant:1);
)

( // is all I'm saying
Pdef(0,
    Pbind(*[
        type: \cln,
        rps: Pwhite(1,14),
        rps: inf,
        snd: \swg,
        num: Pdup(Pkey(\rps),Pxshuf([24,13,20,63,69],inf)),
        //num: 24,
        amp: Pdup(Pkey(\rps),Pwhite(1.0,8.0)),
        dur: Pdup(Pkey(\rps),
            Pwhite(2,7)/Pdup(Pkey(\rps),Pwhite(5,22))),
        bgn: Pexprand(0.001,1.0),
        legato: Pexprand(1.0,2.0),
        lpf: Pexprand(2000,20000).trace,
        hpf: Pseg([20,2000,20],Pexprand(1,10),\exp,inf),
        spd: 0.666-Pwrand([0,1.332],[10,1].normalizeSum,inf)*1,
    ])
).play(quant:1);
)

( // gotta count for somethin
Pdef(0,
    Pbind(*[
        type: \cln,
        rps: Pwhite(33,333),
        snd: \swg,
        num: Pdup(Pkey(\rps),Pxshuf([54,57,65,37,46],inf)),
        amp: Pdup(Pkey(\rps),Pwhite(1.0,8.0)),
        dur: 11/Pdup(Pkey(\rps),Pwhite(5,22))/Pn(Pgeom(1,2,19),inf),
        bgn: 0.5-Pexprand(0.01,0.5).trace,
        legato: Pexprand(1.0,4.0),
        hpf: Pexprand(20,500),
        pan: Pwhite(0.0,1.0),
        spd: 0.666-Pwrand([0,1.332],[10,1].normalizeSum,inf)/1,
        dla: 1/32,
        dlf: 0.95,
        dlt: 2.0625/Pdup(2,Pn(Pgeom(1,2,14),inf)),
    ])
).play(quant:1);
)

(// you know
Pdef(\0,
    Pbind(*[
        type: \cln,
        rps: 99,
        amp: Pwhite(0.25,4.0),
        pan: Pwhite(0.0,1.0),
        hpf: Pexprand(20,10000).trace,
        rel: Pwhite(1/7,1),
        crv: Pwhite(-8,0),
        snd: \swg,
        num: Pdup(Pkey(\rps),Pxshuf([33,42,14,48,16],inf)),
        bgn: Pdup(Pn(Pgeom(2,3,7),inf),Pwhite(0.0,0.5)),
        dur: Pdup(9,Pseq([1/3,1/7,1/5,1/9,1/13,1/11,1/7,1/9],inf))/1,
        legato: 1.25,
        spd: 0.75,
        dark: Pseg([0,1/8],Pwhite(15,117),\sine,inf),
    ])
).play(quant:1);
)

(// it adds up
Pdef(0,
    Pbind(*[
        type: \cln,
        rps: Pwhite(2,22),
        snd: \swg,
        num: Pdup(Pkey(\rps),Pxshuf([68,69,59,4,66],inf)),
        amp: Pdup(Pkey(\rps),Pwhite(0.5,3.0)),
        dur: 9/Pdup(Pkey(\rps),Pwhite(5,22)),
        bgn: Pexprand(0.01,1.0),
        legato: Pexprand(0.5,2.0),
        lpf: Pbrown(20,20000,2000,inf),
        spd: 0.75-Pwrand([0,1.5],[5,1].normalizeSum,inf),
        pan: Pseg(Pwhite(0.0,1.0),Pwhite(1.0,10.0),\sine,inf).trace,
        dla: 0.25,
        dlf: 0.5,
        dlt: 1.5,
    ])
).play(quant:1);
)

(
Pdef(0,// bound to come
    Pbind(*[
        type: \cln,
        rps: Pwhite(10,50),
        snd: \swg,
        num: Pdup(Pkey(\rps),Pxshuf([51,53,7,18,5],inf)),
        amp: Pwhite(1.0,5.0),
        dur: 4/Pdup(Pkey(\rps),Pwhite(5,22)),
        bgn: Pseg([0.0,1.0],Pwhite(7.50,30.0),\welch,inf),
        legato: Pexprand(1.1,3.0),
        hpf: Pexprand(20,200).trace,
        spd: 0.75-Pwrand([0,1.5],[10,1].normalizeSum,inf),
        stretch: Pseg([0.5,2.0],Pwhite(7.50,30.0),\exp,inf),
        dark: Pseg([0,0.06],Pwhite(5,17)/Pwhite(7,13),\sine,inf),
        pan: Pseg([0.25,0.75],Pwhite(5,17)/Pwhite(7,13),\sine,inf),
    ])
).play(quant:1);
)




*/
( // Use this to make more
Pdef(0,
    Pbind(*[
        type: \cln,
        rps: Pwhite(1,14),
        rps: inf,
        snd: \swg,
        num: Pdup(Pkey(\rps),Pxshuf((0..70),inf)).trace,
        //num: 33,
        amp: Pdup(Pkey(\rps),Pwhite(1.0,8.0)),
        dur: 7/Pdup(Pkey(\rps),Pwhite(5,22)),
        bgn: Pexprand(0.01,1.0),
        legato: Pexprand(1.0,2.0),
        lpf: Pexprand(2000,20000).trace,
        spd: 0.75-Pwrand([0,1.5],[10,1].normalizeSum,inf),
    ])
).play(quant:1);
)

// samples used so far
51,53,7,18,5
68,69,59,4,66
33,42,14,48,16
54,57,65,37,46
41,29,12,30,58
24,13,20,63,69

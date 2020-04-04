(
(// manually evaluating a couple of times yields overlapping patterns that play in sync
    Pbind(*[
        type: \clean,
        s: \fmx,
        n: Pstutter(inf,(Prand((-24,Prand([-20,-17,-14,-10],inf)..24),inf)),inf)-Pstutter(inf,Pwrand([0,12,24],[1,2,4].normalizeSum,inf),inf),
        dur: 1/11*Pexprand(1,23).asInteger,
        gain: Pseg([0,2,0],Pkey(\dur)*Pexprand(19,43),\welch,1).trace,
        lpf: Pexprand(20,20000),
        en1: Pstutter(Pwhite(0,7),Pexprand(0.0001,10.1)),
        en2: Pstutter(Pwhite(0,7),Pkey(\en1)*Pexprand(0.0001,20.1)),
        en3: Pstutter(Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pexprand(0.0001,30.1)),
        en4: Pstutter(Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pkey(\en3)*Pexprand(0.0001,40.1)),
        mi1: Pwhite(0.0,4),
        mi2: Pwhite(0.0,4),
        mi3: Pwhite(0.0,4),
        mi4: Pwhite(0.0,4),
        fdb: Pwhite(0.0,4),
        crv: -8,
    ]).play(quant:1);
);
(// autoMagic fade in/out but kills running instances at reEvaluation
    Pdef(\0,
        Pspawn(
            Pbind(*[
            pattern: Pfunc { Pbind(*[
                type: \clean, 
                s: \mmd, 
                dur: 1/11*Pexprand(1,19).asInteger,
                rel: Pkey(\dur)/Pexprand(1,19)+Pstutter(Pseq([100,1],inf),Pseq([0,Pstutter(Pexprand(1,32),Pexprand(0.0001,2.0))],inf)),
                crv: Pexprand(-8,-3),
                n: Pstutter(inf,(Pwhite(0,39)),inf),
                gain: Pseg([0.0001,8,0.0001],Pkey(\dur)*Pexprand(6,33),\exp,1).trace,
                lpf: Pexprand(20,20000),
                stretch: Pstutter(inf,Pwrand([1,1.5,2],[2,1.5,1],inf),inf),
                speed: 0.75,
                orbit: 1,
                pan: Pwhite(0.3,0.7),
            ])},
            delta: Pstutter(Pexprand(1,5),Pexprand(3,11)).asInteger,
            method: \par
        ]))
    ).play;
);

(
    ~pat={|seed,ctlNum,ccVal,duration|
        var cc = 
            Pbind(*[
                type: \midi,
                midicmd: \control,
                midiout: ~m,
                chan: 0,
                ctlNum: ctlNum,
                control: ccVal,
                dur: duration,
            ]);
        Pseed(seed,Pseq([cc],inf));
    };
);

Pdef(\pat00,~pat.(0000,0,Pstutter(Pexprand(1,5),Pexprand(63,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // wet gain
Pdef(\pat01,~pat.(1111,1,Pstutter(Pexprand(1,5),Pexprand(63,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // time
Pdef(\pat02,~pat.(2222,2,Pstutter(Pexprand(1,5),Pexprand(63,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1) ; // low time mult
Pdef(\pat03,~pat.(3333,3,Pstutter(Pexprand(1,5),Pexprand(63,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1) ; // high time mult
Pdef(\pat04,~pat.(4444,4,Pstutter(Pexprand(1,5),Pwhite(3,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // room size
Pdef(\pat05,~pat.(5555,5,Pstutter(Pexprand(1,5),Pwhite(0,33,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // pre-delay
Pdef(\pat06,~pat.(6666,6,Pstutter(Pexprand(1,5),Pwhite(0,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // seed/variation
Pdef(\pat07,~pat.(7777,7,Pstutter(Pexprand(1,5),Pwrand([0,127],[9,1].normalizeSum,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1) ; // hold
Pdef(\pat08,~pat.(8888,8,Pstutter(Pexprand(1,5),Pwhite(0,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // diffusion
Pdef(\pat09,~pat.(9999,9,Pstutter(Pexprand(1,5),Pexprand(41,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // band 1 gate threshold
Pdef(\pat10,~pat.(1010,10,Pstutter(Pexprand(1,5),Pexprand(31,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // band 2 gate threshold
Pdef(\pat11,~pat.(1111,11,Pstutter(Pexprand(1,5),Pexprand(41,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // band 3 gate
Pdef(\pat12,~pat.(1212,12,Pstutter(Pexprand(1,5),Pexprand(51,127,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // band 4 gate
Pdef(\pat13,~pat.(1313,13,Pstutter(Pexprand(1,5),Pwrand([0,127],[0,1].normalizeSum,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // gate wet
Pdef(\pat14,~pat.(1414,14,Pstutter(Pexprand(1,5),Pwrand([0,127],[0,1].normalizeSum,inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // amb wet
Pdef(\pat15,~pat.(1515,15,Pstutter(Pexprand(1,5),Prand([0,127],inf)),Pxshuf((0.1,0.3..7),inf),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // oct 0
Pdef(\pat16,~pat.(1515,16,Pstutter(Pexprand(1,5),Pwhite(0,127)),Pxshuf((0.1,0.3..0.7),inf),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // oct -1
Pdef(\pat17,~pat.(1717,17,Pstutter(Pexprand(1,5),Pwhite(0,127),Pxshuf((0.1,0.3..0.7),inf)),Pxshuf((0.1,0.3..0.7),inf))).play(quant:1); // oct -2
)

Pdef(\0).stop;

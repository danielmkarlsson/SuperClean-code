(
Pdef(0,
    Pbind(*[
        type: \cln,
        snd: \fmx,
        rps: Pexprand(8,44),
        hr1: Pdup(Pkey(\rps)-Pwhite(0,7),Pxshuf([1,2,3,4,5,6,7],inf)),
        hr2: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf([1,2,3,4,5,6,7],inf)),
        hr3: Pdup(Pkey(\rps)-Pwhite(0,7),Pxshuf([1,2,3,4,5,6,7],inf)),
        hr4: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf([1,2,3,4,5,6,7],inf)),
        fdb: Pexprand(0.0001,1000.0),
        mi2: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((0.0001..8.0),inf)),
        mi3: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((0.0001..8.0),inf)),
        mi4: Pdup(Pkey(\rps)+Pwhite(0,7),Pxshuf((0.0001..8.0),inf)),
        en1: Pdup(Pkey(\rps)+Pwhite(0,7),Pexprand(0.0001,0.222)),
        en2: Pdup(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pexprand(0.2,0.333)),
        en3: Pdup(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pexprand(0.3,0.444)),
        en4: Pdup(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pkey(\en3)*Pexprand(0.4,0.555)),
        cu1: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(-1.0,1.0)),
        cu2: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(-1.0,1.0)),
        cu3: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(-1.0,1.0)),
        cu4: Pdup(Pkey(\rps)+Pwhite(0,7),Pwhite(-1.0,1.0)),
        dur: Pdup(Pkey(\rps)+Pwhite(2,9),2/Pbrown(5,19,Pwhite(1,3),inf)),
        legato: Pkey(\dur)*Pexprand(16,64),
        freq: Pdup(Pexprand(1,32),Pexprand(16,256).round(16)),
        pan: Pbrown(0.0,1.0,Pdup(Pwhite(1,3),Pwhite(0.01,0.1))),
        atk: Pexprand(0.01,4.0),
        hld: Pkey(\dur)*2,
        rel: Pkey(\dur)*2,
        crv: 5,
        dst: Pexprand(1.0,2.0)-1,
        shp: Pexprand(1.0,2.0)-1,
        sac: Pdup(3,Pwhite(0.0,1.0)),
        slo: Pdup(4,Pwhite(0.0,1.0)),
        shi: Pdup(5,Pwhite(0.0,1.0)),
        sho: Pdup(6,Pwhite(0.0,1.0)),
        lot: Pdup(7,Pwhite(0.0,1.0)),
        hit: Pdup(8,Pwhite(0.0,1.0)),
        tri: Pdup(9,Pexprand(1.0,2.0))-1,
        amp: Pdup(10,Pexprand(0.25,2.0)),
        sustain: Pexprand(0.666,10.0),
        dark: Pseg([0,0,0.025,0,0],Pwhite(30,120),\welch,inf),
        lhf: Pwhite(0.2,0.7),
    ])
).play(quant:1);

Pdef(1,
    Pbind(*[
        type: Pwrand2([\cln,\rest],[6,1],inf),
        snd: \drm,
        dur: 1/Pwrand2([0.6125,1.25,2.5,5,10,12.5,15,17.5,20],[1,1,1,3,8,1,1,1,1],inf),
        tun: Pdup(Pexprand(1,4),Pexprand(0.000001,8.0)),
        fed: Pexprand(0.00001,4000.0).trace,
        dst: Pwhite(0.0,1.0),
        shp: Pwhite(0.0,1.0),
        sac: Pdup(13,Pexprand(1.0,2.0))-1,
        slo: Pdup(14,Pwhite(0.0,1.0)),
        shi: Pdup(15,Pwhite(0.0,1.0)),
        sho: Pdup(16,Pwhite(0.0,1.0)),
        lot: Pdup(17,Pwhite(0.0,1.0)),
        hit: Pdup(18,Pwhite(0.0,1.0)),
        tri: Pdup(19,Pwhite(0.0,1.0)),
        amp: Pexprand(0.6,6.0),
        rel: Pexprand(Pkey(\dur)/(4/3),Pkey(\dur)*64),
        crv: Pwhite(-8.0,-0.00001),
        pan: Pseq([0.5,0.75,1.0,0.75,0.5,0.25,0.0,0.25],inf),
        lpf: Pexprand(200,20000),
        legato: Pwrand2([Pkey(\dur)*1.5,Pkey(\dur)*16],[1,2],inf),
        dla: 1/8,
        dlf: 0.94,
        dlt: 1/75*Pdup(8,Prand([1,2,4,8,16],inf)/Prand([1,2,4,8,16,32,64,128],inf)),
        rma: Pdup(9,Pwhite(0.25,1.0)),
        rmf: Pdup(10,Pexprand(20,1750)),
        sustain: Pexprand(0.1,2.0),
        lhf: Pwhite(0.2,0.8),
    ])
).play(quant:1);
)

Pdef(0).stop;
Pdef(1).stop;

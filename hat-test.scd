(
Pdef(0,
	Pbind(*[
		type: Pwrand([\cln,\rest],[12,1].normalizeSum,inf),
		snd: \hat,
        amp: Pwrand([0.75,1.5],[12,1].normalizeSum,inf),
        sustain: Pwrand([1/11,2],[27,1].normalizeSum,inf),
        dur: 1/Pwrand([8,4],[12,1].normalizeSum,inf),
        bnd: (3-Pexprand(1.0,3.0)-1),
        tun: Pwrand([-2,4],[12,1].normalizeSum,inf),
        dst: Pwrand([0,1],[12,1].normalizeSum,inf),
        shp: Pseg([0.0,0.8,0.0],Pexprand(4.0,12),\sine,inf),
		tri: Pseg([0.0,0.0,9.0],Pexprand(4.0,12),\sine,inf),
        lpf: Pseg([20000,400,20000],Pexprand(4.0,18),\sine,inf),
        pan: Pseg([0.5,0,1,0.5],Pexprand(4.0,12),\sine,inf),
        dla: Pseg([0.0,1/20,0.0],Pexprand(8.0,36),\sine,inf),
        dlf: 0.94,
        dlt: (2/Pdup(Pn(Pgeom(1,2,3),inf),Pn(Pgeom(1,2,11),inf))).trace,
        stretch: 0.7,
    ])
).play(quant:1);
)
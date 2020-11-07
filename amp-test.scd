(
Pdef(\0,
    Pbind(*[
		type: \clean,
		s: \mmd,
		n: 1,
        dur: 1/8,
		legato: 1/2,
		rel: Pseg(Pwhite(0.25,2.0),Pwhite(1,10),\sine, inf),
		speed: Pseg(Pwhite(1/64,8.0),Pwhite(1,10),\sine, inf),
		pan: Pseg(Pwhite(0.0,1.0),Pwhite(1,10),\sine, inf),
		amp: Pseg(Pwhite(0.0,1.0),Pwhite(1,10),\sine, inf),
		dla: Pseg(Pwhite(0.0,1.0),Pwhite(1,10),\sine, inf),
		dlf: Pseg(0.94-Pexprand(0.01,0.94),Pwhite(1,10),\sine, inf),
		dlt: Pseg(Pexprand(1/256,1/32),Pwhite(1,10),\sine, inf),
		stretch: Pseg(Pexprand(1/16,2),Pwhite(1,10),\sine, inf),
		room: Pseg(Pwhite(0.5,1.0),Pwhite(1,10),\sine, inf),
		size: Pseg(Pwhite(0.5,1.0),Pwhite(1,10),\sine, inf),
		dry: Pseg(Pwhite(0.0,0.5),Pwhite(1,10),\sine, inf),
    ])
).play(quant:1);
)

Pdef(\0).stop;

(
Pdef(0,
	Pseed(1,
		Pbind(*[
			type: \cln,
			snd: \mmd,
			dur: 1/8,
			num: 1,
			crv: -8,
			rel: Pseg(Pexprand(0.125,2.0),Pwhite(1,10),\sine, inf),
			spd: Pseg(Pwhite(1/64,8.0),Pwhite(1,10),\sine, inf),
			pan: Pseg(Pwhite(0.0,1.0),Pwhite(1,10),\sine, inf),
			amp: Pseg(Pwhite(0.0,1.0),Pwhite(1,10),\sine, inf),
			dla: Pseg(Pwhite(0.0,1.0),Pwhite(1,10),\sine, inf),
			dlf: Pseg(0.94-Pexprand(0.05,0.94),Pwhite(1,10),\sine, inf),
			dlt: Pseg(Pexprand(1/256,1/32),Pwhite(1,10),\sine, inf),
			rin: Pseg(Pwhite(0.25,1.0),Pwhite(1,10),\sine, inf),
			rev: Pseg(Pwhite(0.25,1.0),Pwhite(1,10),\sine, inf),
			dry: Pseg(Pwhite(0.0,0.5),Pwhite(1,10),\sine, inf),
			stretch: Pseg(Pexprand(1/16,2),Pwhite(1,10),\sine, inf),
			legato: 1/2,
		])
	)
).play(quant:1);
)

Pdef(\0).stop;
